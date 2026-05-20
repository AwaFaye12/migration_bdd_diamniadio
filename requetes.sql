\echo '=== RAPPORT QUOTIDIEN ==='
\echo 'Date : ' CURRENT_DATE

\echo 'Nombre de clients :'
SELECT COUNT(*) FROM client;

\echo 'Nombre d\'etudiants :'
SELECT COUNT(*) FROM etudiant;

\echo 'Taille de la base :'
SELECT pg_size_pretty(pg_database_size('test_stage'));

\echo 'Connexions actives :'
SELECT COUNT(*) FROM pg_stat_activity WHERE state = 'active';