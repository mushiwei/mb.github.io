#!/bin/bash

# GitHub Pages 部署脚本
echo "开始部署到GitHub Pages..."

# 检查是否有GitHub远程仓库
if git remote get-url origin 2>/dev/null; then
    echo "远程仓库已存在，直接推送..."
else
    echo "请先创建GitHub仓库，然后运行："
    echo "git remote add origin https://github.com/你的用户名/你的仓库名.git"
    echo ""
    echo "创建GitHub仓库步骤："
    echo "1. 访问 https://github.com/new"
    echo "2. 填写仓库名称（例如：vue3-arco-crud-app）"
    echo "3. 选择公开仓库"
    echo "4. 不要初始化README（我们已有）"
    echo "5. 点击创建仓库"
    echo ""
    read -p "创建完成后，请输入仓库URL（例如：https://github.com/用户名/仓库名.git）: " repo_url
    git remote add origin $repo_url
fi

# 推送到GitHub
echo "推送到GitHub..."
git push -u origin master

echo "推送完成！"
echo "接下来需要在GitHub上启用GitHub Pages："
echo "1. 访问你的GitHub仓库页面"
echo "2. 点击 Settings 标签"
echo "3. 滚动到 Pages 部分"
echo "4. 在 Source 下选择 Deploy from a branch"
echo "5. 选择 master 分支和 / (root) 目录"
echo "6. 点击 Save"
echo ""
echo "启用后，你的应用将在 https://你的用户名.github.io/你的仓库名/ 访问"