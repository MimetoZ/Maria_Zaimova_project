INSERT INTO Users (Username, Email, PasswordHash, Bio, JoinDate)
VALUES 
    ('alexdoe', 'alexdoe@example.com', 'hashed_password1', 'Traveler and foodie', '2023-01-15'),
    ('sophiaali', 'sophiaali@example.com', 'hashed_password2', 'Photographer', '2023-02-10');

INSERT INTO Posts (UserID, Caption, MediaType, PostDate)
VALUES 
    (1, 'Exploring the mountains', 'image', '2023-03-01 10:00:00'),
    (2, 'Sunset at the beach', 'image', '2023-03-02 18:30:00');

INSERT INTO Stories (UserID, Content, PostDate, ExpiryDate)
VALUES 
    (1, 'story1.jpg', '2023-03-01 12:00:00', '2023-03-02 12:00:00'),
    (2, 'story2.jpg', '2023-03-02 20:00:00', '2023-03-03 20:00:00');


INSERT INTO Likes (UserID, PostID, LikeDate)
VALUES 
    (1, 2, '2023-03-02 19:00:00'),
    (2, 1, '2023-03-01 10:30:00');


INSERT INTO Comments (UserID, PostID, CommentText, CommentDate)
VALUES 
    (1, 2, 'Beautiful photo!', '2023-03-02 19:15:00'),
    (2, 1, 'Love this view!', '2023-03-01 10:45:00');