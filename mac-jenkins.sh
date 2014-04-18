# nginx setup
brew install nginx
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
sed -ie 's/8080/8180/g' /usr/local/etc/nginx/nginx.conf
# edit /usr/local/etc/nginx/nginx.conf -> change 'root html;' to 'root [path-to-sites];'
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist


# Jenkins
brew install jenkins
ln -sfv /usr/local/opt/jenkins/*.plist ~/Library/LaunchAgents
# Set jenkins 8081, then nginx.conf in this directory
# Install OpenID plugin, lock down to domain, then set "Matrix-based security" and add a group named 'authenticated' with all permissions
