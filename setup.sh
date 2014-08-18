echo "*****    Installing Sublime Text Package Control    *****"
# https://sublime.wbond.net/installation
wget https://sublime.wbond.net/Package%20Control.sublime-package -O ~/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package


echo "*****    Creating symlinks Sublime Text settings     *****"

origin_dir=~/.sublime-text-settings/
destination_dir=~/.config/sublime-text-3/Packages/User/

file="Preferences.sublime-settings"
echo "Creating symlink for $file"
rm -f "$destination_dir$file"
ln -s "$origin_dir$file" "$destination_dir$file"

file="Package Control.sublime-settings"
echo "Creating symlink for $file"
rm -f "$destination_dir$file"
ln -s "$origin_dir$file" "$destination_dir$file"

file="GitGutter.sublime-settings"
echo "Creating symlink for $file"
rm -f "$destination_dir$file"
ln -s "$origin_dir$file" "$destination_dir$file"
