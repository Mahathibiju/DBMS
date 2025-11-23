
-- 2. Create simple view for "New Age" songs
CREATE OR REPLACE VIEW view_d_songs AS
SELECT song_id AS "ID",
       title AS "Song Title",
       artist
FROM djs_on_demand
WHERE type_code = 'New Age';

-- 3. Check contents of view
-- SELECT * FROM view_d_songs;

-- 4. Replace view to include type_code with aliases
CREATE OR REPLACE VIEW view_d_songs AS
SELECT song_id AS "Song ID",
       title AS "Song Title",
       artist AS "Artist Name",
       type_code AS "Type Code"
FROM djs_on_demand
WHERE type_code = 'New Age';

-- 5. Create a view for Jason Tsang to see events without price
CREATE OR REPLACE VIEW view_jason_events AS
SELECT event_name AS "Event Name",
       event_date AS "Event Date",
       theme_description AS "Theme"
FROM events;

-- 6. Create a view for department managers to see salary summary
CREATE OR REPLACE VIEW view_dept_salary_summary AS
SELECT department_id AS "Department ID",
       MIN(salary) AS "Minimum Salary",
       MAX(salary) AS "Maximum Salary",
       AVG(salary) AS "Average Salary"
FROM employees
GROUP BY department_id;
