
-- Create table
CREATE TABLE OfficeEpisodes (
    id INT PRIMARY KEY,
    Season INT,
    EpisodeTitle TEXT,
    About TEXT,
    Ratings FLOAT,
    Votes INT,
    Viewership FLOAT,
    Duration INT,
    Date TEXT,
    GuestStars TEXT,
    Director TEXT,
    Writers TEXT
);

-- Sample Query 1: Top 5 highest-rated episodes
SELECT EpisodeTitle, Season, Ratings
FROM OfficeEpisodes
ORDER BY Ratings DESC
LIMIT 5;

-- Sample Query 2: Average ratings per season
SELECT Season, ROUND(AVG(Ratings), 2) AS AvgRating
FROM OfficeEpisodes
GROUP BY Season
ORDER BY Season;

-- Sample Query 3: Directors with the most episodes
SELECT Director, COUNT(*) AS EpisodeCount
FROM OfficeEpisodes
GROUP BY Director
ORDER BY EpisodeCount DESC
LIMIT 5;

-- Sample Query 4: Episodes with guest stars
SELECT EpisodeTitle, GuestStars
FROM OfficeEpisodes
WHERE GuestStars IS NOT NULL;

-- Sample Query 5: Season with highest average viewership
SELECT Season, ROUND(AVG(Viewership), 2) AS AvgViewership
FROM OfficeEpisodes
GROUP BY Season
ORDER BY AvgViewership DESC;
