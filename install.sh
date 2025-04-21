sudo apt-get update
sudo apt-get upgrade

sudo apt-get install nginx

sudo cp ./smoke-inside.nginx /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/smoke-inside.nginx /etc/nginx/sites-enabled/
sudo cp -R ../SmokeInside /var/www/

sudo ufw enable
sudo ufw default deny
sudo ufw allow 'Nginx HTTP'

sudo systemctl restart nginx

sudo apt update
sudo apt install certbot python3-certbot-nginx

sudo certbot --nginx -d smoke-inside.ru -d www.smoke-inside.ru

sudo cp -rf ./smoke-inside-ssl.nginx /etc/nginx/sites-available/smoke-inside.nginx

sudo systemctl restart nginx
