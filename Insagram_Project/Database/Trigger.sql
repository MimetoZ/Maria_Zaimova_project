CREATE TRIGGER UpdatePostLikes
ON Likes
AFTER INSERT, DELETE
AS
BEGIN
    
    DECLARE @PostID INT;
    
    
    IF EXISTS (SELECT * FROM INSERTED)
    BEGIN
        SELECT @PostID = PostID FROM INSERTED;
    END
    ELSE IF EXISTS (SELECT * FROM DELETED)
    BEGIN
        SELECT @PostID = PostID FROM DELETED;
    END

    UPDATE Posts
    SET TotalLikes = (SELECT COUNT(*) FROM Likes WHERE PostID = @PostID)
    WHERE PostID = @PostID;
END;