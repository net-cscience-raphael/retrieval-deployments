


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
sudo ./setup_dev_server.sh
echo "export PYTHONPATH=src/core:src/legacy_api:src/audio_diarization:src/blip:src/conditional_image_captioning:src/face_embedding:src/image_captioning:src/optical_character_recognition:src/simple_plugin_manager:src/vit_gpt2:src/automated_speech_recognition:src/blip2:src/detr_resnet101:src/face_recognition:src/image_embedding:src/owl_vit_base_patch32:src/tesseract:src/whisper:src/base_api:src/clip_vit_large_patch14:src/easy_ocr:src/fastapi:src/object_detection:src/pyannote:src/text_embedding:src/zero_shot_image_classification:$PYTHONPATH" >> ~/.bashrc
echo "export LOG_LEVEL=DEBUG" >> ~/.bashrc


#
mkdir nginx
cd ./nginx
sudo apt install nginx

# Setup UI 
# ng
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng.git

# ng-min
git clone --depth 1 --branch p1-demo git@github.com:vitrivr/vitrivr-ng-min.git

