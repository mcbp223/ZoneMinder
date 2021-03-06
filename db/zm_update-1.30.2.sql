--
-- This updates a 1.30.1 database to 1.30.2
--

--
-- Update Filters table to have a Concurrent Column
--

SET @s = (SELECT IF(
	(SELECT COUNT(*)
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE table_name = 'Filters'
	AND table_schema = DATABASE()
	AND column_name = 'Concurrent'
	) > 0,
"SELECT 'Column Concurrent already exists in Filters'",
"ALTER TABLE Filters ADD COLUMN `Concurrent` tinyint(1) unsigned NOT NULL default '0' AFTER Background"
));

PREPARE stmt FROM @s;
EXECUTE stmt;
