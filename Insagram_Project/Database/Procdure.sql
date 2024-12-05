CREATE PROCEDURE AddPost
    @UserID INT,
    @Caption NVARCHAR(255),
    @MediaType NVARCHAR(20),
    @PostDate DATETIME
AS
BEGIN
    INSERT INTO Posts (UserID, Caption, MediaType, PostDate)
    VALUES (@UserID, @Caption, @MediaType, @PostDate);
END;