#!/bin/bash

# 确保脚本在发生错误时退出
set -e

# 检查并切换到项目根目录
# cd "$(dirname "\$0")"

# # 检查并拉取最新代码
# echo "正在拉取最新代码..."
# git fetch --all
# git reset --hard origin/master

# # 安装依赖
# echo "正在安装依赖..."
# npm install

# 构建博客
# echo "正在构建博客..."
# # export NODE_OPTIONS=--max_old_space_size=8192
# # 这一行命令是将 Node.js 的最大堆内存大小设置为 8192 MB（即 8 GB），以确保在构建过程中有足够的内存。
# npm run docs:build

# 部署博客
echo "正在部署博客..."
cd docs/.vuepress/dist
git init
git remote add origin git@github.com:Hefengshun/HeFengShun.github.io.git
git checkout -b main
git add -A
git commit -m "Deploy commit"
git push -f origin main

echo "博客已成功部署！"
