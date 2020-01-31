var http = require('http');
var exec = require('child_process').exec;
var fs = require('fs');

var server = http.createServer(function(req, res){
  m('Print[AbsoluteTime[]]',function(a){
    res.end('<!doctype html><pre>'+a);
  });
});


var m = function(code,fn){
  var once = true;
  fs.writeFileSync('/tmp/in.txt',code);
  exec("gvfs-open /home/a/Desktop/autorun.nb",function(error, stdout, stderr){
    if (error !== null)console.log('exec error: ' + error);
    fs.watchFile('/tmp/out.txt', function t(curr,prev) {
      if (curr.mtime == prev.mtime);
      fs.unwatchFile('tmp/out.txt',t);
      fn(fs.readFileSync('/tmp/out.txt'));
    });   
  });
};


server.listen(80);
