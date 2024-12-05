CREATE FUNCTION GetTotalPosts (@UserID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Total INT;
    SELECT @Total = COUNT(*)
    FROM Posts
    WHERE UserID = @UserID;
    RETURN @Total;
END;

ALTER TABLE Posts
ADD TotalLikes INT DEFAULT 0;