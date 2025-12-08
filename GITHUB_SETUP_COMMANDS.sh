#!/bin/bash

# GitHub仓库设置命令脚本
# 请根据你的实际情况修改 YOUR_USERNAME

echo "=== Step 1: 创建本地文件夹 ==="
mkdir awesome-china-travel
cd awesome-china-travel

echo "=== Step 2: 初始化Git ==="
git init

echo "=== Step 3: 复制文件到文件夹 ==="
# 将生成的文件复制到这个文件夹
# 如果你在当前CSK项目中，可以用下面的命令
cp ../awesome-china-travel-README.md README.md
cp ../awesome-china-travel-CONTRIBUTING.md CONTRIBUTING.md

echo "=== Step 4: 创建GitHub Actions文件夹 ==="
mkdir -p .github/workflows
cp ../awesome-china-travel-link-check.yml .github/workflows/link-check.yml

echo "=== Step 5: 创建.gitignore文件 ==="
cat > .gitignore << 'EOF'
# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Editor files
*.swp
*.swo
*~
.vscode/
.idea/
EOF

echo "=== Step 6: 创建LICENSE文件 (CC0协议，适合Awesome List) ==="
cat > LICENSE << 'EOF'
CC0 1.0 Universal

Statement of Purpose

The laws of most jurisdictions throughout the world automatically confer
exclusive Copyright and Related Rights (defined below) upon the creator and
subsequent owner(s) (each and all, an "owner") of an original work of
authorship and/or a database (each, a "Work").

This license is intended to allow the maximum freedom for reuse of the
resources in this list.

For more information, please see
<https://creativecommons.org/publicdomain/zero/1.0/>
EOF

echo "=== Step 7: 添加所有文件到Git ==="
git add .
git status  # 查看要提交的文件

echo "=== Step 8: 创建第一次提交 ==="
git commit -m "Initial commit: Awesome China Travel - A curated list of resources for traveling in China"

echo "=== Step 9: 添加远程仓库 ==="
echo "请替换YOUR_USERNAME为你的GitHub用户名："
echo "git remote add origin https://github.com/YOUR_USERNAME/awesome-china-travel.git"

echo "=== Step 10: 推送到GitHub ==="
echo "git branch -M main"
echo "git push -u origin main"

echo "=== 完成！==="
echo "你的仓库地址将是: https://github.com/YOUR_USERNAME/awesome-china-travel"
