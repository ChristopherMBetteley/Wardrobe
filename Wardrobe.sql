USE [master]
GO

/****** Object:  Database [Wardrobe]    Script Date: 10/19/2016 1:56:06 AM ******/
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

ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO

