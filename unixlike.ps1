Remove-Item alias:ls
Remove-Item alias:cat
Remove-Item alias:echo
function ls {cmd /c "dir $args"}
function cat {cmd /c "type $args"}
function echo {cmd /c "echo $args"}