use vaishnavi;
select * from centre;

-- Q1) Give me the topic that has answered most

select Distinct Topic, count(Answered) as Most_Answered 
from centre 
where Answered = 'Y' 
group by Topic 
order by count(Answered) desc;

-- Streaming, Payment related and Technical support are the topics which are answered the most


-- Q2) Find the topics where the duration of talk is more

select distinct Topic, AvgTalkDuration as Talk_Duration 
from centre 
group by Topic, AvgTalkDuration 
order by AvgTalkDuration desc 
limit 5;

-- All the topics are discussed for 7 minutes



-- Q4) Tell me the name of Agnets and Topic covered by them which are answered the most

select Distinct Agent, Topic, count(Answered) as Most_Answered 
from centre 
where Answered = 'Y' 
group by Agent, Topic 
order by count(Answered) desc 
limit 5;

-- Jim has covered the contract related topic for 121 times  and  Becky has covered the streaming topic for 119 times


-- Q5) How Many topics are covered by each of the Agent and which Agent had Done well in his job

select Distinct Agent, count(Topic) as Topics 
from centre 
group by Agent 
order by count(Topic) desc;

-- As per the result, Jim and Dan has covered 536 and 523 topics respectively,  so they both have done well in their job


-- Q6) Top 3 Agents which are rated highest 

select distinct Agent, count(SatisfactionRating) as Rating 
from centre 
group by Agent 
order by count(SatisfactionRating) desc 
limit 3;

-- Jim, Dan and Becky are the agents who are rated highest



-- Q7) Those top 3 Agents Rated highest for which Topic

select distinct Agent, Topic, count(SatisfactionRating) as Rating 
from centre 
where Agent in ('Jim', 'Dan', 'Becky') 
group by Agent, Topic 
order by Agent desc;



-- Q8) How many times the highest rating has been given the agents

select distinct Agent, Topic, SatisfactionRating, count(SatisfactionRating) as count_Rating  
from centre 
where SatisfactionRating = 5 
group by Agent, Topic, SatisfactionRating 
order by count(Satisfactionrating) desc 
limit 3;
-- Dan has been given the highest rating of 5 for 32 times



/* Analysis :-
                As per the overall Analysis of Call Centre data, Jim and Dan are the best agents with their respective ratings and performance 
/*              in the topics like Streaming and payment related