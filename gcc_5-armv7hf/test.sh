#!/usr/bin/env bash
sudo docker run -t -d --name conangcc5-armv7hf lasote/conangcc5-armv7hf && \
sudo docker exec conangcc5-armv7hf sudo pip install -U conan_package_tools && \
sudo docker exec conangcc5-armv7hf sudo pip install -U conan && \
sudo docker exec conangcc5-armv7hf conan user && \
sudo docker exec conangcc5-armv7hf conan install gtest/1.8.1@bincrafters/stable -s arch=armv7hf -s compiler=gcc -s compiler.version=5 -s compiler.libcxx=libstdc++ --build && \
sudo docker stop conangcc5-armv7hf && \
sudo docker rm conangcc5-armv7hf
