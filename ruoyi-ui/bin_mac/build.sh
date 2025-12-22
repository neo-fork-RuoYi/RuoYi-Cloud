#!/bin/bash
set -e

echo
echo "[信息] Web dist 构建"
echo

# 获取脚本所在目录
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

# 回到项目根目录
cd ..

npm run build:prod

read -p "按回车键退出..."
