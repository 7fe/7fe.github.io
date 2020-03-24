if grep -q "Ubuntu" "/etc/issue" || grep -q "Debian" "/etc/issue";then
  sudo loadkeys dvorak
  setxkbmap dvorak
elif grep -q "Core Linux" "/etc/issue";then
  sudo loadkeys < /usr/share/kmap/dvorak/dvorak.map
elif grep -q "Fedora" "/etc/issue";then
  su root;loadkeys dvorak;
  setxkbmap dvorak
fi