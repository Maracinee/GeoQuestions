--Structure

IF NOT EXISTS (SELECT *
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_TYPE='BASE TABLE'
	AND TABLE_NAME='User')
CREATE TABLE dbo.[User]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];