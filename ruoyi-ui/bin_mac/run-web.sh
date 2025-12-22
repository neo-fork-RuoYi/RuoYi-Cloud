#!/bin/bash
set -e

echo
echo "[信息] 使用 Vue CLI 运行 Web 项目"
echo

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
cd "$SCRIPT_DIR"

cd ..

npm run dev

read -p "按回车键退出..."