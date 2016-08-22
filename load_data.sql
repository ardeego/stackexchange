
USE stackexchange;

TRUNCATE TABLE Badges;

LOAD XML INFILE 'stackexchange/xml/Badges.xml'
    INTO TABLE Badges
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE Comments;

LOAD XML INFILE 'stackexchange/xml/Comments.xml'
    INTO TABLE Comments
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE Posts;

LOAD XML INFILE 'stackexchange/xml/Posts.xml'
    INTO TABLE Posts
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE PostHistory;

LOAD XML INFILE 'stackexchange/xml/PostHistory.xml'
    INTO TABLE PostHistory
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE PostLinks;

LOAD XML INFILE 'stackexchange/xml/PostLinks.xml'
    INTO TABLE PostLinks
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE Users;

LOAD XML INFILE 'stackexchange/xml/Users.xml'
    INTO TABLE Users
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE Votes;

LOAD XML INFILE 'stackexchange/xml/Votes.xml'
    INTO TABLE Votes
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';

TRUNCATE TABLE Tags;

LOAD XML INFILE 'stackexchange/xml/Tags.xml'
    INTO TABLE Tags
    CHARSET utf8
    ROWS IDENTIFIED BY '<row>';
