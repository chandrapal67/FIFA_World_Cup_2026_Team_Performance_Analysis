-- ============================================================
-- BUSINESS QUESTION 01
-- Which teams scored the most goals in the tournament?
-- ============================================================

use fifa_world_cup_2026;

desc attendance;
desc teams;
desc player_stats;
desc matches;


-- Calculate total goals scored by each team
-- Includes goals scored in both home and away matches


# Q.1 - Which teams scored the most goals?

select team_name,sum(goals_scored) as total_goals
from (
    select home_team_id as team_id,home_score as goals_scored from matches
    union all
    select away_team_id as team_id,away_score as goals_scored from matches
) as match_goals
inner join teams using(team_id)
group by team_name
order by 2 desc;


# Q,2 - Which teams conceded the most goals in the tournament?

select team_name,sum(goals_conceded) as total_goals_conceded
from (
    select home_team_id as team_id,away_score as goals_conceded from matches
    union all
    select away_team_id as team_id,home_score as goals_conceded from matches
) as match_goals
inner join teams using(team_id)
group by team_name
order by 2 desc;

# Q.3 - Which teams have the highest goal difference?

select team_name,sum(goals_scored)-sum(goals_conceded) as goal_difference
from (
    select home_team_id as team_id,home_score as goals_scored,away_score as goals_conceded from matches
    union all
    select away_team_id as team_id,away_score as goals_scored,home_score as goals_conceded from matches
) as match_goals
inner join teams using(team_id)
group by team_name
order by 2 desc;

# Q.4 - Which teams recorded the most wins in the tournament?

select team_name,count(*) as total_wins
from (
    select home_team_id as team_id from matches where home_score>away_score
    union all
    select away_team_id as team_id from matches where away_score>home_score
) as match_wins
inner join teams using(team_id)
group by team_name
order by 2 desc;

# Q.5 - Which teams recorded the most draws in the tournament?

select team_name,count(*) as total_draws
from (
    select home_team_id as team_id from matches where home_score=away_score
    union all
    select away_team_id as team_id from matches where away_score=home_score
) as match_draws
inner join teams using(team_id)
group by team_name
order by 2 desc;

# Q.6 - Which players scored the most goals in the tournament?

select player_name,t.team_name,ps.goals
from players p inner join player_stats ps using(player_id)
inner join teams t on p.team_id=t.team_id
order by 3 desc
limit 5;

# Q.7 - Which players provided the most assists?

select player_name,team_name,assists
from players inner join player_stats using(player_id) inner join teams on players.team_id=teams.team_id
order by 3 desc
limit 5;

# Q.8 - Which teams kept the most clean sheets?

select team_name,count(*) as clean_sheets
from (
    select home_team_id as team_id from matches where away_score=0
    union all
    select away_team_id as team_id from matches where home_score=0
) as team_clean_sheets
inner join teams using(team_id)
group by team_name
order by 2 desc;

# Q.9 - Which teams had the highest shooting accuracy?

select team_name,sum(shots_on_target) as total_shots_on_target,
sum(shots) as total_shots,
round(sum(shots_on_target)*100.0/sum(shots),2) as shooting_accuracy
from teams inner join players using(team_id) inner join player_stats using(player_id)
group by team_name
order by 4 desc;

# Q.10 - Which venues had the highest average attendance per match?

select venue_name,count(*) as total_matches,round(avg(attendance.attendance)) as avg_attendance
from venues inner join matches using(venue_id) inner join attendance using(match_id)
group by venue_name
order by 3 desc;