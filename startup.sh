cd ~/retrieval-deployments

# Restart nginx


sudo pkill -f nginx & wait $!
sudo nginx  -c /home/dbisadmin/retrieval-deployments/retrieval-deployments/config/nginx/nginx.conf

cd ~/retrieval-deployments
./cottontaildb/cottontaildb-full/bin/cottontaildb ./retrieval-deployments/config/cottontail/config.json
