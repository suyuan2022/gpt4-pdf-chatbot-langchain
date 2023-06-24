# 使用官方Node.js作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /usr/src/app

# 将package.json和yarn.lock复制到工作目录
COPY package*.json yarn.lock ./

# 安装项目依赖
RUN yarn install

# 将项目代码复制到工作目录
COPY . .

# 暴露端口3000
EXPOSE 3000

# 运行应用
CMD [ "yarn", "run", "dev" ]
