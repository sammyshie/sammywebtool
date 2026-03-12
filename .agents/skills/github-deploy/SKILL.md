---
name: github-deploy
description: 多專案一鍵部署工具 - 將資料夾同步至 GitHub Pages 
---

# GitHub 部署 Skill (多專案架構)

本 Skill 支援在單一儲存庫 `sammywebtool` 中管理多個子專案。

## 專案目錄結構建議
為了方便管理，建議在 `D:\21.Anti\sammywebtool` 下建立子資料夾：
- `D:\21.Anti\sammywebtool\index.html` (主入口網頁)
- `D:\21.Anti\sammywebtool\project-1\` (專案 1 檔案夾)
- `D:\21.Anti\sammywebtool\project-2\` (專案 2 檔案夾)

## 網址存取規則
部署後，您的網址將自動對應：
- 主頁面：`https://sammyshie.github.io/sammywebtool/`
- 專案 1：`https://sammyshie.github.io/sammywebtool/project-1/`
- 專案 2：`https://sammyshie.github.io/sammywebtool/project-2/`

## 關於 index.html
- **重要**：每個資料夾內的「入口網頁」都建議命名為 `index.html`。
- 如果命名為 `app.html`，網址則需變成 `.../project-1/app.html`。

## 快速指令
- **「部署整體更新」**：將資料夾內所有異動同步至 GitHub。
- **「將 [資料夾名] 部署為新專案」**：我會協助您建立子資料夾並完成推送。
