-- P137 / SBI-P-SDS v3.7
-- 僅供 P101 授權管理員於 P101 中央 Supabase SQL Editor 手動執行
-- 注意：此檔不是 P137 migration，絕不可由 P137 網站或一般使用者執行。
-- 正式網站：https://bagilu.github.io/P137/
-- Origin 已按此網站標準 URL 設為 https://bagilu.github.io（不含 /P137/）
INSERT INTO p101_analytics."TblP101AnalyticsProjects"
    (project_code, canonical_origin, enabled)
VALUES
    ('P137', 'https://bagilu.github.io', true)
ON CONFLICT (project_code)
DO UPDATE SET
    canonical_origin = EXCLUDED.canonical_origin,
    enabled = EXCLUDED.enabled;
