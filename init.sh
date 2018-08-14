sudo apt-get install nginx
git-clone https://github.com/fsatka/web.git
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo apt-get install gunicorn
sudo gunicorn -c /home/box/web/etc/conf.py hello:wsgi_applicarion 
sudo /etc/init.d/nginx restart
