-- P137 唯讀驗證：由 P101 授權管理員在中央 Supabase 執行
SELECT project_code, canonical_origin, enabled
FROM p101_analytics."TblP101AnalyticsProjects"
WHERE project_code = 'P137';
