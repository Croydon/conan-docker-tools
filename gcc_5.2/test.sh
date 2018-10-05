#!/usr/bin/env bash
sudo docker run -t -d --name conangcc52 lasote/conangcc52 && \
sudo docker exec conangcc52 sudo pip install -U conan_package_tools && \
sudo docker exec conangcc52 sudo pip install -U conan && \
sudo docker exec conangcc52 conan user && \
sudo docker exec conangcc52 conan install gtest/1.8.1@bincrafters/stable -s arch=x86_64 -s compiler=gcc -s compiler.version=5.2 -s compiler.libcxx=libstdc++ --build && \
sudo docker exec conangcc52 conan install gtest/1.8.1@bincrafters/stable -s arch=x86 -s compiler=gcc -s compiler.version=5.2 -s compiler.libcxx=libstdc++ --build && \
sudo docker stop conangcc52 && \
sudo docker rm conangcc52
