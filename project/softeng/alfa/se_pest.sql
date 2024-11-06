USE [se_pets]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[AnimalSK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[OwnerFK] [int] NULL,
	[BirthYear] [smallint] NULL,
	[SpeciesFK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AnimalSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locality]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locality](
	[LocalitySK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocalitySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[OwnerSK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[LocalityFK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procedure]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procedure](
	[ProcedureSK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Unit] [nvarchar](3) NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcedureSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcedureDone]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcedureDone](
	[ProcedureDoneSK] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentFK] [int] NULL,
	[ProcedureFK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcedureDoneSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[SpeciesSK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[SpeciesSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 11/5/2022 11:41:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Treatment](
	[TreatmentSK] [int] IDENTITY(1,1) NOT NULL,
	[AnimalFK] [int] NULL,
	[Date] [date] NULL,
	[Paid] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TreatmentSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Animal] ON 
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (1, N'Bunny', 7, 2002, 5)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (2, N'Barka Bergerac de Hu', 23, 2000, 44)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (3, N'Dory', 18, 1997, 18)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (4, N'Bodza', 13, 2007, 34)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (5, N'Madzag', 13, 2006, 16)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (6, N'Ananász', 14, 2003, 133)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (7, N'Tódor', 12, 1992, 1)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (8, N'Morgan', 28, 2005, 85)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (9, N'Cleo', 29, 2006, 13)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (10, N'Barka', 17, 2004, 89)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (11, N'Manó', 26, 1995, 141)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (12, N'Nelly', 14, 1998, 57)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (13, N'Benny', 18, 2000, 36)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (14, N'Alma', 9, 2003, 99)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (15, N'Flash', 22, 1993, 72)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (16, N'Folti', 21, 1994, 141)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (17, N'Aldor', 29, 1999, 31)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (18, N'Zénó', 28, 1995, 70)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (19, N'Vendel', 8, 1995, 113)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (20, N'Angie', 12, 1992, 124)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (21, N'Vili', 13, 2001, 57)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (22, N'Spuri', 14, 1998, 88)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (23, N'Cain', 19, 2004, 78)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (24, N'Angie', 19, 1996, 39)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (25, N'Benji', 8, 1996, 74)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (26, N'Zorró', 19, 1992, 102)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (27, N'Barka', 23, 2005, 98)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (28, N'Mira', 19, 1995, 1)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (29, N'Molly', 14, 2004, 37)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (30, N'Kelpye', 10, 2007, 9)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (31, N'Dori', 5, 2006, 60)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (32, N'Bergerac Bijou', 17, 1992, 110)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (33, N'Alba', 25, 1996, 109)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (34, N'Sóni', 22, 1999, 87)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (35, N'Lotti', 21, 2007, 137)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (36, N'Picasso', 11, 1997, 116)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (37, N'Saru', 5, 2002, 122)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (38, N'Alex', 28, 2006, 14)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (39, N'Pötyi', 17, 2006, 18)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (40, N'Lupus', 23, 1992, 132)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (41, N'Dorka', 23, 1992, 11)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (42, N'Dió', 13, 2002, 105)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (43, N'Gréti', 22, 2002, 79)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (44, N'Füge ', 17, 2001, 62)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (45, N'Luca', 26, 1998, 114)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (46, N'Vitamin', 27, 1997, 112)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (47, N'Lucky', 21, 1994, 114)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (48, N'Tessa Bergerac de Hu', 4, 2002, 19)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (49, N'Zserbó', 23, 2003, 17)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (50, N'Griff', 26, 2006, 146)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (51, N'Taz', 22, 1999, 123)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (52, N'Jade', 5, 1995, 69)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (53, N'Alíz', 26, 1996, 29)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (54, N'Bodor', 29, 1997, 134)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (55, N'Zsivány', 27, 1994, 112)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (56, N'Guru', 18, 2000, 139)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (57, N'Gréti', 3, 2006, 115)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (58, N'Sziporka', 3, 1997, 41)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (59, N'Berry', 10, 2000, 79)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (60, N'Lotti', 23, 1999, 28)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (61, N'Honey', 12, 2006, 3)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (62, N'Cudar', 24, 1997, 20)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (63, N'Indy', 29, 1999, 88)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (64, N'Sári', 5, 1994, 42)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (65, N'Phidjie', 21, 1992, 114)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (66, N'Murphy', 22, 2004, 115)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (67, N'Nio', 19, 1993, 36)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (68, N'Josh ', 16, 2005, 96)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (69, N'Zeusz', 1, 1997, 141)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (70, N'Speedy', 10, 2003, 146)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (71, N'Maya', 20, 2003, 94)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (72, N'Gigi', 18, 2007, 91)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (73, N'Gibson', 16, 2000, 13)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (74, N'Dózer', 9, 1997, 113)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (75, N'Bogyó', 5, 1998, 122)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (76, N'Angyal', 14, 2007, 111)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (77, N'Drazsé', 17, 1992, 91)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (78, N'Mansour', 8, 2006, 145)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (79, N'Bonifác', 15, 1997, 18)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (80, N'Bodza', 7, 1993, 77)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (81, N'Bessy', 29, 1995, 1)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (82, N'Gina', 20, 2002, 36)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (83, N'Sári', 28, 2001, 105)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (84, N'Bruni', 12, 1996, 74)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (85, N'Mamusz', 29, 1994, 102)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (86, N'Shoki', 7, 1998, 31)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (87, N'Ety', 14, 2002, 67)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (88, N'Arin', 8, 1995, 64)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (89, N'Benji', 11, 2002, 34)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (90, N'Juno', 1, 2001, 15)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (91, N'Betty', 2, 1993, 43)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (92, N'Mokka', 20, 2001, 48)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (93, N'Liza', 29, 1994, 2)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (94, N'Eliot', 11, 1993, 113)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (95, N'Tili', 26, 1998, 10)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (96, N'Philip', 8, 2005, 112)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (97, N'Szeder', 1, 2003, 44)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (98, N'Murphy', 26, 2000, 113)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (99, N'Pepe', 2, 1994, 61)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (100, N'Pletyka', 28, 1992, 66)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (101, N'Bömbi', 9, 2000, 24)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (102, N'Tajna', 12, 1994, 135)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (103, N'Zizi', 8, 1996, 82)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (104, N'Totó', 19, 2005, 32)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (105, N'Sajó', 28, 1996, 58)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (106, N'Nana', 22, 1993, 20)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (107, N'Dany', 23, 1994, 39)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (108, N'Russel       ', 19, 2005, 83)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (109, N'Gulyás', 16, 2004, 141)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (110, N'Frizbee', 19, 1992, 23)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (111, N'Goldy-Bo', 4, 2002, 15)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (112, N'Pengő', 22, 2002, 20)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (113, N'Rumi', 13, 2001, 23)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (114, N'Füles', 8, 2000, 49)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (115, N'Loki', 15, 1998, 72)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (116, N'Mickey', 28, 1992, 48)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (117, N'Picúr', 22, 1994, 10)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (118, N'Varázs', 28, 1996, 100)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (119, N'Dzsinn', 28, 1994, 137)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (120, N'Angie', 21, 1997, 125)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (121, N'Honey', 2, 1999, 26)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (122, N'Bomber', 10, 2006, 152)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (123, N'Joy', 29, 1998, 78)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (124, N'Gory', 21, 1993, 48)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (125, N'Lina', 14, 1996, 128)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (126, N'Fáni', 18, 2007, 75)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (127, N'Janka', 12, 1992, 147)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (128, N'Boogie', 9, 1994, 87)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (129, N'Ervin', 19, 1998, 151)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (130, N'Cikk-Cakk', 15, 1995, 115)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (131, N'Bizsu', 6, 2001, 125)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (132, N'Index', 19, 2004, 136)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (133, N'Fibó', 15, 1992, 56)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (134, N'Nudli', 28, 1993, 116)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (135, N'Tücsök', 14, 2005, 148)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (136, N'Zserbó', 26, 1999, 96)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (137, N'Amanda', 17, 2002, 144)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (138, N'Szotyola', 1, 2004, 44)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (139, N'Peggy', 7, 1996, 41)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (140, N'Pepito', 6, 2003, 102)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (141, N'Enzi', 15, 1996, 70)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (142, N'Onix', 4, 2007, 26)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (143, N'Figó', 1, 1999, 86)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (144, N'Quelle', 6, 1994, 112)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (145, N'Schumacher', 22, 2002, 126)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (146, N'Angie ', 20, 1995, 75)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (147, N'Rocky', 23, 1994, 150)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (148, N'Fanni', 28, 2000, 141)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (149, N'Kikki', 18, 2005, 142)
GO
INSERT [dbo].[Animal] ([AnimalSK], [Name], [OwnerFK], [BirthYear], [SpeciesFK]) VALUES (150, N'Zsebi', 19, 2000, 120)
GO
SET IDENTITY_INSERT [dbo].[Animal] OFF
GO
SET IDENTITY_INSERT [dbo].[Locality] ON 
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (1, N'Budapest')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (2, N'Kistarcsa')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (3, N'Vasvár')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (4, N'Szeged')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (5, N'Páty')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (6, N'Érd')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (7, N'Kaposvár')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (8, N'Budaörs')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (9, N'Dunakeszi')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (10, N'Győr')
GO
INSERT [dbo].[Locality] ([LocalitySK], [Name]) VALUES (11, N'Révfülöp')
GO
SET IDENTITY_INSERT [dbo].[Locality] OFF
GO
SET IDENTITY_INSERT [dbo].[Owner] ON 
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (1, N'Kotormán Péter', 4)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (2, N'Samu Angéla', 1)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (3, N'Bodoki Blanka', 1)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (4, N'Tkalics Illyés', 7)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (5, N'Petrics Inge', 3)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (6, N'Kiss Georgina', 4)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (7, N'Fintor Viktor', 2)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (8, N'Burai Emese', 4)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (9, N'Szegi András', 1)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (10, N'Bécsek Ferenc', 1)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (11, N'Késmárky Vera', 5)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (12, N'Hencz Kriszta', 6)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (13, N'Torda Károly', 5)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (14, N'Barna Dezső', 7)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (15, N'Farkas Piroska', 2)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (16, N'Fekete Orsolya', 8)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (17, N'Horváth Eszter', 5)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (18, N'Lakatos Georgina', 7)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (19, N'Tamás Stefánia', 10)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (20, N'Kásás Amanda', 9)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (21, N'Fehér Kornél', 11)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (22, N'Szegedi Hajnalka', 11)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (23, N'Oroszlán Roland', 6)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (24, N'Kerepesi Titanilla', 10)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (25, N'Salgó Károly', 10)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (26, N'Katona József', 1)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (27, N'Balassi Kata', 8)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (28, N'Fülep Demeter', 8)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (29, N'Kormos Kriszta', 6)
GO
INSERT [dbo].[Owner] ([OwnerSK], [Name], [LocalityFK]) VALUES (30, N'Katonás Gergő', 4)
GO
SET IDENTITY_INSERT [dbo].[Owner] OFF
GO
SET IDENTITY_INSERT [dbo].[Procedure] ON 
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (1, N'Betegvizsgálat', N'óra', 3800.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (2, N'Szemészeti szakvizsgálat', N'óra', 4500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (3, N'Utókezelés – kontroll', N'óra', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (4, N'Védőoltások - Veszettség', N'db', 3800.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (5, N'Védőoltások - Kombinált (DHPPiL)', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (6, N'Védőoltások - Veszettség és kombinált', N'db', 7900.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (7, N'Védőoltások - Lyme-kór ellen', N'db', 7000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (8, N'Védőoltások - Dermatomycosis ellen', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (9, N'Védőoltások - Szopornyica ellen', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (10, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10 kg alatt, macska', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (11, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10-25 kg ', N'db', 2300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (12, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 25 kg felett', N'db', 2600.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (13, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10 kg alatt, macska', N'db', 2300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (14, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10 kg alatt, macska (gépi)', N'db', 4500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (15, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10-25 kg ', N'db', 3000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (16, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 10-25 kg (gépi)', N'db', 5300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (17, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 25 kg felett', N'db', 4700.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (18, N'Nyugtatás, bódítás beavatkozáshoz - Kutya 25 kg felett (gépi)', N'db', 7400.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (19, N'Külső hallójárat vizsgálata', N'db', 1200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (20, N'Külső hallójárat öblítése', N'db', 1200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (21, N'Toklász eltávolítása', N'db', 3800.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (22, N'Felületi tályog megnyitás kisállat', N'db', 1200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (23, N'Felületi tályog megnyitás ku. macs.', N'db', 2600.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (24, N'Mély tályog megnyitása kisállat', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (25, N'Mély tályog megnyitása kutya macs.', N'db', 3800.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (26, N'Infúzió beadása', N'db', 1600.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (27, N'Körömvágás kisállat', N'db', 850.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (28, N'Körömvágás kutya, macska', N'db', 1200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (29, N'Karom és csőrvágás kis madár', N'db', 1000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (30, N'Karom és csőrvágás közepes madár', N'db', 1500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (31, N'Karom és csőrvágás nagy madár', N'db', 2200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (32, N'Körömvágás és bűzmirigy nyomás', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (33, N'Kötözés, átkötés', N'db', 1000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (34, N'Állatorvosi igazolás kiállítása', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (35, N'Konzultáció, betegvizsg. Nélkül', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (36, N'Bűzmirigy katéteres tisztítása', N'db', 3000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (37, N'Euthanázia, kisállat', N'db', 1300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (38, N'Euthanázia, macska', N'db', 3800.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (39, N'Euthanázia, kutya', N'db', 5200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (40, N'Állatútlevél kiállítása és regisztráció', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (41, N'Mikrochipes jelölés', N'db', 4500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (42, N'Mikrochip regisztráció', N'db', 1200.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (43, N'Injekció beadása', N'db', 500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (44, N'Vénás inekció beadása', N'db', 1300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (45, N'Vérvétel', N'db', 1300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (46, N'Vizeletvizsgálat tesztcsíkkal', N'db', 1300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (47, N'Bélsár, bőrkaparék, vérkenet vizsg.', N'db', 2000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (48, N'Vércukorszint meghatározás', N'db', 1600.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (49, N'Mintaszállítás laborba', N'db', 1300.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (50, N'Szövettani vizsgálat (külső laborban)', N'db', 3700.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (51, N'Ultrahangos vizsgálat', N'db', 2500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (52, N'Röntgen felvétel készítése', N'db', 5000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (53, N'Műtét - Szuka pfészek eltávolítás kisméretű', N'db', 16500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (54, N'Műtét - Szuka pf. és méh eltáv.kisméretű', N'db', 19000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (55, N'Műtét - Szuka pfészek eltávolítás közepes', N'db', 20000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (56, N'Műtét - Szuka pf. és méh eltáv.közepes', N'db', 23000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (57, N'Műtét - Szuka pfészek eltávolítás nagymér.', N'db', 23000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (58, N'Műtét - Szuka pf. és méh eltáv.nagyméretű', N'db', 25000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (59, N'Műtét - Kan ivartalanítás', N'db', 13000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (60, N'Műtét - Köldöksérv megszüntetése', N'db', 11000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (61, N'Műtét - Lágyéksérv megszüntetése (min.)', N'db', 19000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (62, N'Műtét - Hereboréksérv megszüntetése (min.)', N'db', 19000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (63, N'Műtét - Gátsérv megszüntetése (min.)', N'db', 21000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (64, N'Műtét - Bűzmirigy eltávolítás', N'db', 21000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (65, N'Műtét - Kisméretű felületi tumor eltávolítása', N'db', 8000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (66, N'Műtét - Közepes felületi tumor eltávolítása', N'db', 13000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (67, N'Műtét - Nagyméretű bőrbeli tumor eltáv.', N'db', 15500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (68, N'Műtét - Emlőtumor eltávolítása (minimum)', N'db', 15500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (69, N'Műtét - Otthaematoma megszüntetése', N'db', 15500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (70, N'Műtét - Külső hallójárat tágítása, egy oldal', N'db', 15500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (71, N'Műtét - Gyomormetszés', N'db', 26000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (72, N'Műtét - Bélmetszés', N'db', 26000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (73, N'Műtét - Császármetszés', N'db', 27000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (74, N'Műtét - Rejtettheréjűség megszüntetése I.', N'db', 20000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (75, N'Műtét - Rejtettheréjűség megszüntetése II.', N'db', 26000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (76, N'Műtét - Ízületi műtétek', N'db', 26000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (77, N'Műtét - Csontműtétek', N'db', 26000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (78, N'Műtét - Húgyhólyag műtétei', N'db', 23000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (79, N'Műtét - Farokvágás', N'db', 13000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (80, N'Műtét - Fogkőeltávolítás', N'db', 8000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (81, N'Műtét - Foghúzás', N'db', 5000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (82, N'Szemészeti műtét - Szemhéj állásának korrekciója (min)', N'db', 14000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (83, N'Szemészeti műtét - Harmadik szemhéj mirigyének rep.', N'db', 12000.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (84, N'Szemészeti műtét - Könnycsatorna átfecskendezése', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (85, N'Szemészeti műtét - Harmadik szemhéj kürettázs', N'db', 6500.0000)
GO
INSERT [dbo].[Procedure] ([ProcedureSK], [Name], [Unit], [Price]) VALUES (86, N'Szemészeti műtét - Szemgolyó kivétele', N'db', 15500.0000)
GO
SET IDENTITY_INSERT [dbo].[Procedure] OFF
GO
SET IDENTITY_INSERT [dbo].[ProcedureDone] ON 
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (1, 2, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (2, 2, 60)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (3, 3, 16)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (4, 3, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (5, 4, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (6, 4, 70)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (7, 5, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (8, 5, 5)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (9, 5, 64)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (10, 5, 72)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (11, 134, 14)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (12, 7, 62)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (13, 7, 30)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (14, 7, 53)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (15, 8, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (16, 9, 8)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (17, 9, 83)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (18, 10, 42)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (19, 10, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (20, 11, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (21, 11, 84)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (22, 11, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (23, 11, 31)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (24, 11, 74)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (25, 12, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (26, 14, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (27, 14, 6)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (28, 14, 48)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (29, 14, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (30, 15, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (31, 15, 67)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (32, 16, 81)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (33, 17, 60)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (34, 17, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (35, 18, 84)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (36, 18, 45)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (37, 18, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (38, 20, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (39, 20, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (40, 21, 8)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (41, 21, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (42, 21, 31)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (43, 22, 45)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (44, 23, 15)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (45, 23, 22)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (46, 23, 83)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (47, 24, 86)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (48, 24, 27)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (49, 24, 34)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (50, 25, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (51, 25, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (52, 25, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (53, 27, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (54, 27, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (55, 28, 7)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (56, 28, 17)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (57, 29, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (58, 30, 57)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (59, 30, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (60, 30, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (61, 30, 47)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (62, 30, 55)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (63, 30, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (64, 30, 19)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (65, 31, 7)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (66, 31, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (67, 32, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (68, 32, 38)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (69, 32, 29)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (70, 32, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (71, 32, 81)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (72, 33, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (73, 33, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (74, 34, 28)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (75, 34, 83)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (76, 34, 42)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (77, 36, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (78, 36, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (79, 37, 30)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (80, 37, 86)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (81, 37, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (82, 38, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (83, 38, 47)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (84, 39, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (85, 40, 72)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (86, 40, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (87, 40, 46)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (88, 40, 23)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (89, 41, 17)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (90, 41, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (91, 42, 65)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (92, 42, 24)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (93, 42, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (94, 42, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (95, 43, 5)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (96, 43, 25)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (97, 43, 18)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (98, 43, 63)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (99, 43, 37)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (100, 44, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (101, 44, 80)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (102, 45, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (103, 45, 62)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (104, 45, 69)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (105, 45, 19)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (106, 45, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (107, 45, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (108, 46, 27)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (109, 46, 46)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (110, 47, 68)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (111, 47, 25)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (112, 48, 59)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (113, 49, 9)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (114, 49, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (115, 49, 24)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (116, 49, 41)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (117, 49, 83)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (118, 50, 41)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (119, 53, 65)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (120, 53, 61)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (121, 54, 25)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (122, 54, 45)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (123, 55, 80)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (124, 55, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (125, 56, 7)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (126, 57, 32)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (127, 57, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (128, 58, 10)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (129, 58, 32)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (130, 58, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (131, 59, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (132, 59, 60)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (133, 59, 63)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (134, 60, 53)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (135, 60, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (136, 61, 44)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (137, 62, 71)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (138, 62, 40)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (139, 62, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (140, 62, 59)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (141, 63, 38)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (142, 64, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (143, 67, 67)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (144, 68, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (145, 68, 72)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (146, 69, 53)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (147, 70, 28)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (148, 70, 8)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (149, 70, 43)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (150, 70, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (151, 70, 31)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (152, 70, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (153, 70, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (154, 71, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (155, 72, 82)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (156, 72, 17)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (157, 72, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (158, 73, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (159, 73, 33)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (160, 73, 18)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (161, 74, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (162, 75, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (163, 76, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (164, 76, 28)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (165, 76, 74)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (166, 77, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (167, 78, 41)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (168, 78, 33)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (169, 79, 40)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (170, 79, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (171, 79, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (172, 79, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (173, 79, 55)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (174, 80, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (175, 80, 73)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (176, 82, 86)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (177, 82, 65)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (178, 83, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (179, 84, 45)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (180, 84, 80)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (181, 84, 65)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (182, 84, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (183, 86, 6)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (184, 87, 71)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (185, 87, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (186, 88, 18)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (187, 89, 55)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (188, 89, 31)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (189, 90, 38)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (190, 91, 23)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (191, 92, 30)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (192, 92, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (193, 92, 62)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (194, 93, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (195, 93, 64)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (196, 94, 36)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (197, 94, 40)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (198, 95, 19)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (199, 97, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (200, 97, 59)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (201, 98, 20)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (202, 98, 57)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (203, 98, 47)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (204, 99, 18)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (205, 99, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (206, 100, 81)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (207, 100, 44)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (208, 100, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (209, 102, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (210, 102, 74)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (211, 106, 22)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (212, 107, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (213, 107, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (214, 109, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (215, 111, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (216, 111, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (217, 111, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (218, 112, 34)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (219, 112, 86)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (220, 113, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (221, 113, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (222, 114, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (223, 114, 11)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (224, 114, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (225, 115, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (226, 117, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (227, 118, 75)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (228, 118, 15)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (229, 118, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (230, 118, 82)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (231, 118, 37)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (232, 119, 78)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (233, 119, 19)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (234, 119, 57)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (235, 120, 9)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (236, 120, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (237, 121, 65)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (238, 122, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (239, 122, 86)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (240, 122, 67)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (241, 123, 5)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (242, 124, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (243, 124, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (244, 124, 13)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (245, 125, 10)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (246, 125, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (247, 125, 53)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (248, 126, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (249, 126, 54)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (250, 126, 47)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (251, 127, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (252, 129, 11)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (253, 129, 24)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (254, 129, 44)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (255, 130, 4)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (256, 132, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (257, 132, 72)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (258, 132, 24)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (259, 132, 2)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (260, 133, 43)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (261, 134, 32)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (262, 135, 79)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (263, 135, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (264, 135, 84)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (265, 135, 43)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (266, 136, 13)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (267, 136, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (268, 136, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (269, 137, 56)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (270, 137, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (271, 137, 23)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (272, 137, 20)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (273, 138, 57)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (274, 139, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (275, 140, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (276, 140, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (277, 140, 5)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (278, 140, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (279, 141, 82)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (280, 142, 23)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (281, 143, 70)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (282, 144, 40)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (283, 144, 42)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (284, 144, 45)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (285, 145, 58)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (286, 145, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (287, 145, 73)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (288, 146, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (289, 146, 46)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (290, 147, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (291, 148, 76)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (292, 148, 16)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (293, 149, 83)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (294, 149, 17)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (295, 150, 31)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (296, 152, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (297, 152, 38)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (298, 153, 33)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (299, 153, 20)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (300, 153, 5)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (301, 154, 3)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (302, 154, 70)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (303, 154, 30)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (304, 155, 48)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (305, 156, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (306, 158, 85)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (307, 159, 21)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (308, 159, 12)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (309, 159, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (310, 160, 29)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (311, 160, 84)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (312, 160, 36)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (313, 161, 70)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (314, 161, 71)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (315, 162, 60)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (316, 163, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (317, 163, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (318, 164, 74)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (319, 164, 10)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (320, 164, 84)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (321, 164, 15)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (322, 165, 51)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (323, 165, 21)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (324, 165, 52)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (325, 165, 30)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (326, 165, 63)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (327, 166, 68)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (328, 166, 62)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (329, 167, 73)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (330, 168, 50)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (331, 168, 66)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (332, 170, 82)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (333, 171, 77)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (334, 171, 39)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (335, 172, 7)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (336, 172, 38)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (337, 172, 23)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (338, 174, 16)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (339, 174, 32)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (340, 175, 22)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (341, 175, 35)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (342, 176, 29)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (343, 177, 68)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (344, 177, 57)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (345, 178, 49)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (346, 179, 68)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (347, 179, 1)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (348, 180, 70)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (349, 180, 32)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (350, 180, 80)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (351, 182, 62)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (352, 182, 36)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (353, 182, 19)
GO
INSERT [dbo].[ProcedureDone] ([ProcedureDoneSK], [TreatmentFK], [ProcedureFK]) VALUES (354, 182, 73)
GO
SET IDENTITY_INSERT [dbo].[ProcedureDone] OFF
GO
SET IDENTITY_INSERT [dbo].[Species] ON 
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (1, N'Afgán agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (2, N'Angol agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (3, N'Arab agár (sloughi)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (4, N'Azawakh')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (5, N'Ír farkasagár (ír farkaskutya)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (6, N'Lengyel agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (7, N'Magyar agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (8, N'Olasz agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (9, N'Orosz agár (borzoi)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (10, N'Perzsa agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (11, N'Skót szarvasagár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (12, N'Whippet')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (13, N'Angol rókakopó')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (14, N'Basset hound')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (15, N'Beagle')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (16, N'Erdélyi kopó')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (17, N'Olasz kopó')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (18, N'Vendée-i griffon basset')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (19, N'Vidravadász kopó')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (20, N'Retrieverek ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (21, N'Chesapeake-öböli retriever')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (22, N'Göndör szőrű retriever')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (23, N'Sima szőrű retriever')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (24, N'Golden retriever')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (25, N'Labrador retriever')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (26, N'Amerikai cocker spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (27, N'Angol springer spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (28, N'Bretagne-i spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (29, N'Clumber spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (30, N'Cocker spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (31, N'Field spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (32, N'Ír vízi spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (33, N'Sussexi spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (34, N'Tibeti spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (35, N'Walesi springer spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (36, N'Airedale terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (37, N'Amerikai Staffordshire terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (38, N'Ausztrál terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (39, N'Bedlington terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (40, N'Border terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (41, N'Boston terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (42, N'Bull terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (43, N'Cairn terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (44, N'Dandie dinmont')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (45, N'Foxterrier (foxi)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (46, N'Glen of imaal terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (47, N'Ír terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (48, N'Jagdterrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (49, N'Kerry blue terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (50, N'Lakeland terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (51, N'Norfolk terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (52, N'Norwich terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (53, N'Nyugat-felföldi fehér terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (54, N'Manchester terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (55, N'Puha szőrű wheaten terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (56, N'Skót terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (57, N'Sealyham terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (58, N'Skye terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (59, N'Tibeti terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (60, N'Welsh terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (61, N'Angol vizslák ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (62, N'Pointer')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (63, N'Angol szetter')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (64, N'Gordon szetter')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (65, N'Ír vörös-fehér szetter')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (66, N'Ír szetter')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (67, N'Kontinentális vizslák ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (68, N'Rövidszőrű magyar vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (69, N'Nagy münsterlandi vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (70, N'Olasz vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (71, N'Rövidszőrű német vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (72, N'Szálkás szőrű német vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (73, N'Weimari vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (74, N'Drótszőrű német vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (75, N'Hosszuszőrű német vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (76, N'Drótszőrű magyar vizsla')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (77, N'Uszkár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (78, N'Tacskó')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (79, N'Terelő és kísérőkutyák ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (80, N'Beauceron (francia rövid szőrű juhászkutya)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (81, N'Belga juhászkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (82, N'Berni pásztorkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (83, N'Bobtail (Óangol juhászkutya)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (84, N'Border collie')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (85, N'Briard')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (86, N'Dalmata')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (87, N'Flandriai pásztorkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (88, N'Izlandi juhászkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (89, N'Katalán pásztorkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (90, N'Maremmai juhászkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (91, N'Mudi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (92, N'Német juhászkutya (németjuhász)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (93, N'Norvég buhund')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (94, N'Pireneusi hegyikutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (95, N'Puli')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (96, N'Pumi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (97, N'Schnauzer')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (98, N'Shetlandi juhászkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (99, N'Skót juhászkutya (collie)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (100, N'Svéd vallhund')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (101, N'Walesi corgi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (102, N'Boxer')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (103, N'Csau-csau')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (104, N'Dobermann')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (105, N'Hovawart')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (106, N'Komondor')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (107, N'Kuvasz')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (108, N'Leonbergi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (109, N'Lhasa apso')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (110, N'Schipperke')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (111, N'Bernáthegyi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (112, N'Landseer')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (113, N'Újfundlandi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (114, N'Harci kutyák ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (115, N'Masztiffok ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (116, N'Nápolyi masztiff')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (117, N'Bullmasztiff')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (118, N'Francia bulldog')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (119, N'Bullterrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (120, N'Staffordshire bullterrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (121, N'Dogfélék ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (122, N'Dán dog')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (123, N'Rottweiler')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (124, N'Spiccek ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (125, N'Ainu')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (126, N'Alaszkai malamut')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (127, N'Finn spicc')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (128, N'Japán akita')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (129, N'Japán spicc')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (130, N'Keeshond')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (131, N'Norvég spicc')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (132, N'Szamojéd')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (133, N'Szánhúzó kutyák (husky) ')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (134, N'Szibériai husky')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (135, N'Bichon frisé')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (136, N'Brüsszeli griffon')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (137, N'Cavalier King Charles-spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (138, N'Csivava')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (139, N'Japán csin')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (140, N'King Charles-spániel')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (141, N'Kis angol terrier')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (142, N'Kis oroszlánkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (143, N'Kínai bóbitás kutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (144, N'Majompincsi')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (145, N'Máltai selyemkutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (146, N'Mopsz')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (147, N'Olasz agár')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (148, N'Papillon')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (149, N'Pekingi palotakutya')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (150, N'Pomerániai törpespicc')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (151, N'Si-cu')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (152, N'Törpe pincser')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (153, N'West Highland White Terrier (Westie)')
GO
INSERT [dbo].[Species] ([SpeciesSK], [Name]) VALUES (154, N'Yorkshire terrier')
GO
SET IDENTITY_INSERT [dbo].[Species] OFF
GO
SET IDENTITY_INSERT [dbo].[Treatment] ON 
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (1, 78, CAST(N'2006-01-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (2, 71, CAST(N'2006-01-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (3, 52, CAST(N'2006-01-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (4, 11, CAST(N'2006-01-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (5, 69, CAST(N'2006-01-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (6, 71, CAST(N'2006-01-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (7, 132, CAST(N'2006-01-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (8, 61, CAST(N'2006-01-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (9, 42, CAST(N'2006-01-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (10, 117, CAST(N'2006-01-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (11, 97, CAST(N'2006-01-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (12, 136, CAST(N'2006-02-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (13, 145, CAST(N'2006-02-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (14, 72, CAST(N'2006-02-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (15, 98, CAST(N'2006-02-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (16, 5, CAST(N'2006-02-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (17, 118, CAST(N'2006-02-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (18, 142, CAST(N'2006-02-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (19, 1, CAST(N'2006-02-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (20, 66, CAST(N'2006-02-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (21, 6, CAST(N'2006-02-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (22, 70, CAST(N'2006-03-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (23, 84, CAST(N'2006-03-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (24, 122, CAST(N'2006-03-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (25, 83, CAST(N'2006-03-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (26, 148, CAST(N'2006-03-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (27, 142, CAST(N'2006-03-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (28, 34, CAST(N'2006-03-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (29, 97, CAST(N'2006-04-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (30, 105, CAST(N'2006-04-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (31, 137, CAST(N'2006-04-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (32, 143, CAST(N'2006-04-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (33, 17, CAST(N'2006-04-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (34, 46, CAST(N'2006-04-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (35, 83, CAST(N'2006-04-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (36, 10, CAST(N'2006-04-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (37, 104, CAST(N'2006-04-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (38, 84, CAST(N'2006-04-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (39, 46, CAST(N'2006-04-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (40, 132, CAST(N'2006-05-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (41, 67, CAST(N'2006-05-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (42, 101, CAST(N'2006-05-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (43, 99, CAST(N'2006-05-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (44, 45, CAST(N'2006-05-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (45, 77, CAST(N'2006-05-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (46, 27, CAST(N'2006-05-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (47, 77, CAST(N'2006-05-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (48, 37, CAST(N'2006-06-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (49, 24, CAST(N'2006-06-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (50, 44, CAST(N'2006-06-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (51, 121, CAST(N'2006-06-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (52, 148, CAST(N'2006-06-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (53, 19, CAST(N'2006-06-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (54, 70, CAST(N'2006-06-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (55, 37, CAST(N'2006-06-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (56, 18, CAST(N'2006-06-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (57, 50, CAST(N'2006-06-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (58, 90, CAST(N'2006-06-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (59, 78, CAST(N'2006-06-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (60, 124, CAST(N'2006-06-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (61, 143, CAST(N'2006-07-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (62, 20, CAST(N'2006-07-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (63, 26, CAST(N'2006-07-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (64, 100, CAST(N'2006-07-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (65, 139, CAST(N'2006-07-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (66, 127, CAST(N'2006-07-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (67, 106, CAST(N'2006-07-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (68, 53, CAST(N'2006-07-30' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (69, 17, CAST(N'2006-07-30' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (70, 87, CAST(N'2006-08-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (71, 20, CAST(N'2006-08-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (72, 28, CAST(N'2006-08-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (73, 105, CAST(N'2006-08-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (74, 114, CAST(N'2006-08-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (75, 116, CAST(N'2006-08-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (76, 10, CAST(N'2006-08-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (77, 29, CAST(N'2006-08-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (78, 138, CAST(N'2006-08-30' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (79, 128, CAST(N'2006-09-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (80, 129, CAST(N'2006-09-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (81, 55, CAST(N'2006-09-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (82, 18, CAST(N'2006-09-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (83, 22, CAST(N'2006-09-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (84, 150, CAST(N'2006-09-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (85, 77, CAST(N'2006-09-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (86, 17, CAST(N'2006-09-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (87, 124, CAST(N'2006-09-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (88, 106, CAST(N'2006-09-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (89, 62, CAST(N'2006-10-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (90, 55, CAST(N'2006-10-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (91, 58, CAST(N'2006-10-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (92, 66, CAST(N'2006-10-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (93, 136, CAST(N'2006-10-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (94, 8, CAST(N'2006-10-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (95, 122, CAST(N'2006-10-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (96, 128, CAST(N'2006-11-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (97, 40, CAST(N'2006-11-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (98, 103, CAST(N'2006-11-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (99, 8, CAST(N'2006-12-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (100, 96, CAST(N'2006-12-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (101, 121, CAST(N'2006-12-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (102, 143, CAST(N'2006-12-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (103, 13, CAST(N'2006-12-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (104, 68, CAST(N'2006-12-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (105, 79, CAST(N'2006-12-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (106, 35, CAST(N'2006-12-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (107, 85, CAST(N'2006-12-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (108, 146, CAST(N'2006-12-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (109, 77, CAST(N'2006-12-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (110, 46, CAST(N'2006-12-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (111, 71, CAST(N'2006-12-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (112, 149, CAST(N'2007-01-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (113, 9, CAST(N'2007-01-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (114, 57, CAST(N'2007-01-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (115, 136, CAST(N'2007-01-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (116, 101, CAST(N'2007-01-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (117, 7, CAST(N'2007-01-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (118, 74, CAST(N'2007-01-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (119, 125, CAST(N'2007-02-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (120, 101, CAST(N'2007-02-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (121, 49, CAST(N'2007-02-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (122, 97, CAST(N'2007-02-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (123, 57, CAST(N'2007-02-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (124, 20, CAST(N'2007-02-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (125, 32, CAST(N'2007-02-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (126, 34, CAST(N'2007-02-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (127, 103, CAST(N'2007-02-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (128, 86, CAST(N'2007-02-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (129, 139, CAST(N'2007-02-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (130, 26, CAST(N'2007-02-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (131, 16, CAST(N'2007-02-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (132, 142, CAST(N'2007-03-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (133, 77, CAST(N'2007-03-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (134, 70, CAST(N'2007-03-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (135, 33, CAST(N'2007-03-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (136, 62, CAST(N'2007-03-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (137, 60, CAST(N'2007-03-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (138, 56, CAST(N'2007-03-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (139, 145, CAST(N'2007-03-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (140, 110, CAST(N'2007-04-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (141, 39, CAST(N'2007-04-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (142, 36, CAST(N'2007-04-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (143, 29, CAST(N'2007-04-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (144, 8, CAST(N'2007-04-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (145, 138, CAST(N'2007-04-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (146, 89, CAST(N'2007-04-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (147, 41, CAST(N'2007-04-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (148, 128, CAST(N'2007-04-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (149, 22, CAST(N'2007-04-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (150, 23, CAST(N'2007-04-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (151, 55, CAST(N'2007-04-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (152, 78, CAST(N'2007-04-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (153, 125, CAST(N'2007-04-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (154, 55, CAST(N'2007-04-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (155, 11, CAST(N'2007-04-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (156, 150, CAST(N'2007-04-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (157, 111, CAST(N'2007-05-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (158, 117, CAST(N'2007-05-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (159, 83, CAST(N'2007-05-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (160, 74, CAST(N'2007-05-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (161, 141, CAST(N'2007-05-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (162, 59, CAST(N'2007-05-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (163, 2, CAST(N'2007-05-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (164, 97, CAST(N'2007-05-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (165, 123, CAST(N'2007-05-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (166, 59, CAST(N'2007-05-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (167, 41, CAST(N'2007-05-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (168, 137, CAST(N'2007-06-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (169, 83, CAST(N'2007-06-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (170, 121, CAST(N'2007-06-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (171, 112, CAST(N'2007-06-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (172, 146, CAST(N'2007-06-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (173, 59, CAST(N'2007-06-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (174, 71, CAST(N'2007-07-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (175, 138, CAST(N'2007-07-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (176, 113, CAST(N'2007-07-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (177, 101, CAST(N'2007-07-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (178, 124, CAST(N'2007-07-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (179, 122, CAST(N'2007-07-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (180, 45, CAST(N'2007-07-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (181, 58, CAST(N'2007-07-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (182, 6, CAST(N'2007-07-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (183, 121, CAST(N'2007-07-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (184, 37, CAST(N'2007-07-30' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (185, 13, CAST(N'2007-08-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (186, 117, CAST(N'2007-08-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (187, 94, CAST(N'2007-08-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (188, 110, CAST(N'2007-08-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (189, 103, CAST(N'2007-08-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (190, 113, CAST(N'2007-08-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (191, 20, CAST(N'2007-08-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (192, 4, CAST(N'2007-09-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (193, 83, CAST(N'2007-09-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (194, 10, CAST(N'2007-09-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (195, 5, CAST(N'2007-09-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (196, 113, CAST(N'2007-09-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (197, 77, CAST(N'2007-09-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (198, 92, CAST(N'2007-09-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (199, 99, CAST(N'2007-09-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (200, 21, CAST(N'2007-09-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (201, 49, CAST(N'2007-09-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (202, 119, CAST(N'2007-09-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (203, 17, CAST(N'2007-09-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (204, 61, CAST(N'2007-10-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (205, 92, CAST(N'2007-10-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (206, 77, CAST(N'2007-10-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (207, 88, CAST(N'2007-10-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (208, 21, CAST(N'2007-10-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (209, 61, CAST(N'2007-10-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (210, 120, CAST(N'2007-10-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (211, 12, CAST(N'2007-10-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (212, 57, CAST(N'2007-10-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (213, 149, CAST(N'2007-10-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (214, 65, CAST(N'2007-11-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (215, 98, CAST(N'2007-11-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (216, 10, CAST(N'2007-11-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (217, 143, CAST(N'2007-11-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (218, 132, CAST(N'2007-11-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (219, 94, CAST(N'2007-11-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (220, 28, CAST(N'2007-12-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (221, 98, CAST(N'2007-12-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (222, 104, CAST(N'2007-12-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (223, 141, CAST(N'2007-12-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (224, 44, CAST(N'2007-12-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (225, 51, CAST(N'2007-12-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (226, 140, CAST(N'2007-12-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (227, 38, CAST(N'2007-12-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (228, 69, CAST(N'2008-01-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (229, 112, CAST(N'2008-01-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (230, 14, CAST(N'2008-01-03' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (231, 40, CAST(N'2008-01-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (232, 143, CAST(N'2008-01-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (233, 2, CAST(N'2008-01-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (234, 71, CAST(N'2008-02-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (235, 142, CAST(N'2008-02-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (236, 120, CAST(N'2008-02-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (237, 42, CAST(N'2008-02-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (238, 35, CAST(N'2008-02-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (239, 95, CAST(N'2008-02-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (240, 139, CAST(N'2008-02-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (241, 135, CAST(N'2008-02-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (242, 88, CAST(N'2008-02-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (243, 3, CAST(N'2008-03-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (244, 45, CAST(N'2008-03-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (245, 51, CAST(N'2008-03-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (246, 20, CAST(N'2008-03-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (247, 123, CAST(N'2008-03-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (248, 69, CAST(N'2008-03-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (249, 132, CAST(N'2008-03-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (250, 48, CAST(N'2008-03-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (251, 94, CAST(N'2008-03-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (252, 136, CAST(N'2008-03-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (253, 84, CAST(N'2008-03-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (254, 38, CAST(N'2008-04-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (255, 50, CAST(N'2008-04-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (256, 49, CAST(N'2008-04-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (257, 123, CAST(N'2008-04-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (258, 32, CAST(N'2008-04-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (259, 145, CAST(N'2008-04-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (260, 29, CAST(N'2008-04-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (261, 88, CAST(N'2008-04-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (262, 121, CAST(N'2008-04-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (263, 6, CAST(N'2008-04-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (264, 147, CAST(N'2008-04-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (265, 21, CAST(N'2008-05-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (266, 129, CAST(N'2008-05-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (267, 46, CAST(N'2008-05-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (268, 99, CAST(N'2008-05-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (269, 33, CAST(N'2008-05-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (270, 120, CAST(N'2008-05-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (271, 36, CAST(N'2008-05-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (272, 13, CAST(N'2008-05-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (273, 96, CAST(N'2008-05-18' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (274, 39, CAST(N'2008-05-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (275, 15, CAST(N'2008-05-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (276, 85, CAST(N'2008-05-21' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (277, 57, CAST(N'2008-05-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (278, 43, CAST(N'2008-05-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (279, 111, CAST(N'2008-05-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (280, 25, CAST(N'2008-06-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (281, 143, CAST(N'2008-06-04' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (282, 19, CAST(N'2008-06-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (283, 39, CAST(N'2008-06-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (284, 147, CAST(N'2008-06-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (285, 13, CAST(N'2008-06-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (286, 146, CAST(N'2008-06-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (287, 56, CAST(N'2008-06-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (288, 52, CAST(N'2008-06-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (289, 112, CAST(N'2008-06-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (290, 62, CAST(N'2008-06-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (291, 59, CAST(N'2008-07-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (292, 149, CAST(N'2008-07-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (293, 90, CAST(N'2008-07-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (294, 65, CAST(N'2008-07-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (295, 34, CAST(N'2008-07-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (296, 141, CAST(N'2008-07-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (297, 139, CAST(N'2008-07-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (298, 60, CAST(N'2008-07-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (299, 72, CAST(N'2008-07-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (300, 14, CAST(N'2008-07-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (301, 42, CAST(N'2008-07-30' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (302, 84, CAST(N'2008-08-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (303, 133, CAST(N'2008-08-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (304, 46, CAST(N'2008-08-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (305, 98, CAST(N'2008-08-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (306, 95, CAST(N'2008-09-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (307, 63, CAST(N'2008-09-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (308, 15, CAST(N'2008-09-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (309, 123, CAST(N'2008-09-07' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (310, 111, CAST(N'2008-09-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (311, 134, CAST(N'2008-09-09' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (312, 138, CAST(N'2008-09-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (313, 11, CAST(N'2008-09-12' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (314, 32, CAST(N'2008-09-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (315, 1, CAST(N'2008-09-15' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (316, 114, CAST(N'2008-09-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (317, 45, CAST(N'2008-09-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (318, 26, CAST(N'2008-09-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (319, 11, CAST(N'2008-09-27' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (320, 129, CAST(N'2008-09-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (321, 148, CAST(N'2008-10-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (322, 143, CAST(N'2008-10-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (323, 142, CAST(N'2008-10-08' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (324, 65, CAST(N'2008-10-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (325, 100, CAST(N'2008-10-14' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (326, 140, CAST(N'2008-10-17' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (327, 13, CAST(N'2008-10-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (328, 101, CAST(N'2008-10-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (329, 75, CAST(N'2008-10-26' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (330, 145, CAST(N'2008-10-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (331, 66, CAST(N'2008-10-29' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (332, 55, CAST(N'2008-11-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (333, 110, CAST(N'2008-11-02' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (334, 55, CAST(N'2008-11-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (335, 56, CAST(N'2008-11-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (336, 123, CAST(N'2008-11-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (337, 45, CAST(N'2008-11-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (338, 77, CAST(N'2008-11-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (339, 19, CAST(N'2008-11-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (340, 6, CAST(N'2008-11-24' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (341, 56, CAST(N'2008-12-05' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (342, 54, CAST(N'2008-12-06' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (343, 148, CAST(N'2008-12-10' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (344, 136, CAST(N'2008-12-11' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (345, 117, CAST(N'2008-12-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (346, 133, CAST(N'2008-12-13' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (347, 142, CAST(N'2008-12-16' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (348, 56, CAST(N'2008-12-19' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (349, 41, CAST(N'2008-12-20' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (350, 79, CAST(N'2008-12-22' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (351, 49, CAST(N'2008-12-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (352, 73, CAST(N'2008-12-23' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (353, 131, CAST(N'2008-12-25' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (354, 53, CAST(N'2008-12-28' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (355, 2, CAST(N'2008-12-25' AS Date), 1)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (356, 5, CAST(N'2009-01-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (357, 1, CAST(N'2022-01-01' AS Date), 1)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (358, 1, CAST(N'2022-01-01' AS Date), 1)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (359, 2, CAST(N'2022-01-01' AS Date), 0)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (360, 9, CAST(N'2022-01-01' AS Date), 1)
GO
INSERT [dbo].[Treatment] ([TreatmentSK], [AnimalFK], [Date], [Paid]) VALUES (361, 11, CAST(N'2022-01-01' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[Treatment] OFF
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_ToOwner] FOREIGN KEY([OwnerFK])
REFERENCES [dbo].[Owner] ([OwnerSK])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_ToOwner]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_ToSpecies] FOREIGN KEY([SpeciesFK])
REFERENCES [dbo].[Species] ([SpeciesSK])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_ToSpecies]
GO
ALTER TABLE [dbo].[Owner]  WITH CHECK ADD  CONSTRAINT [FK_Owner_ToLocality] FOREIGN KEY([LocalityFK])
REFERENCES [dbo].[Locality] ([LocalitySK])
GO
ALTER TABLE [dbo].[Owner] CHECK CONSTRAINT [FK_Owner_ToLocality]
GO
ALTER TABLE [dbo].[ProcedureDone]  WITH CHECK ADD  CONSTRAINT [FK_ProcedureDone_ToProcedure] FOREIGN KEY([ProcedureFK])
REFERENCES [dbo].[Procedure] ([ProcedureSK])
GO
ALTER TABLE [dbo].[ProcedureDone] CHECK CONSTRAINT [FK_ProcedureDone_ToProcedure]
GO
ALTER TABLE [dbo].[ProcedureDone]  WITH CHECK ADD  CONSTRAINT [FK_ProcedureDone_ToTreatment] FOREIGN KEY([TreatmentFK])
REFERENCES [dbo].[Treatment] ([TreatmentSK])
GO
ALTER TABLE [dbo].[ProcedureDone] CHECK CONSTRAINT [FK_ProcedureDone_ToTreatment]
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD  CONSTRAINT [FK_Treatment_ToAnimal] FOREIGN KEY([AnimalFK])
REFERENCES [dbo].[Animal] ([AnimalSK])
GO
ALTER TABLE [dbo].[Treatment] CHECK CONSTRAINT [FK_Treatment_ToAnimal]
GO
