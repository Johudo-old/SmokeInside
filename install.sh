sudo apt-get update
sudo apt-get upgrade

sudo apt-get install nginx

sudo cp ./smoke-inside.nginx /etc/nginx/sites-avalilable/
sudo ln -s /etc/nginx/sites-available/smoke-inside.nginx /etc/nginx/sites-enabled/
sudo cp -c ../SmokeInside /var/www/

sudo ufw enable
sudo ufw default deny
sudo ufw allow 'Nginx HTTP'

sudo systemctl restart nginx
