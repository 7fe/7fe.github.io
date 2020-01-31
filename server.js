var http = require('http');
var exec = require('child_process').exec;
var fs = require('fs');

var cmd = process.platform === "win32" ? "explorer \""+__dirname+"\\autorun.nb\"" : "gvfs-open \"" + __dirname+"/autorun.nb\"";

var server = http.createServer(function(req, res){
    exec(cmd,function(error, stdout, stderr){
      console.log('stdout: ' + stdout);
      console.log('stderr: ' + stderr);
      if (error !== null)console.log('exec error: ' + error);
        setTimeout(function(){
          res.write('It Works!! Path Hit: ' + req.url);
          res.end(fs.readFileSync('/tmp/out.txt'));
        });
      }, 500);
});

server.listen(80);