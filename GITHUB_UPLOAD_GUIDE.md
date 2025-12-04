# GitHub 上傳指南 📤

## 方案一：更新現有倉庫（推薦）

如果你已經有 GitHub 倉庫 `geminihao0516/The-Get-Rich-I-Ching`，使用這個方法：

### 步驟 1：連接到遠端倉庫

```bash
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 添加遠端倉庫
git remote add origin https://github.com/geminihao0516/The-Get-Rich-I-Ching.git
```

### 步驟 2：推送到 GitHub

```bash
# 推送到 main 分支
git push -u origin main
```

如果遠端已有內容，可能需要先拉取：

```bash
# 方案 A：合併遠端內容（保留歷史）
git pull origin main --allow-unrelated-histories
git push -u origin main

# 方案 B：強制覆蓋（注意：會覆蓋遠端所有內容！）
git push -u origin main --force
```

---

## 方案二：建立新倉庫

如果要建立全新的倉庫：

### 步驟 1：在 GitHub 上建立新倉庫

1. 前往 https://github.com/new
2. 填寫資訊：
   - **Repository name**: `The-Get-Rich-I-Ching-V2.5`
   - **Description**: `互動式易經抽卡應用 V2.5 - 上傳4x4格線圖片進行財運占卜`
   - **Public** 或 **Private**（依需求選擇）
   - ❌ **不要** 勾選 "Add a README file"
   - ❌ **不要** 勾選 "Add .gitignore"
   - ✅ 可以選擇 "Choose a license" → MIT License
3. 點擊 **Create repository**

### 步驟 2：連接並推送

```bash
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 添加遠端倉庫（替換成你的倉庫 URL）
git remote add origin https://github.com/你的用戶名/The-Get-Rich-I-Ching-V2.5.git

# 推送到 GitHub
git push -u origin main
```

---

## 方案三：使用 GitHub Desktop（圖形介面）

如果不想使用命令列：

### 步驟 1：安裝 GitHub Desktop

下載並安裝：https://desktop.github.com/

### 步驟 2：添加本地倉庫

1. 開啟 GitHub Desktop
2. 點擊 **File** → **Add Local Repository**
3. 選擇 `~/Desktop/The-Get-Rich-I-Ching-V2.5`
4. 點擊 **Add Repository**

### 步驟 3：發佈到 GitHub

1. 點擊 **Publish repository**
2. 填寫資訊：
   - Name: `The-Get-Rich-I-Ching-V2.5`
   - Description: `互動式易經抽卡應用 V2.5`
   - ✅ 勾選 "Keep this code private"（如需私有）
3. 點擊 **Publish Repository**

---

## 完整命令列指令（複製貼上版）

### 更新現有倉庫

```bash
# 進入專案目錄
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 連接遠端倉庫
git remote add origin https://github.com/geminihao0516/The-Get-Rich-I-Ching.git

# 推送到 GitHub
git push -u origin main

# 如果出現錯誤，使用以下命令之一：

# 選項 1：合併遠端內容
git pull origin main --allow-unrelated-histories
git push -u origin main

# 選項 2：強制覆蓋（慎用！）
git push -u origin main --force
```

### 建立新倉庫

```bash
# 進入專案目錄
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 連接新的遠端倉庫（替換 URL）
git remote add origin https://github.com/你的用戶名/倉庫名稱.git

# 推送到 GitHub
git push -u origin main
```

---

## 上傳的檔案清單

✅ 以下所有檔案都會被上傳：

```
The-Get-Rich-I-Ching-V2.5/
├── .gitignore                    # Git 忽略檔案
├── index.html                    # 主應用程式
├── QUICK_START.html              # 快速開始頁面
├── README.md                     # 專案說明
├── USAGE_GUIDE.md                # 使用指南
├── OPTIMIZATION_SUMMARY.md       # 優化摘要
├── CHANGELOG.md                  # 更新日誌
├── PROJECT_STRUCTURE.md          # 專案結構
├── LICENSE                       # MIT 授權
└── start-server.sh               # 啟動腳本
```

**共 10 個檔案，約 88 KB**

---

## 驗證上傳成功

上傳完成後，訪問你的 GitHub 倉庫：

```
https://github.com/你的用戶名/倉庫名稱
```

你應該會看到：

✅ 所有 10 個檔案
✅ README.md 自動顯示在首頁
✅ Commit 訊息顯示「🎉 Release V2.5 - 優化版」
✅ MIT License 標記

---

## 設定 GitHub Pages（可選）

讓你的應用在線上運行：

### 方法 1：在倉庫設定中啟用

1. 前往倉庫的 **Settings**
2. 左側選單點擊 **Pages**
3. 在 **Source** 下選擇：
   - Branch: `main`
   - Folder: `/ (root)`
4. 點擊 **Save**
5. 等待幾分鐘後訪問：
   ```
   https://你的用戶名.github.io/倉庫名稱/
   ```

### 方法 2：使用命令列

```bash
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 建立 gh-pages 分支
git checkout -b gh-pages
git push -u origin gh-pages

# 切回 main 分支
git checkout main
```

然後在 GitHub Settings → Pages 選擇 `gh-pages` 分支。

### 訪問你的應用

部署完成後，可以通過以下網址訪問：

```
https://你的用戶名.github.io/倉庫名稱/index.html
```

或快速開始頁面：

```
https://你的用戶名.github.io/倉庫名稱/QUICK_START.html
```

---

## 常見問題

### Q: 推送時要求輸入用戶名密碼？

A: GitHub 已不支援密碼登入，需要使用 Personal Access Token：

1. 前往 https://github.com/settings/tokens
2. 點擊 **Generate new token (classic)**
3. 勾選 `repo` 權限
4. 複製生成的 token
5. 推送時使用 token 作為密碼

或使用 SSH：

```bash
# 生成 SSH 金鑰
ssh-keygen -t ed25519 -C "your_email@example.com"

# 添加到 GitHub：https://github.com/settings/keys

# 改用 SSH URL
git remote set-url origin git@github.com:你的用戶名/倉庫名稱.git
```

### Q: 出現 "fatal: remote origin already exists"？

A: 先刪除現有的 origin：

```bash
git remote remove origin
git remote add origin https://github.com/你的用戶名/倉庫名稱.git
```

### Q: 推送失敗，提示 "non-fast-forward"？

A: 遠端有新的提交，需要先拉取：

```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### Q: 想要更新倉庫名稱或描述？

A: 在 GitHub 倉庫頁面：

1. 點擊 **Settings**
2. 在 **Repository name** 修改名稱
3. 在 **Description** 修改描述
4. 點擊 **Rename**（如果改了名稱）

然後更新本地遠端 URL：

```bash
git remote set-url origin https://github.com/你的用戶名/新倉庫名稱.git
```

---

## 後續更新流程

當你修改了檔案後，上傳新版本：

```bash
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5

# 查看修改
git status

# 添加所有修改
git add .

# 提交修改
git commit -m "描述你的修改"

# 推送到 GitHub
git push
```

---

## 總結

### 最簡單的上傳流程：

1. **打開終端機**
2. **執行以下命令：**

```bash
cd ~/Desktop/The-Get-Rich-I-Ching-V2.5
git remote add origin https://github.com/geminihao0516/The-Get-Rich-I-Ching.git
git push -u origin main
```

3. **完成！** 🎉

如果遇到問題，可以：
- 使用 GitHub Desktop（圖形介面）
- 或參考上面的常見問題解答

---

**祝上傳順利！** 🚀

有任何問題歡迎查看 GitHub 官方文檔：
https://docs.github.com/zh/get-started/quickstart
