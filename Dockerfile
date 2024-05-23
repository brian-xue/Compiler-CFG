# 使用Ubuntu 20.04作为基础镜像
FROM ubuntu:20.04

# 避免安装过程中出现交互式对话框
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3.6 python3-distutils python3-pip python3-apt python-is-python3

RUN apt-get update \
    && apt-get install -y curl\
    && apt-get -y autoclean

# # nvm environment variables
# RUN mkdir -p /usr/local/nvm
# ENV NVM_DIR /usr/local/nvm
# ENV NODE_VERSION=16.13.0

# # install nvm
# # https://github.com/creationix/nvm#install-script
# RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# # install node and npm
# RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
# RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
# RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}

# # add node and npm to path so the commands are available
# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# # confirm installation
# RUN node -v
# RUN npm -v

# # 安装应用程序依赖
# RUN npm config set registry http://registry.npm.taobao.org/

# 将当前目录内容复制到容器的/app目录下
COPY . /app/experiment_3

# 设置工作目录
WORKDIR /app/experiment_3

RUN pip install -U -r requirements.txt

# 删除Dockerfile
RUN rm -f /app/experiment_2/Dockerfile

# 设置默认命令（可选）
CMD ["/bin/bash"]
