
CREATE DATABASE IF NOT EXISTS stackexchange;

USE stackexchange;

CREATE TABLE IF NOT EXISTS Badges (
    UserId INT,
    Name VARCHAR(255),
    Date DATETIME(3)
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS Comments (
    Id INT,
    PostId INT,
    Score INT,
    Text MEDIUMTEXT,
    CreationDate DATETIME(3),
    UserId INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS Posts (
    Id INT,
    PostTypeId INT,
    ParentId INT,
    AcceptedAnswerId INT,
    CreationDate DATETIME(3),
    Score INT,
    ViewCount INT,
    Body LONGTEXT,
    OwnerUserId INT,
    LastEditorUserId INT,
    LastEditorDisplayName VARCHAR(255),
    LastEditDate DATETIME(3),
    LastActivityDate DATETIME(3),
    CommunityOwnedDate DATETIME(3),
    ClosedDate DATETIME(3),
    Title TEXT,
    Tags TEXT,
    AnswerCount INT,
    CommentCount INT,
    FavoriteCount INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS PostHistory (
    Id INT,
    PostHistoryTypeId INT,
    PostId INT,
    RevisionGUID VARCHAR(255),
    CreationDate DATETIME(3),
    UserId INT,
    UserDisplayName VARCHAR(255),
    Comment MEDIUMTEXT,
    Text LONGTEXT,
    CloseReasonId INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS PostLinks (
    Id INT,
    CreationDate DATETIME(3),
    PostId INT,
    RelatedPostId INT,
    LinkTypeId INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS Users (
    Id INT,
    Reputation INT,
    CreationDate DATETIME(3),
    DisplayName VARCHAR(255),
    EmailHash VARCHAR(255),
    LastAccessDate DATETIME(3),
    WebsiteUrl VARCHAR(255),
    Location VARCHAR(255),
    Age INT,
    AboutMe MEDIUMTEXT,
    Views INT,
    UpVotes INT,
    DownVotes INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS Votes (
    Id INT,
    PostId INT,
    VoteTypeId INT,
    CreationDate DATETIME(3),
    UserId INT,
    BountyAmount INT
) CHARSET utf8;

CREATE TABLE IF NOT EXISTS Tags (
    Id INT,
    TagName VARCHAR(255),
    Count INT,
    ExcerptPostId INT,
    WikiPostId INT
) CHARSET utf8;
