#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git config user.name "JChehe" && git config user.email "574805242@qq.com"
git init
git add -A
git commit -m 'deploy'

git branch -M main

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:JChehe/study_actions.git main:gh-pages

cd -