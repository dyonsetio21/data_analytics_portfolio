# 1 CHECKING NULL VALUES IN THE DATA
SELECT 
    *
FROM
    `company.ds_salaries`
    WHERE 
        work_year is NULL
        OR experience_level is NULL
        OR employment_type is NULL
        OR job_title is NULL
        OR salary is NULL
        OR salary_currency is NULL
        OR salary_in_usd is NULL
        OR employee_residence is NULL
        OR remote_ratio is NULL
        OR company_location is NULL
        OR company_size is NULL

# 2 Salary Analysis by Experience Level
SELECT 
    experience_level, 
    AVG(salary_in_usd) AS avg_salary_usd
FROM 
    `company.ds_salaries`
GROUP BY 
    experience_level
ORDER BY 
    avg_salary_usd DESC;

# 3 Salary Analysis by Job Title
SELECT 
    job_title, 
    AVG(salary_in_usd) AS avg_salary_usd,
    MIN(salary_in_usd) AS min_salary_usd,
    MAX(salary_in_usd) AS max_salary_usd
FROM 
    `company.ds_salaries`
GROUP BY 
    job_title
ORDER BY 
    avg_salary_usd DESC;

# 4 Salary Comparison by Employment Type
SELECT 
    employment_type, 
    AVG(salary_in_usd) AS avg_salary_usd
FROM 
    `company.ds_salaries`
GROUP BY 
    employment_type
ORDER BY 
    avg_salary_usd DESC;

# 5 Interaction between Worker Location and Company Location
SELECT 
    employee_residence, 
    company_location, 
    AVG(salary_in_usd) AS avg_salary_usd
FROM 
    `company.ds_salaries`
GROUP BY 
    employee_residence, company_location
ORDER BY 
    avg_salary_usd DESC;

# 6 Highest salary increase from Mid-level (MI) to Senior-level (SE)
WITH salary_by_experience AS (
    SELECT 
        work_year,
        experience_level,
        AVG(salary_in_usd) AS avg_salary_usd
    FROM 
        `company.ds_salaries`
    WHERE 
        experience_level IN ('MI', 'SE')
    GROUP BY 
        work_year, experience_level
),

salary_difference AS (
    SELECT 
        a.work_year,
        a.avg_salary_usd AS mid_level_salary,
        b.avg_salary_usd AS senior_level_salary,
        (b.avg_salary_usd - a.avg_salary_usd) AS salary_increase
    FROM 
        salary_by_experience a
    JOIN 
        salary_by_experience b 
    ON 
        a.work_year = b.work_year 
        AND a.experience_level = 'MI' 
        AND b.experience_level = 'SE'
)

SELECT 
    work_year,
    salary_increase
FROM 
    salary_difference
ORDER BY 
    salary_increase DESC;
