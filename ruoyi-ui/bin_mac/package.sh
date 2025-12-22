#!/bin/bash
set -e

echo
echo "[信息] Web 项目打包"
echo

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

cd ..

npm install
npm run build:prod

read -p "按回车键退出..."