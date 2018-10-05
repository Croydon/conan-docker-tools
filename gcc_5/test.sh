#!/usr/bin/env bash
sudo docker run -t -d --name conangcc5 lasote/conangcc5 && \
sudo docker exec conangcc5 sudo pip install -U conan_package_tools && \
sudo docker exec conangcc5 sudo pip install -U conan && \
sudo docker exec conangcc5 conan user && \
sudo docker exec conangcc5 conan install gtest/1.8.1@bincrafters/stable -s arch=x86_64 -s compiler=gcc -s compiler.version=5 -s compiler.libcxx=libstdc++ --build && \
sudo docker exec conangcc5 conan install gtest/1.8.1@bincrafters/stable -s arch=x86 -s compiler=gcc -s compiler.version=5 -s compiler.libcxx=libstdc++ --build && \
sudo docker stop conangcc5 && \
sudo docker rm conangcc5
