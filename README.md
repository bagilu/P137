# P137 五十音大挑戰 — Kana Challenge

Web Version **V0.1.1** · **SBI-P-SDS v3.7** · 2026-11-10

GitHub：https://github.com/bagilu/P137
公開網站預設：https://bagilu.github.io/P137/

## 三種玩法
1. 完整五十音表：聽日語發音點選對應假名。
2. 隨機假名四選一：聽音辨識。
3. 日語詞彙四選一：四個日語詞彙選項，答題後顯示中文釋義。

可切換平假名／片假名／混合、調整範圍與題數；答題資料僅留在本機 localStorage。瀏覽器日語語音依裝置的語音合成支援情形而異。

## v3.7 整合
- 頁首與頁尾「好玩實驗室」均連結至 https://tcubmdsbilab.github.io/P101/ 。
- 頁尾依序顯示機構、Web Version V0.1.1、SBI-P-SDS v3.7。
- 網站首頁載入 P101 中央匿名使用分析腳本，Project Code 為 P137；已提供隱私說明。
- 新增 manifest 與 SVG 圖示，供 Android 主畫面／瀏覽器使用（安裝兼容性待實測）。

## 必要的 P101 中央登錄（尚待執行）
請 P101 **授權管理員**於 P101 中央 Supabase SQL Editor 手動執行：
1. `database/P137_P101_Analytics_Register.sql`（upsert 本專案登錄）。
2. `database/P137_P101_Analytics_Verify.sql`（唯讀核對 enabled 與 Origin）。
3. 到 P101 統計後台選取 P137，開啟網站檢查首頁瀏覽事件、刷新、停留事件，並確認追蹤失敗不影響遊戲。

註：兩個 SQL 均屬 P101 **中央平台治理**，**不得**納入 P137 自動 migration、不可從公開網頁執行。P137 網域 Origin 為 https://bagilu.github.io，不包含 /P137/。中央服務須核對 Allowed Origins、保留期及管理員權限；在驗證前不能宣稱集中統計已正常啟用。

## V0.2 計畫
整合共用 P130 登入、P137 獨立授權，以及 Supabase RPC-only 的逐題答題紀錄；目前不存任何登入資訊。正式配置只放必要的 public URL/anon key，絕不放秘密金鑰。

## 部署
GitHub Pages：main branch / (root)，不需 Node.js build。更新後留意瀏覽器快取。請參考 docs/P137_SDS_v3.7_QA.md。
