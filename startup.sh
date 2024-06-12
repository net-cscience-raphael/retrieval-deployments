# Restart nginx
sudo pkill -f nginx & wait $!
sudo nginx  -c /home/dbisadmin/retrieval-deployments/retrieval-deployments/config/nginx/nginx.conf
