USE [tanulmanyi]
GO
/****** Object:  Table [dbo].[Beosztas]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beosztas](
	[beosztas_id] [int] NOT NULL,
	[beosztasnev] [nvarchar](50) NULL,
	[elvart] [int] NULL,
 CONSTRAINT [PK_Beosztasok] PRIMARY KEY CLUSTERED 
(
	[beosztas_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nap]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nap](
	[nap_id] [int] NOT NULL,
	[nap] [nvarchar](50) NULL,
 CONSTRAINT [PK_Napok] PRIMARY KEY CLUSTERED 
(
	[nap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oktato]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oktato](
	[oktato_id] [int] NOT NULL,
	[nev] [nvarchar](50) NULL,
	[titulus] [nvarchar](50) NULL,
	[beosztás] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Oktatok] PRIMARY KEY CLUSTERED 
(
	[oktato_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ora]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ora](
	[ora_id] [int] NOT NULL,
	[tanar] [int] NULL,
	[nap] [int] NULL,
	[Sav] [int] NULL,
	[targy] [int] NULL,
	[terem] [int] NULL,
 CONSTRAINT [PK_Orak] PRIMARY KEY CLUSTERED 
(
	[ora_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sav]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sav](
	[Sav_id] [int] NOT NULL,
	[Sav] [nvarchar](50) NULL,
	[Időpont] [nvarchar](50) NULL,
 CONSTRAINT [PK_Savok] PRIMARY KEY CLUSTERED 
(
	[Sav_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Skod] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_statusok] PRIMARY KEY CLUSTERED 
(
	[Skod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tantargy]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tantargy](
	[Tkód] [int] NOT NULL,
	[Tantárgynév] [nvarchar](50) NULL,
	[Tantárgyfelelős] [int] NULL,
	[Tantargykod] [nvarchar](50) NULL,
	[Kredit] [int] NULL,
 CONSTRAINT [PK_Tantárgyak] PRIMARY KEY CLUSTERED 
(
	[Tkód] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terem]    Script Date: 10/28/2025 7:54:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terem](
	[Tkód] [int] NOT NULL,
	[Terem] [nvarchar](50) NULL,
 CONSTRAINT [PK_Termek] PRIMARY KEY CLUSTERED 
(
	[Tkód] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (1, N'Óraadó', 6)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (2, N'Tanársegéd', 6)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (3, N'Adjunktus', 5)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (4, N'Docens', 4)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (5, N'Professzor', 3)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (6, N'Egyetemi tanár', 2)
GO
INSERT [dbo].[Beosztas] ([beosztas_id], [beosztasnev], [elvart]) VALUES (7, N'Tudományos munkatárs', 4)
GO
INSERT [dbo].[Nap] ([nap_id], [nap]) VALUES (1, N'Hétfő')
GO
INSERT [dbo].[Nap] ([nap_id], [nap]) VALUES (2, N'Kedd')
GO
INSERT [dbo].[Nap] ([nap_id], [nap]) VALUES (3, N'Szerda')
GO
INSERT [dbo].[Nap] ([nap_id], [nap]) VALUES (4, N'Csütörtök')
GO
INSERT [dbo].[Nap] ([nap_id], [nap]) VALUES (5, N'Péntek')
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (1, N'Kovács László', N'Dr.', 6, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (2, N'Szentágotai Istvás', N'Dr.', 3, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (3, N'Szerb László', NULL, 4, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (4, N'Ujfalussi István', N'Prof, tanszékvezető', 6, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (5, N'Balkán András', N'Dr.', 4, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (6, N'Szép llonka', N'Dr.', 3, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (7, N'Kiss János', NULL, 2, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (8, N'Pelikán József', NULL, 2, 3)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (9, N'Farkasos Piroska', NULL, 2, 3)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (10, N'Jogrerős Pál', N'Prof.', 6, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (11, N'Józsa Gábor', N'Dr.', 4, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (12, N'Varga Kata', N'Dr.', 4, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (14, N'Szénási ászló', NULL, 3, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (18, N'Nógrádi Kata', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (19, N'Rácz András', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (20, N'Kovács András', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (104, N'Ludas Mátyás', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (105, N'Kiss István', NULL, 1, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (107, N'Mészáros Kriszta', NULL, 1, 2)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (108, N'Róbert Gida', NULL, 2, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (111, N'Vitéz János', NULL, 2, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (200, N'Aranyi Mária', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (300, N'Szabó Andrera', NULL, 1, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (301, N'Juhász András', N'Dr.', 6, 1)
GO
INSERT [dbo].[Oktato] ([oktato_id], [nev], [titulus], [beosztás], [status]) VALUES (302, N'Kovacs Istvan', N'Dr.', 5, 1)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (159, 4, 3, 1, 1, 1)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (160, 8, 2, 5, 1, 2)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (161, 8, 1, 2, 1, 2)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (162, 20, 1, 4, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (163, 3, 3, 2, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (164, 7, 2, 3, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (165, 3, 2, 3, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (166, 3, 2, 4, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (167, 2, 1, 4, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (168, 4, 4, 3, 1, 5)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (169, 20, 1, 2, 1, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (170, 104, 1, 2, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (171, 14, 2, 2, 1, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (172, 7, 2, 2, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (173, 20, 4, 3, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (174, 104, 4, 3, 1, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (175, 14, 4, 4, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (176, 20, 4, 4, 1, 2)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (177, 2, 4, 5, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (178, 111, 4, 5, 1, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (179, 2, 4, 7, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (180, 111, 4, 7, 1, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (181, 2, 5, 1, 1, 2)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (182, 111, 5, 1, 1, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (183, 2, 5, 2, 1, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (184, 111, 5, 2, 1, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (185, 2, 4, 3, 1, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (186, 18, 2, 4, 16, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (187, 5, 3, 2, 2, 5)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (188, 9, 4, 7, 2, 13)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (189, 9, 4, 2, 2, 13)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (190, 9, 5, 3, 2, 14)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (191, 12, 1, 5, 5, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (192, 12, 1, 7, 5, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (193, 9, 1, 5, 5, 5)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (194, 9, 1, 7, 5, 11)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (195, 5, 1, 5, 5, 12)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (196, 5, 1, 7, 5, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (197, 9, 4, 1, 5, 16)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (198, 9, 3, 2, 5, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (199, 300, 4, 1, 5, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (200, 300, 4, 2, 5, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (201, 301, 4, 4, 17, 14)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (202, 301, 4, 5, 17, 15)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (203, 200, 1, 4, 4, 10)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (204, 108, 2, 5, 4, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (205, 4, 1, 4, 18, 8)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (206, 12, 2, 1, 18, 10)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (207, 12, 4, 4, 18, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (208, 10, 1, 1, 13, 13)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (209, 10, 1, 2, 13, 13)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (210, 6, 1, 7, 8, 14)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (211, 6, 1, 8, 8, 5)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (212, 7, 1, 9, 8, 4)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (213, 7, 1, 10, 8, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (214, 8, 1, 3, 3, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (215, 8, 1, 4, 3, 9)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (216, 6, 1, 3, 3, 6)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (217, 6, 1, 4, 3, 5)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (218, 8, 2, 7, 3, 2)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (219, 8, 2, 8, 3, 7)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (220, 1, 2, 3, 10, 3)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (221, 1, 3, 3, 10, 13)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (222, 1, 4, 5, 10, 12)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (223, 1, 5, 1, 10, 10)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (226, 2, 3, 3, 19, 1)
GO
INSERT [dbo].[Ora] ([ora_id], [tanar], [nap], [Sav], [targy], [terem]) VALUES (227, 2, 2, 5, 4, 12)
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (1, N'1', N'8.00')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (2, N'2', N'9.30')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (3, N'3', N'11.00')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (4, N'4', N'12.30')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (5, N'5', N'14.00')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (7, N'6', N'15.30')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (8, N'7', N'17.00')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (9, N'8', N'18.30')
GO
INSERT [dbo].[Sav] ([Sav_id], [Sav], [Időpont]) VALUES (10, N'8', N'20.00')
GO
INSERT [dbo].[Status] ([Skod], [Status]) VALUES (1, N'Főállású')
GO
INSERT [dbo].[Status] ([Skod], [Status]) VALUES (2, N'Félállású')
GO
INSERT [dbo].[Status] ([Skod], [Status]) VALUES (3, N'Óraadó')
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (1, N'Az ürgeöntés alapjai', 5, NULL, 2)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (2, N'Bevezetés az ürgeöntésbe', 5, NULL, 3)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (3, N'Az ürge anatómiája', 8, NULL, 5)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (4, N'Az ürgeöntés hydrológiai alapjai I.', 4, NULL, 2)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (5, N'Az ürgeöntés hydrológiai alapjai II.', 5, NULL, 4)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (8, N'Ürgeöntés az EU-ban', 8, NULL, 1)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (10, N'Fejezetek az ürgék jogaiból', 1, NULL, 3)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (11, N'Folyami gáttan', 12, NULL, 2)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (13, N'Ürgevitel', 10, NULL, 6)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (16, N'ü-business', 1, NULL, 2)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (17, N'Öntési gyakorlat', 8, NULL, 1)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (18, N'Az öntés elmélete', 1, NULL, 4)
GO
INSERT [dbo].[Tantargy] ([Tkód], [Tantárgynév], [Tantárgyfelelős], [Tantargykod], [Kredit]) VALUES (19, N'ürgefőzés', 1, NULL, 3)
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (1, N'117')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (2, N'118')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (3, N'119')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (4, N'120')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (5, N'217')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (6, N'218')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (7, N'219')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (8, N'220')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (9, N'E.fsz.IV.')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (10, N'S.Asor.S3')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (11, N'E.fsz.I')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (12, N'116')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (13, N'VP 203.')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (14, N'E.2.238')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (15, N'E.3.332')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (16, N'116')
GO
INSERT [dbo].[Terem] ([Tkód], [Terem]) VALUES (17, N'121')
GO
ALTER TABLE [dbo].[Oktato]  WITH CHECK ADD  CONSTRAINT [FK_Oktatok_Beosztasok] FOREIGN KEY([beosztás])
REFERENCES [dbo].[Beosztas] ([beosztas_id])
GO
ALTER TABLE [dbo].[Oktato] CHECK CONSTRAINT [FK_Oktatok_Beosztasok]
GO
ALTER TABLE [dbo].[Oktato]  WITH CHECK ADD  CONSTRAINT [FK_Oktatok_statusok] FOREIGN KEY([status])
REFERENCES [dbo].[Status] ([Skod])
GO
ALTER TABLE [dbo].[Oktato] CHECK CONSTRAINT [FK_Oktatok_statusok]
GO
ALTER TABLE [dbo].[Ora]  WITH CHECK ADD  CONSTRAINT [FK_Orak_Napok] FOREIGN KEY([nap])
REFERENCES [dbo].[Nap] ([nap_id])
GO
ALTER TABLE [dbo].[Ora] CHECK CONSTRAINT [FK_Orak_Napok]
GO
ALTER TABLE [dbo].[Ora]  WITH CHECK ADD  CONSTRAINT [FK_Orak_Oktatok] FOREIGN KEY([tanar])
REFERENCES [dbo].[Oktato] ([oktato_id])
GO
ALTER TABLE [dbo].[Ora] CHECK CONSTRAINT [FK_Orak_Oktatok]
GO
ALTER TABLE [dbo].[Ora]  WITH CHECK ADD  CONSTRAINT [FK_Orak_Savok] FOREIGN KEY([Sav])
REFERENCES [dbo].[Sav] ([Sav_id])
GO
ALTER TABLE [dbo].[Ora] CHECK CONSTRAINT [FK_Orak_Savok]
GO
ALTER TABLE [dbo].[Ora]  WITH CHECK ADD  CONSTRAINT [FK_Orak_Tantárgyak] FOREIGN KEY([targy])
REFERENCES [dbo].[Tantargy] ([Tkód])
GO
ALTER TABLE [dbo].[Ora] CHECK CONSTRAINT [FK_Orak_Tantárgyak]
GO
ALTER TABLE [dbo].[Ora]  WITH CHECK ADD  CONSTRAINT [FK_Orak_Termek] FOREIGN KEY([terem])
REFERENCES [dbo].[Terem] ([Tkód])
GO
ALTER TABLE [dbo].[Ora] CHECK CONSTRAINT [FK_Orak_Termek]
GO
