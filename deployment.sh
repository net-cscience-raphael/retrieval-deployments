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
./gradlew build
cd ..

# Setup FES
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/feature-extraction-server.git

# Setup UI 
# ng
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng.git

# ng-min
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng-min.git

