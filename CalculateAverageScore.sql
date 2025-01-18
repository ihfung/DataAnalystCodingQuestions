-- Calculate the average score for each project, but only include projects where more than one team member has provided a score.

-- Your output should include the project ID and the calculated average score for each qualifying project.
-- Table: project_data


select project_id, avg(score) as average_score from project_data 
group by project_id 
having count(distinct team_member_id) > 1;

