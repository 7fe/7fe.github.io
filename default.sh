

if grep -q "Ubuntu" "/etc/issue";then
  sudo dpkg-reconfigure keyboard-configuration
elif grep -q "Debian" "/etc/issue";then
  sudo dpkg-reconfigure keyboard-configuration
elif grep -q "Fedora" "/etc/issue";then
  sudo system-config-keyboard
elif grep -q "Suse" "/etc/issue";then
  yast2
elif grep -q "Mandiv" "/etc/issue";then
  keyboarddrake
fi