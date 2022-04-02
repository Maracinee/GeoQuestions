--Stored procedures

--User_Select
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'User_Select' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].User_Select
GO
CREATE PROCEDURE [dbo].[User_Select]
AS
	SET NOCOUNT ON;
SELECT [Id], [Name], [Email], [Password] FROM dbo.[User]
GO

--User_Update
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'User_Update' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].User_Update
GO
CREATE PROCEDURE [dbo].[User_Update](
	@Name varchar(100),
	@Email varchar(100),
	@Password varchar(100),
	@Original_Id int,
	@Id int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[User] SET [Name] = @Name, [Email] = @Email, [Password] = @Password WHERE (([Id] = @Original_Id)); 
SELECT [Id], [Name], [Email], [Password] FROM dbo.[User] WHERE (Id = @Id)
GO

--User_Insert
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'User_Insert' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].User_Insert
GO
CREATE PROCEDURE [dbo].[User_Insert](
	@Name varchar(100),
	@Email varchar(100),
	@Password varchar(100)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[User] ([Name], [Email], [Password]) VALUES (@Name, @Email, @Password);
SELECT [Id], [Name], [Email], [Password] FROM dbo.[User] WHERE (Id = SCOPE_IDENTITY())
GO

--User_Delete
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'User_Delete' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].User_Delete
GO
CREATE PROCEDURE [dbo].[User_Delete]
(
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[User] WHERE (([Id] = @Original_Id))
GO

--Game_Select
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Game_Select' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Game_Select
GO
CREATE PROCEDURE [dbo].[Game_Select]
AS
	SET NOCOUNT ON;
SELECT [Id], [IdUser], [Time] FROM dbo.[Game]
GO

--Game_Update
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Game_Update' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Game_Update
GO
CREATE PROCEDURE [dbo].[Game_Update](
	@IdUser int,
	@Time datetime,
	@Original_Id int,
	@Id int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Game] SET [IdUser] = @IdUser, [Time] = @Time WHERE (([Id] = @Original_Id)); 
SELECT [Id], [IdUser], [Time] FROM dbo.[Game] WHERE (Id = @Id)
GO

--Game_Insert
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Game_Insert' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Game_Insert
GO
CREATE PROCEDURE [dbo].[Game_Insert](
	@IdUser int,
	@Time datetime
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Game] ([IdUser], [Time]) VALUES (@IdUser, @Time);
SELECT [Id], [IdUser], [Time] FROM dbo.[Game] WHERE (Id = SCOPE_IDENTITY())
GO

--Game_Delete
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Game_Delete' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Game_Delete
GO
CREATE PROCEDURE [dbo].[Game_Delete]
(
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Game] WHERE (([Id] = @Original_Id))
GO

--Question_Select
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Select' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Select
GO
CREATE PROCEDURE [dbo].[Question_Select]
AS
	SET NOCOUNT ON;
SELECT [Id], [Latitude_verified], [Longitude_verified], [Name] FROM dbo.[Question]
GO

--Question_Update
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Update' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Update
GO
CREATE PROCEDURE [dbo].[Question_Update](
	@Latitude_verified varchar,
	@Longitude_verified varchar,
	@Name varchar,
	@Original_Id int,
	@Id int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Question] SET [Latitude_verified] = @Latitude_verified, [Longitude_verified] = @Longitude_verified, [Name] = @Name WHERE (([Id] = @Original_Id)); 
SELECT [Id], [Latitude_verified], [Longitude_verified], [Name] FROM dbo.[Question] WHERE (Id = @Id)
GO

--Question_Insert
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Insert' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Insert
GO
CREATE PROCEDURE [dbo].[Question_Insert](
	@Latitude_verified varchar,
	@Longitude_verified varchar,
	@Name varchar
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Question] ([Latitude_verified], [Longitude_verified], [Name]) VALUES (@Latitude_verified, @Longitude_verified, @Name);
SELECT [Id], [Latitude_verified], [Longitude_verified], [Name] FROM dbo.[Question] WHERE (Id = SCOPE_IDENTITY())
GO

--Question_Delete
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Delete' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Delete
GO
CREATE PROCEDURE [dbo].[Question_Delete]
(
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Question] WHERE (([Id] = @Original_Id))
GO

--Question_Game_Select
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Game_Select' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Game_Select
GO
CREATE PROCEDURE [dbo].[Question_Game_Select]
AS
	SET NOCOUNT ON;
SELECT [Id], [IdGame], [IdQuestion], [Latitude_answear], [Longitude_answear], [Score] FROM dbo.[Question_Game]
GO

--Question_Game_Update
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Game_Update' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Game_Update
GO
CREATE PROCEDURE [dbo].[Question_Game_Update](
	@IdGame int,
	@IdQuestion int,
	@Latitude_answear varchar,
	@Longitude_answear varchar,
	@Score int,
	@Original_Id int,
	@Id int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Question_Game] SET [IdGame] = @IdGame, [IdQuestion] = @IdQuestion, [Latitude_answear] = @Latitude_answear, [Longitude_answear] = @Longitude_answear, [Score] = @Score WHERE (([Id] = @Original_Id)); 
SELECT [Id], [IdGame], [IdQuestion], [Latitude_answear], [Longitude_answear], [Score] FROM dbo.[Question_Game] WHERE (Id = @Id)
GO

--Question_Game_Insert
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Game_Insert' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Game_Insert
GO
CREATE PROCEDURE [dbo].[Question_Game_Insert](
	@IdGame int,
	@IdQuestion int,
	@Latitude_answear varchar,
	@Longitude_answear varchar,
	@Score int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Question_Game] ([IdGame], [IdQuestion], [Latitude_answear], [Longitude_answear], [Score]) VALUES (@IdGame, @IdQuestion, @Latitude_answear, @Longitude_answear, @Score);
SELECT [Id], [IdGame], [IdQuestion], [Latitude_answear], [Longitude_answear], [Score] FROM dbo.[Question_Game] WHERE (Id = SCOPE_IDENTITY())
GO

--Question_Game_Delete
IF EXISTS (SELECT * FROM sysobjects WHERE name = 'Question_Game_Delete' AND user_name(uid) = 'dbo')
	DROP PROCEDURE [dbo].Question_Game_Delete
GO
CREATE PROCEDURE [dbo].[Question_Game_Delete]
(
	@Original_Id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Question_Game] WHERE (([Id] = @Original_Id))
GO