-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'house_planner';

DROP DATABASE house_planner;

DROP USER house_planner_owner;
DROP USER house_planner_appuser;
