#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 编译生成html文件
npm run build

# 进入生成的文件夹
cd public

git commit -m 'deploy:' + $1
git push -f https://github.com/LY817/ly817.github.io.git master
cd -