---- ** AdventureWorks DB ** ----

-- ** TABLES ** --
-- List schemas, tables, and views.
SELECT *
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
ORDER BY table_type, table_schema, length(table_name)
;



-- ** VIEWS ** --
-- Schemas for these views (per install.sql):
--   pe = person
--   hr = humanresources
--   pr = production
--   pu = purchasing
--   sa = sales
-- Easily get a list of all of these with psql:  \dv (pe|hr|pr|pu|sa).*

-- List views and definitions.
SELECT *
FROM information_schema.views
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
ORDER BY table_schema, length(table_name)
;


-- * RETURNS COMMENTS FOR SPECIFIC SCHEMA.TABLE * --
-- (SELECT obj_description('mySchema.myTable'::regclass, 'pg_class')

-- List all schemas, tables, and table descriptions.
SELECT
	table_schema,
	table_name,
	convert_from(
		convert_to(
			obj_description(
				(table_schema || '.' || table_name)::regclass, 'pg_class'), 
			'WIN1252'), -- Convert to WIN1252 binary first to take care of encoding errors.
		'UTF8')	-- Then convert back to UTF8 (DB default).
	AS comment_description
FROM information_schema.tables
-- WHERE table_schema = 'humanresources'
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
	AND table_type = 'BASE TABLE'
ORDER BY table_schema, length(table_name)



-- List all schemas, tables, columns, and column descriptions.
SELECT 
	table_schema,
	table_name,
	column_name,
	convert_from(
			convert_to(
				col_description(
					(table_schema || '.' || table_name)::regclass, ordinal_position), 
				'WIN1252'), -- Convert to WIN1252 binary first to take care of encoding errors.
			'UTF8')	-- Then convert back to UTF8 (DB default).
		AS comment_description
FROM information_schema.columns
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
	AND table_name NOT IN 
		(
		SELECT table_name
		FROM information_schema.views
		WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
		)
ORDER BY table_schema, table_name, length(table_name), length(column_name), ordinal_position




-- List of schemas and tables.
WITH tbls_cte AS (
	SELECT table_schema, table_name
	FROM information_schema.tables
	WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
		AND table_type = 'BASE TABLE'
	ORDER BY length(table_schema), length(table_name)
	)
SELECT tbls.table_schema, tbls.table_name, cols.column_name
FROM information_schema.columns AS cols
JOIN tbls_cte AS tbls
	ON cols.table_name = tbls.table_name
ORDER BY length(tbls.table_schema), tbls.table_name, length(cols.column_name)

