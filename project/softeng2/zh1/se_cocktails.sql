/****** Object:  Table [dbo].[Cocktail]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cocktail](
	[CocktailSK] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TypeFK] [tinyint] NULL,
	[Price] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CocktailSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialID] [smallint] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[TypeFK] [tinyint] NULL,
	[UnitFK] [tinyint] NULL,
	[Price] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MaterialTypeID] [tinyint] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaterialTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[RecipeSK] [int] IDENTITY(1,1) NOT NULL,
	[CocktailFK] [int] NULL,
	[MaterialFK] [smallint] NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecipeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [tinyint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 11/5/2022 11:54:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [tinyint] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cocktail] ON 
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (1, N'Alexander', 1, 760.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (2, N'Alexandra koktél', 4, 800.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (3, N'Americano', 1, 690.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (4, N'Angel''s face', 4, 780.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (5, N'Aphotheke', 9, 820.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (6, N'B and B', 1, 590.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (7, N'Between the Sheets', 1, 660.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (8, N'Black Russian', 3, 700.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (9, N'Bloody Mary', 3, 666.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (10, N'Brandy Flip', 1, 820.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (11, N'Breakfast Egg-Nog', 1, 890.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (12, N'Bronx', 4, 890.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (13, N'Bull''s Eye', 1, 780.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (14, N'Pezsgős koktél', 6, 490.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (15, N'Créme de Menthe Frappé', 7, 700.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (16, N'Cuba Libre', 5, 890.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (17, N'Daiquiri', 5, 890.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (18, N'Mojito', 1, 860.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (19, N'Mojito', 1, 860.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (20, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (21, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (22, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (23, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (24, N'', 16, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (25, N'', 16, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (26, N'Lajos', 7, 450.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (27, N'Forralt bor', 16, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (28, N'Forralt bor', 1, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (29, N'Forralt bor', 1, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (30, N'Forralt bor', 14, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (31, N'Coca Cola', 14, 450.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (32, N'Sangria', 15, 980.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (33, N'Forralt bor', 17, 590.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (34, N'My', 6, 876.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (35, N'Test', 2, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (36, N'System.Windows.Forms.TextBox, Text: Ütős', 11, 990.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (37, N'a', NULL, 2.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (38, N'a', NULL, 2.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (39, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (40, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (41, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (42, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (43, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (44, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (45, N'324', 1, 42.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (46, N'System.Windows.Forms.TextBox, Text: Ütős1', 11, 990.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (47, N'NewCocktail', 7, 100.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (48, N'Ütős2', 11, 990.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (49, N'MyCocktail', 8, 999.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (50, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (51, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (52, N'', 1, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (53, N'ital', 1, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (54, N'ital', 1, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (55, N'ital', 13, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (56, N'ital', 13, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (57, N'ital', 13, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (58, N'ital', 13, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (59, N'ads', 11, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (60, N'ads', 14, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (61, N'ital', 1, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (62, N'ital', 9, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (63, N'ital', 9, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (64, N'ital', 9, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (65, N'ital', 1, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (66, N'ital', 10, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (67, N'ital', 12, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (68, N'koktél', NULL, 700.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (69, N'koktél', NULL, 700.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (70, N'ital', 14, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (71, N'ital', 14, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (72, N'ital', 14, 1234.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (73, N'kola', 15, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (74, N'kola', 15, 500.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (75, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (76, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (77, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (78, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (79, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (80, N'Almásfahéjas', NULL, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (81, N'Almásfahéjas', 17, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (82, N'Hagymás', 17, 50.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (84, N'valami', 8, 0.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (85, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (86, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (87, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (88, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (89, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (90, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (91, N'jnas', NULL, 21143.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (92, N'Test1', 11, 1000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (93, N'Almásfahéjas', 8, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (94, N'jj', 14, 2.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (95, N'Almásfahéjas', 5, 3000.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (96, N'MyCocktail', 10, 999.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (97, N'MyCocktail', 10, 999.0000)
GO
INSERT [dbo].[Cocktail] ([CocktailSK], [Name], [TypeFK], [Price]) VALUES (98, N'Almásfahéjas', 2, 3000.0000)
GO
SET IDENTITY_INSERT [dbo].[Cocktail] OFF
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (1, N'Konyak', 1, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (2, N'Armanac', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (3, N'Borpárlat', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (4, N'Brandy', 1, 1, 55.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (5, N'Metaxa', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (6, N'Pisco', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (7, N'Grappa', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (8, N'Marc', 1, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (9, N'Aquqvit', 2, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (10, N'Genever', 2, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (11, N'Gabona', 2, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (12, N'Klarer', 2, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (13, N'Whisky', 2, 1, 48.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (14, N'Vodka', 2, 1, 35.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (15, N'Eredeti gyümölcspálinka', 3, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (16, N'Gyömölcsszesz', 3, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (17, N'Rum', 4, 1, 60.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (18, N'Cachaca', 4, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (19, N'Tequila', 4, 1, 60.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (20, N'Mezcal', 4, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (21, N'Arrak', 4, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (22, N'Szaké', 4, 1, 55.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (23, N'Anisée', 4, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (24, N'Encián', 4, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (25, N'Angostura', 5, 1, 67.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (26, N'Orange-Bitter', 5, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (27, N'Tropical Bitter', 5, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (28, N'Boonekamp', 5, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (29, N'Campari', 5, 1, 45.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (30, N'Aperol', 5, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (31, N'Cynar', 5, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (32, N'Amoretto', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (33, N'Amaro Avena', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (34, N'Anisette', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (35, N'Barackbrandy', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (36, N'Bénédictine', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (37, N'B & B', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (38, N'Cassis', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (39, N'Chartteuse', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (40, N'Cherry Brandy', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (41, N'Cointerau', 14, 1, 75.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (42, N'Curacau', 14, 1, 62.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (43, N'Danzigi aranyvíz', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (44, N'Drambuie', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (45, N'Tojáslikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (46, N'Escorial', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (47, N'Frangelico', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (48, N'Grand Mariner', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (49, N'Galliano', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (50, N'Irish Mist', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (51, N'Jägermeister', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (52, N'Kávélikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (53, N'Kakaólikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (54, N'Cseresznyelikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (55, N'Kókuszlikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (56, N'Kontiki', 14, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (57, N'Maracujalikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (58, N'Maraschino', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (59, N'Peach Brandy', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (60, N'Parfait Amour', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (61, N'Borsentalikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (62, N'Pisang Ambon', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (63, N'Sambuca', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (64, N'Svéd puncs', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (65, N'Southern Comfort', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (66, N'Strega', 14, 1, 0.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (67, N'Citromlikőr', 14, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (68, N'Francia Pezsgő', 6, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (69, N'Crémant', 6, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (70, N'Pezsgő', 6, 1, 12.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (71, N'Spumante', 6, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (72, N'Cava', 6, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (73, N'Krími Pezsgő', 6, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (74, N'Vermut', 7, 1, 50.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (75, N'Sherry', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (76, N'Madira', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (77, N'Portói bor', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (78, N'Malaga', 7, 1, 25.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (79, N'Marsala', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (80, N'Samos', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (81, N'Tokaji', 7, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (82, N'Cukorszirup', 8, 1, 8.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (83, N'Grenadine', 8, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (84, N'Mandulaszirup', 8, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (85, N'Tiszta természetes gyümölcslé', 9, 1, 6.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (86, N'Gyümölcsnektár', 9, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (87, N'Gyümölcsléital', 9, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (88, N'Bitter lemon', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (89, N'Bitter Orange', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (90, N'Bitter Graepfruit', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (91, N'Ginger-ale', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (92, N'Sanbitter', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (93, N'Tonic', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (94, N'Ásványvíz', 10, 1, 40.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (95, N'Szóda', 10, 1, 1.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (96, N'Cola', 10, 1, 2.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (97, N'Tojás', 11, 5, 25.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (98, N'Tej', 11, 1, 1.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (99, N'Tejszín', 11, 1, 4.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (100, N'Jégkocka', 13, 5, 12.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (101, N'Tört jég', 13, 1, 15.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (102, N'Durvén tört jég', 13, 1, 20.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (103, N'Reszelt jég', 13, 1, 20.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (104, N'Créme de Cacao', 14, 1, 60.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (105, N'Gin', 4, 1, 80.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (106, N'Calvados', 1, 1, 75.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (107, N'Barackpálinka', 3, 1, 55.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (108, N'Fernet Branca', 2, 1, 80.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (109, N'Créme de Menthe', 14, 1, 65.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (110, N'Citromlé', 9, 1, 2.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (111, N'Kávélikőr', 14, 1, 50.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (112, N'Só', 12, 4, 1.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (113, N'Bors', 12, 4, 1.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (114, N'Tabasaco', 12, 1, 3.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (115, N'Zellersó', 12, 4, 2.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (116, N'Worchester-szósz', 12, 1, 4.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (117, N'Paradicsomlé', 9, 1, 10.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (118, N'Tojásságája', 11, 5, 25.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (119, N'Tojásfehérje', 11, 5, 25.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (120, N'Vermut rosso', 7, 1, 22.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (121, N'Vermut (száraz)', 7, 1, 22.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (122, N'Narancslé', 9, 1, 3.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (123, N'Kockacukor', 12, 5, 1.0000)
GO
INSERT [dbo].[Material] ([MaterialID], [Name], [TypeFK], [UnitFK], [Price]) VALUES (124, N'Metaxa', 1, 1, 0.0000)
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (1, N'Borpárlat')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (2, N'Gabonapárlat')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (3, N'Gyümölcspárlat')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (4, N'Növény- és gyökérpárlat')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (5, N'Bitters')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (6, N'Habzóbor')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (7, N'Csemege bor')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (8, N'Szirup')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (9, N'Gyümölcslé')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (10, N'Limonádé, víz')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (11, N'Tojás, tej, tejszín')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (12, N'Gyümölcs és fűszer')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (13, N'Jég')
GO
INSERT [dbo].[MaterialType] ([MaterialTypeID], [Name]) VALUES (14, N'Likőr')
GO
SET IDENTITY_INSERT [dbo].[Recipe] ON 
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (1, 1, 56, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (2, 1, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (3, 1, 80, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (4, 2, 80, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (5, 2, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (6, 2, 54, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (7, 3, 119, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (8, 3, 4, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (9, 3, 80, CAST(14.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (10, 4, 54, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (11, 4, 107, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (12, 4, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (13, 5, 119, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (14, 5, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (15, 5, 54, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (16, 6, 56, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (17, 6, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (18, 6, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (19, 7, 56, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (20, 7, 79, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (21, 7, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (22, 7, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (23, 8, 54, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (24, 8, 124, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (25, 9, 124, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (26, 9, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (27, 9, 124, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (28, 9, 80, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (29, 9, 3, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (30, 9, 124, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (31, 9, 80, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (32, 9, 58, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (33, 10, 4, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (34, 10, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (35, 10, 92, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (36, 11, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (37, 11, 56, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (38, 11, 92, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (39, 11, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (40, 11, 80, CAST(12.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (41, 12, 54, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (42, 12, 124, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (43, 12, 121, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (44, 12, 58, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (45, 17, 25, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (46, 17, 61, CAST(16.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (47, 17, 56, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (48, 17, 54, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (49, 15, 4, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (50, 15, 119, CAST(10.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (51, 16, 79, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (52, 16, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (53, 16, 4, CAST(15.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (54, 17, 79, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (55, 17, 4, CAST(2.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (56, 17, 4, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (57, 13, 56, CAST(19.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (58, 13, 92, CAST(1.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (59, 1, 54, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (60, 2, 54, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (61, 3, 54, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (62, 4, 54, CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (63, 5, 119, CAST(4.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Recipe] ([RecipeSK], [CocktailFK], [MaterialFK], [Quantity]) VALUES (64, 6, 54, CAST(2.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Recipe] OFF
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (1, N'Brandyvel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (2, N'Whiskyvel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (3, N'Vodkával')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (4, N'Ginnel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (5, N'Rummal')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (6, N'Pezsgővel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (7, N'Likörrel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (8, N'Calvadossal')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (9, N'Keserűvel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (10, N'Tequilával')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (11, N'Cachacaval')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (12, N'Aniséevel')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (13, N'Eszenciával és gabonapálinkával')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (14, N'Alkoholmentes italok')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (15, N'Bolék')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (16, N'Meleg italok')
GO
INSERT [dbo].[Type] ([TypeID], [Name]) VALUES (17, N'Egyéb alkholtartalmú ital')
GO
INSERT [dbo].[Unit] ([UnitID], [Name]) VALUES (1, N'cl')
GO
INSERT [dbo].[Unit] ([UnitID], [Name]) VALUES (2, N'dl')
GO
INSERT [dbo].[Unit] ([UnitID], [Name]) VALUES (3, N'l')
GO
INSERT [dbo].[Unit] ([UnitID], [Name]) VALUES (4, N'csipet')
GO
INSERT [dbo].[Unit] ([UnitID], [Name]) VALUES (5, N'darab')
GO
ALTER TABLE [dbo].[Cocktail]  WITH CHECK ADD  CONSTRAINT [FK_Cocktail_ToType] FOREIGN KEY([TypeFK])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Cocktail] CHECK CONSTRAINT [FK_Cocktail_ToType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_ToMaterialType] FOREIGN KEY([TypeFK])
REFERENCES [dbo].[MaterialType] ([MaterialTypeID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_ToMaterialType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_ToUnit] FOREIGN KEY([UnitFK])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_ToUnit]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_ToCocktail] FOREIGN KEY([CocktailFK])
REFERENCES [dbo].[Cocktail] ([CocktailSK])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_ToCocktail]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_ToMaterial] FOREIGN KEY([MaterialFK])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_ToMaterial]
GO
