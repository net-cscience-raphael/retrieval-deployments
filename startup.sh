tmux

cd ~/retrieval-deployments

# Restart nginx

sudo pkill -f nginx & wait $!
sudo nginx  -c /home/dbisadmin/retrieval-deployments/retrieval-deployments/config/nginx/nginx.conf


# Start cotoontail
cd ~/retrieval-deployments
./cottontaildb/cottontaildb-full/bin/cottontaildb ./retrieval-deployments/config/cottontail/config.json

tmux split-window 

# Start carotly
cd ~/retrieval-deployments
./cottontaildb/cottontaildb-full/bin/carrotli

tmux split-window 

# Start cineaast

cd ~/retrieval-deployments
java -jar ./cineast/cineast-api/build/libs/cineast-api-3.12.4-all.jar ./retrieval-deployments/config/cineast/cineast.json 
