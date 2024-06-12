


# Setup Database
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/cottontaildb.git
cd ./cottontaildb
./gradlew build
cd ..

# Setup Cineast
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/cineast.git
cd ./cineast
./gradlew build
cd ..

# Setup Engine
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-engine.git
cd ./vitrivr-engine
./gradlew generateFesClient
./gradlew build
cd ..

# Setup FES
# Prequesite is python3.11 --version
sudo apt update
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.11 -y
sudo apt install python3.11-venv


git clone --depth 1 --branch p1-demo git@github.com:vitrivr/feature-extraction-server.git
cd ./feature-extraction-server
python3.11 -m venv .venv
source .venv/bin/activate
python3.11 -m pip install --upgrade pip
sudo python3.11 -m pip install -r dev_requirements.txt


#
mkdir nginx
cd ./nginx
sudo apt install nginx

# Setup UI 
# ng
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng.git

# ng-min
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng-min.git

