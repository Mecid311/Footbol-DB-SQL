USE [Footbol]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 10/2/2019 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FatherName] [nvarchar](50) NOT NULL,
	[PIN] [nvarchar](7) NOT NULL,
	[Phone] [nvarchar](13) NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stadiums]    Script Date: 10/2/2019 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadiums](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StadiumName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stadium] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 10/2/2019 9:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReserveRegistrationDate] [date] NOT NULL,
	[ReserveRegistrationStratDate] [datetime] NOT NULL,
	[ReserveRegistrationFinishtDate] [datetime] NOT NULL,
	[StadiumId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_PersonId] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([Id])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_PersonId]
GO
ALTER TABLE [dbo].[Table1]  WITH CHECK ADD  CONSTRAINT [FK_StadiumId] FOREIGN KEY([StadiumId])
REFERENCES [dbo].[Stadiums] ([Id])
GO
ALTER TABLE [dbo].[Table1] CHECK CONSTRAINT [FK_StadiumId]
GO
