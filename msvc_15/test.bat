docker run -t -d --name msvc15 conanio/msvc15 && \
docker exec msvc15 pip install -U conan_package_tools && \
docker exec msvc15 pip install -U conan && \
docker exec msvc15 conan user && \
docker exec msvc15 conan install gtest/1.8.1@bincrafters/stable -s arch=x86_64 -s compiler="Visual Studio" -s compiler.version=15 -s compiler.runtime=MD --build && \
docker exec msvc15 conan install gtest/1.8.1@bincrafters/stable -s arch=x86 -s compiler="Visual Studio" -s compiler.version=15 -s compiler.runtime=MD --build && \
docker stop msvc15 && \
docker rm msvc15
