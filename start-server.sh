#!/bin/bash

# 互動式圖卡 V2.5 - 本地伺服器啟動腳本
# 使用方法：在終端機中執行 ./start-server.sh

echo "=========================================="
echo "   互動式圖卡 V2.5 本地伺服器啟動"
echo "=========================================="
echo ""

# 檢查 Python 3 是否安裝
if command -v python3 &> /dev/null; then
    echo "✅ 找到 Python 3"
    echo "🚀 正在啟動本地伺服器..."
    echo "📍 伺服器地址：http://localhost:8000"
    echo "📍 直接開啟：http://localhost:8000/index.html"
    echo ""
    echo "💡 提示：按 Ctrl+C 停止伺服器"
    echo ""
    echo "=========================================="

    # 啟動 Python HTTP 伺服器
    python3 -m http.server 8000

elif command -v python &> /dev/null; then
    echo "✅ 找到 Python"
    echo "🚀 正在啟動本地伺服器..."
    echo "📍 伺服器地址：http://localhost:8000"
    echo "📍 直接開啟：http://localhost:8000/index.html"
    echo ""
    echo "💡 提示：按 Ctrl+C 停止伺服器"
    echo ""
    echo "=========================================="

    # 啟動 Python HTTP 伺服器
    python -m SimpleHTTPServer 8000

else
    echo "❌ 未找到 Python"
    echo ""
    echo "請安裝 Python 或直接在瀏覽器中開啟 index.html"
    echo ""
    echo "其他啟動方式："
    echo "  1. 雙擊 index.html 直接開啟"
    echo "  2. 安裝 Node.js 後執行：npx http-server"
    echo ""
    exit 1
fi
