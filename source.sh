# [2]- get the "agnosterzak" theme
git clone https://github.com/zakaziko99/agnosterzak-ohmyzsh-theme.git
mv agnosterzak-ohmyzsh-theme/agnosterzak.zsh-theme .oh-my-zsh/themes
rm -rf agnosterzak-ohmyzsh-theme

# Define the old and new theme settings
old_theme='ZSH_THEME="robbyrussell"'
new_theme='ZSH_THEME="agnosterzak"'

# Define the .zshrc file
zshrc_file="$HOME/.zshrc"

# Use sed to replace the old theme setting with the new theme setting
sed -i "s|$old_theme|$new_theme|g" "$zshrc_file"

# Set my Gitea credencials
git config --global user.email "papebilalysow@gmail.com"
git config --global user.name "papebsow"
git config --global credential.helper store

# Apply the new theme
exec zsh
