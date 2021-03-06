USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 10/21/2016 9:44:32 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [nvarchar](50) NOT NULL,
	[AccessoriesPhoto] [nvarchar](50) NULL,
	[AccessoriesColor] [nvarchar](50) NULL,
	[AccessoriesType] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomsName] [nvarchar](50) NOT NULL,
	[BottomsPhoto] [nvarchar](50) NULL,
	[BottomsColor] [nvarchar](50) NULL,
	[BottomsType] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasssions]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasssions](
	[OccassionID] [int] IDENTITY(1,1) NOT NULL,
	[OccassionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasssions] PRIMARY KEY CLUSTERED 
(
	[OccassionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nvarchar](50) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoesID] [int] NULL,
	[AccessoriesID] [int] NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesName] [nvarchar](50) NOT NULL,
	[ShoesPhoto] [nvarchar](50) NULL,
	[ShoesColor] [nvarchar](50) NULL,
	[ShoesType] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 10/21/2016 9:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsName] [nvarchar](50) NOT NULL,
	[TopsPhoto] [nvarchar](50) NULL,
	[TopsColor] [nvarchar](50) NULL,
	[TopsType] [nvarchar](50) NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesColor], [AccessoriesType], [SeasonID], [OccassionID]) VALUES (1, N'Belt', N'/Content/Belt.jpg', N'Black', NULL, NULL, NULL)
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesColor], [AccessoriesType], [SeasonID], [OccassionID]) VALUES (2, N'Watch', N'/Content/Watch.jpg', N'Black', NULL, NULL, NULL)
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesColor], [AccessoriesType], [SeasonID], [OccassionID]) VALUES (3, N'Tie', N'/Content/TieBlack.jpg', N'Black', NULL, NULL, NULL)
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesColor], [AccessoriesType], [SeasonID], [OccassionID]) VALUES (4, N'Tie', N'/Content/TieGrey.jpg', N'Grey', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsPhoto], [BottomsColor], [BottomsType], [SeasonID], [OccassionID]) VALUES (1, N'Jeans', N'/Content/Jeans.jpg', N'Blue', N'Slim-Jeans', 5, 4)
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsPhoto], [BottomsColor], [BottomsType], [SeasonID], [OccassionID]) VALUES (2, N'Jeans', N'/Content/Jeans grey.jpg', N'Grey', N'Slim-Jeans', 5, 4)
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsPhoto], [BottomsColor], [BottomsType], [SeasonID], [OccassionID]) VALUES (3, N'Slacks', N'/Content/slacks light grey.jpg', N'Grey-light', N'Dress Pants', 5, 4)
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsPhoto], [BottomsColor], [BottomsType], [SeasonID], [OccassionID]) VALUES (4, N'Slacks', N'/Content/slacks dark grey.jpg', N'Grey-Dark', N'Dress Pants', 5, 4)
INSERT [dbo].[Bottoms] ([BottomsID], [BottomsName], [BottomsPhoto], [BottomsColor], [BottomsType], [SeasonID], [OccassionID]) VALUES (5, N'Slacks', N'/Content/slacks black.jpg', N'Black', N'Dress Pants', 5, 4)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Occasssions] ON 

INSERT [dbo].[Occasssions] ([OccassionID], [OccassionName]) VALUES (1, N'Work')
INSERT [dbo].[Occasssions] ([OccassionID], [OccassionName]) VALUES (2, N'Date Night')
INSERT [dbo].[Occasssions] ([OccassionID], [OccassionName]) VALUES (3, N'Party')
INSERT [dbo].[Occasssions] ([OccassionID], [OccassionName]) VALUES (4, N'None Specified')
SET IDENTITY_INSERT [dbo].[Occasssions] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoesID], [AccessoriesID]) VALUES (1, N'Dress', 3, 4, 2, 3)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (1, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (2, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (3, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (4, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (5, N'Any Season')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesPhoto], [ShoesColor], [ShoesType], [SeasonID], [OccassionID]) VALUES (2, N'Dress', N'/Content/DressShoe.jpg', N'Black', N'Oxford', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesPhoto], [ShoesColor], [ShoesType], [SeasonID], [OccassionID]) VALUES (3, N'Chuck Taylor', N'/Content/ChuckTaylors.jpg', N'Black/White', N'Sneakers', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesPhoto], [ShoesColor], [ShoesType], [SeasonID], [OccassionID]) VALUES (4, N'Running', N'/Content/RunningShoe.jpg', N'Black', N'Athletic', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesPhoto], [ShoesColor], [ShoesType], [SeasonID], [OccassionID]) VALUES (5, N'Boat Shoe', N'/Content/BoatShoe.jpg', N'Grey', N'Boat Shoe', 3, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [ShoesName], [ShoesPhoto], [ShoesColor], [ShoesType], [SeasonID], [OccassionID]) VALUES (6, N'Boot', N'/Content/Boot.jpg', N'Black', N'Winter Boot', 1, NULL)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (1, N'Long Sleeve Oxford', N'/Content/LongSleeveOxfordPink.jpg', N'Pink', N'Button-Down', 5, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (2, N'Long Sleeve Oxford', N'/Content/LongSleeveOxfordWhite.jpg', N'White', N'Button-Down', 5, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (3, N'Long Sleeve Oxford', N'/Content/LongSleeveOxfordBlack.jpg', N'Black', N'Button-Down', 5, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (4, N'Sweater', N'/Content/SweaterGrey.jpg', N'Grey', N'Pull-Over', 1, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (5, N'Sweater', N'/Content/SweaterRed.jpg', N'Red', N'Pull-Over', 1, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (6, N'Sweater', N'/Content/SweaterBlack.jpg', N'Black', N'Pull-Over', 1, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (9, N'Cardigan', N'/Content/CardiganBlack.jpg', N'Black', N'Button', 1, 4)
INSERT [dbo].[Tops] ([TopsID], [TopsName], [TopsPhoto], [TopsColor], [TopsType], [SeasonID], [OccassionID]) VALUES (10, N'Cardigan', N'/Content/CardiganGrey.jpg', N'Grey', N'Button', 1, 4)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasssions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occasssions] ([OccassionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasssions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasssions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occasssions] ([OccassionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasssions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Shoes1] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occasssions] ([OccassionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Shoes1]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasssions] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occasssions] ([OccassionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasssions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
