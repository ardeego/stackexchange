
USE stackexchange;

SELECT AcceptedAnswerId
FROM Posts
WHERE
    Tags RLIKE 'image-processing' AND
    Tags RLIKE 'computer-vision' AND
    AnswerCount > 1 AND
    AcceptedAnswerId IS NOT NULL;
