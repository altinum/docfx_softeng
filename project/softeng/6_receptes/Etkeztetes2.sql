/****** Object:  Table [dbo].[Fogasok]    Script Date: 2017. 03. 27. 9:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fogasok](
	[FogasID] [int] IDENTITY(2000,1) NOT NULL,
	[FogasNev] [nvarchar](50) NULL,
	[Kep] [image] NULL,
	[Leiras] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fogasok] PRIMARY KEY CLUSTERED 
(
	[FogasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MennyisegiEgysegek]    Script Date: 2017. 03. 27. 9:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MennyisegiEgysegek](
	[MennyisegiEgysegID] [int] NOT NULL,
	[EgysegNev] [nvarchar](50) NULL,
 CONSTRAINT [PK_MennyisegiEgysegek] PRIMARY KEY CLUSTERED 
(
	[MennyisegiEgysegID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nyersanyagok]    Script Date: 2017. 03. 27. 9:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nyersanyagok](
	[NyersanyagID] [int] IDENTITY(1,1) NOT NULL,
	[NyersanyagNev] [nvarchar](50) NULL,
	[MennyisegiEgysegID] [int] NULL CONSTRAINT [DF_Table3_mennyisegi_egyseg]  DEFAULT ((0)),
	[Egysegar] [money] NULL CONSTRAINT [DF_Table3_egysegar]  DEFAULT ((0)),
 CONSTRAINT [PK_Nyersanyagok] PRIMARY KEY CLUSTERED 
(
	[NyersanyagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receptek]    Script Date: 2017. 03. 27. 9:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptek](
	[ReceptID] [int] IDENTITY(10000,1) NOT NULL,
	[FogasID] [int] NULL CONSTRAINT [DF_Table4_fogas]  DEFAULT ((0)),
	[NyersanyagID] [int] NULL CONSTRAINT [DF_Table4_nyersanyag]  DEFAULT ((0)),
	[Mennyiseg_4fo] [float] NULL CONSTRAINT [DF_Table4_mennyiseg_4fo]  DEFAULT ((0)),
 CONSTRAINT [PK_Receptek] PRIMARY KEY CLUSTERED 
(
	[ReceptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Fogasok] ON 

GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (1, N'Bableves', NULL, N'Hagymát megfonnyasztjuk olajon, hozzáadjuk a gombát, kolbászt, az előfőzött babot, borsikafűt,kakukkfüvet, babérlevelet,2 dcl fehérborral felöntjük,és főzzük, majd vizet öntünk hozzá.Amikor megfőtt tejföllel behabarjuk.Kis chilivel ízesítjük.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2, N'Bundás alma', NULL, N'A lisztbõl, tojásból, cukorból, tejbõl, vaníliából pici só hozzáadásával sûrû palacsintatésztát készítünk. Az almákat kicsumázzuk és felkarikázzuk. Megforgatjuk lisztben, a masszába mártjuk és nem túl forró olajban kisütjük. Figyeljünk, hogy az olaj éppen megfelelõ hõmérsékletû legyen, mert ha túl forró, akkor hamar megég, ha túl hideg, elázik az olajtól a tészta.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (3, N'Burgonya leves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (4, N'Fánk', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (5, N'Fasírt', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (6, N'Főtt tészta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (7, N'Frakfurti leves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (9, N'Gombapaprikás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (10, N'Gulyásleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (11, N'Gyümölcsleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (12, N'Hagymaleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (13, N'Karfiolleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (14, N'Krumplifőzelék', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (15, N'krumplipüré', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (16, N'Kukoricaleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (17, N'Lángos', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (18, N'Mákos guba', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (19, N'Milánói makaróni', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (20, N'Palacsinta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (21, N'Paprikás krumpli', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (22, N'Paradicsomleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (23, N'Rablóhús', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (24, N'Rántott gomba', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (25, N'Rízs köret', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (26, N'Tartár mártás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (27, N'Rántott szelet', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (28, N'Rizses hús', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (29, N'Rizses lecsó', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (30, N'Sajtos tészta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (31, N'Sertéspörkölt', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (32, N'Sült krumpli', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (33, N'Szilvás gombóc', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (34, N'Tarhonyás lecsó', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (35, N'Tejfölös burgunya', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (36, N'Tejfölös burgonyaleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (37, N'Tojásleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (38, N'Tojásos tészta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (39, N'Uborka saláta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (40, N'Virsli mustárral', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (43, N'Zöldborsóleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (44, N'Zöldségleves', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (45, N'Tea', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (46, N'Májkrém', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (47, N'Paprika', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (48, N'Paradicsom', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (49, N'Körözött', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (50, N'Kenyér', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (51, N'Zsemle', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (52, N'Lekvár', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (53, N'Párizsi', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (54, N'Rántotta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (55, N'Kakaó', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (56, N'Kalács', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (57, N'Sajtkrém', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (58, N'Kakaós csiga', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (59, N'Vaj', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (60, N'Kifli', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (61, N'Kolbász', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (62, N'Bundás zsemle', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (63, N'Tej', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (64, N'Puding', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (65, N'Fejes saláta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (66, N'Gyümölcs', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (67, N'Székely káposzta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (68, N'Rántott hal', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (69, N'Tört krumpli', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (70, N'Francia saláta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (71, N'Csirkepaprikás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (72, N'Paradicsom saláta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (73, N'Kókuszgolyó', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (76, N'huhh', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Fogasok] OFF
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (1, N'g')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (2, N'dkg')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (3, N'kg')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (4, N'dl')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (5, N'l')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (6, N'db')
GO
INSERT [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID], [EgysegNev]) VALUES (7, N'csomag')
GO
SET IDENTITY_INSERT [dbo].[Nyersanyagok] ON 

GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (1, N'babérlevél', 7, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (2, N'bors', 4, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (3, N'cérna metélt', 3, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (4, N'citromlé', 4, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (5, N'cukor', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (6, N'darált keksz', 3, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (7, N'ecet', 4, 100.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (8, N'fahéj', 1, 40.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (9, N'fokhagymakrém', 1, 10.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (10, N'húsleves kocka', 6, 100.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (11, N'kakaópor', 3, 1500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (12, N'kókuszreszelék', 7, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (13, N'köménymag', 1, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (14, N'kukorica konzerv', 6, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (15, N'lekvár', 3, 600.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (16, N'liszt', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (17, N'mák', 3, 350.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (18, N'makaróni tészta', 3, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (19, N'mazsola', 7, 250.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (20, N'mustár', 3, 1200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (21, N'olaj', 5, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (22, N'paradicsompüré', 1, 10.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (23, N'piros paprika', 1, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (24, N'porcukor', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (25, N'pudingpor', 7, 70.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (26, N'rízs', 3, 250.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (27, N'só', 3, 180.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (28, N'száraztészta', 3, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (29, N'tea filteres', 1, 15.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (30, N'vegeta', 1, 15.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (31, N'zöldborsó konzerv', 5, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (32, N'zsemlemorzsa', 3, 320.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (33, N'csirke', 3, 1500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (34, N'élesztő', 2, 150.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (35, N'felvágott', 3, 2000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (36, N'főző kolbász', 3, 150.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (37, N'hal', 3, 1700.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (38, N'kakaó', 5, 250.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (39, N'kakaós csiga', 6, 180.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (40, N'kalács', 3, 350.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (41, N'kenőmájas', 3, 800.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (42, N'kenyér', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (43, N'kifli', 6, 20.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (44, N'kolbász', 3, 1800.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (45, N'krumpli', 3, 150.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (46, N'sajt', 3, 2000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (47, N'camping sajt', 3, 2010.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (48, N'sertéshús', 3, 1800.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (49, N'sertéskaraj', 3, 1900.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (50, N'szalonna', 3, 1500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (51, N'tej', 5, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (52, N'tejföl', 4, 50.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (53, N'túró', 2, 15.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (54, N'vaj', 2, 50.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (55, N'vegyes fagyasztott zöldség', 3, 500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (56, N'virsli', 6, 75.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (57, N'zsemle', 6, 20.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (58, N'zsír', 3, 500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (59, N'alma', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (60, N'fokhagyma', 6, 25.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (61, N'gomba', 3, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (62, N'egyéb gyümölcs', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (63, N'karfiol', 3, 250.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (64, N'kelkáposzta', 3, 250.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (65, N'krumpli', 3, 150.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (66, N'paprika', 3, 180.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (67, N'paradicsom', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (68, N'petrezselyem', 7, 100.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (69, N'sárgarépa', 7, 150.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (70, N'szilva', 3, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (71, N'tojás', 6, 25.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (72, N'hagyma', 3, 180.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (73, N'oregano', 1, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (74, N'majoranna', 1, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (75, N'zeller', 1, 5.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (76, N'tarkabab', 3, 1000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (77, N'kígyóuborka', 3, 400.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (78, N'leveszöldség', 7, 350.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (79, N'apárizsi', 3, 700.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (80, N'fejes saláta', 6, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (81, N'egyéb gyümölcs', 1, 200.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (83, N'működik?', 4, 0.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (87, N'Hello', 5, 0.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (88, N':)', 7, 0.0000)
GO
SET IDENTITY_INSERT [dbo].[Nyersanyagok] OFF
GO
SET IDENTITY_INSERT [dbo].[Receptek] ON 

GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (321, 1, 54, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (322, 1, 16, 0.04)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (323, 3, 13, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (324, 3, 72, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (326, 7, 33, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (327, 30, 3, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (328, 30, 50, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (329, 30, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (330, 30, 46, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (331, 30, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (332, 30, 21, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (333, 29, 36, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (334, 29, 23, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (335, 29, 42, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (336, 29, 72, 0.17)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (337, 29, 67, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (338, 29, 50, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (339, 29, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (340, 29, 66, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (341, 29, 26, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (342, 21, 45, 0.8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (343, 21, 72, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (344, 21, 23, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (345, 21, 22, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (346, 21, 66, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (347, 21, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (348, 21, 21, 0.14)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (349, 21, 44, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (350, 21, 42, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (351, 40, 56, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (352, 40, 20, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (353, 40, 42, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (354, 22, 22, 140)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (355, 22, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (356, 22, 16, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (357, 22, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (358, 22, 5, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (359, 22, 3, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (360, 38, 71, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (361, 38, 28, 0.4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (362, 38, 21, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (363, 38, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (364, 37, 71, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (365, 37, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (366, 37, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (367, 37, 16, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (368, 37, 21, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (369, 37, 7, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (370, 37, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (371, 37, 1, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (372, 37, 23, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (373, 28, 48, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (374, 28, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (375, 28, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (376, 28, 23, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (377, 28, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (378, 28, 26, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (379, 13, 63, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (380, 13, 16, 0.04)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (381, 13, 21, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (382, 13, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (383, 13, 23, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (384, 13, 68, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (385, 13, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (386, 13, 69, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (387, 18, 43, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (388, 18, 51, 1.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (389, 18, 5, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (390, 18, 17, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (391, 19, 67, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (392, 19, 18, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (393, 19, 72, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (394, 19, 9, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (395, 19, 75, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (396, 19, 68, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (397, 19, 46, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (398, 19, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (399, 19, 21, 0.08)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (400, 19, 48, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (402, 4, 34, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (403, 4, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (405, 4, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (406, 4, 5, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (407, 11, 62, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (408, 11, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (409, 11, 16, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (410, 11, 5, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (411, 11, 8, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (412, 10, 45, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (413, 10, 23, 1.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (414, 10, 22, 70)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (415, 10, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (416, 10, 21, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (417, 10, 2, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (418, 10, 66, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (419, 10, 13, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (420, 10, 69, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (421, 10, 48, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (422, 10, 42, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (423, 20, 16, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (424, 20, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (425, 20, 51, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (426, 20, 21, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (427, 7, 56, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (428, 7, 64, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (429, 7, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (430, 14, 45, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (431, 14, 35, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (432, 14, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (433, 14, 16, 0.04)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (434, 14, 58, 0.14)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (435, 14, 52, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (436, 14, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (437, 14, 30, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (438, 14, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (439, 14, 56, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (440, 2, 51, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (441, 2, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (442, 2, 16, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (443, 2, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (444, 2, 59, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (448, 1, 24, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (449, 1, 7, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (450, 1, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (451, 33, 45, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (452, 33, 16, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (453, 33, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (454, 33, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (455, 33, 32, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (456, 33, 70, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (457, 33, 24, 0.21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (458, 16, 14, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (459, 16, 16, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (460, 16, 21, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (461, 16, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (462, 16, 30, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (463, 16, 68, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (464, 43, 31, 0.8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (465, 43, 16, 0.04)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (466, 43, 5, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (467, 43, 23, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (468, 43, 68, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (469, 43, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (470, 43, 52, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (472, 5, 48, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (474, 5, 30, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (475, 5, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (476, 5, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (477, 5, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (478, 5, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (479, 5, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (480, 5, 32, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (481, 12, 10, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (482, 12, 72, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (483, 12, 21, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (484, 12, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (485, 12, 16, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (486, 12, 2, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (487, 24, 61, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (488, 24, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (489, 24, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (490, 24, 16, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (491, 24, 32, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (492, 24, 21, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (493, 26, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (494, 26, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (495, 26, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (496, 26, 4, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (497, 26, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (498, 26, 5, 0.03)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (499, 26, 20, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (500, 26, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (501, 27, 48, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (502, 27, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (503, 27, 51, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (504, 27, 16, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (505, 27, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (506, 27, 32, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (507, 27, 21, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (508, 32, 45, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (509, 32, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (510, 6, 28, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (511, 6, 21, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (512, 6, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (513, 15, 45, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (514, 15, 54, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (515, 15, 51, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (516, 15, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (517, 17, 16, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (518, 17, 34, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (519, 17, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (520, 17, 51, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (521, 17, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (522, 23, 44, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (523, 23, 72, 0.4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (524, 23, 50, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (525, 23, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (526, 25, 26, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (527, 39, 77, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (528, 39, 5, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (529, 39, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (530, 39, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (531, 39, 23, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (532, 39, 2, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (533, 44, 78, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (534, 44, 68, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (535, 44, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (536, 44, 30, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (537, 44, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (538, 44, 3, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (539, 46, 54, 6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (540, 46, 52, 0.7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (541, 46, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (542, 46, 20, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (543, 46, 23, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (544, 46, 41, 0.24)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (545, 46, 72, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (546, 50, 42, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (547, 47, 66, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (548, 45, 29, 1.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (549, 45, 5, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (550, 45, 4, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (551, 49, 54, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (552, 49, 53, 20)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (553, 49, 20, 0.03)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (554, 49, 23, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (555, 49, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (556, 49, 52, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (557, 49, 72, 0.04)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (558, 49, 13, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (559, 48, 67, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (560, 51, 57, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (561, 52, 54, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (562, 52, 15, 0.35)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (563, 63, 51, 1.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (564, 53, 79, 0.35)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (565, 54, 71, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (566, 54, 50, 0.11)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (567, 54, 72, 0.11)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (568, 54, 44, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (569, 54, 66, 0.17)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (570, 54, 67, 0.11)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (571, 54, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (572, 56, 40, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (573, 56, 15, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (574, 55, 38, 1.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (575, 57, 54, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (576, 57, 52, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (577, 57, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (578, 57, 46, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (579, 57, 47, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (580, 58, 39, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (581, 59, 54, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (582, 60, 43, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (583, 61, 44, 0.35)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (584, 62, 21, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (585, 62, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (586, 62, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (587, 62, 57, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (588, 64, 25, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (589, 64, 5, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (590, 64, 51, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (591, 65, 80, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (592, 65, 7, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (593, 65, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (594, 65, 5, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (595, 66, 62, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (596, 67, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (597, 67, 49, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (598, 67, 21, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (599, 67, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (600, 67, 60, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (601, 67, 13, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (602, 67, 23, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (603, 67, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (604, 68, 37, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (605, 68, 32, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (606, 68, 21, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (607, 68, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (608, 68, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (609, 68, 51, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (610, 68, 16, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (611, 69, 45, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (612, 69, 54, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (613, 70, 52, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (614, 70, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (615, 70, 21, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (616, 70, 20, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (617, 70, 5, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (619, 70, 55, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (620, 71, 33, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (621, 71, 66, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (622, 71, 72, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (623, 71, 21, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (624, 71, 23, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (625, 71, 67, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (626, 71, 30, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (627, 71, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (628, 72, 67, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (629, 72, 7, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (630, 72, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (631, 72, 5, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (632, 72, 68, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (633, 73, 24, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (634, 73, 19, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (635, 73, 11, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (636, 73, 12, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (637, 73, 6, 0.4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (638, 73, 51, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (644, 73, 68, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (645, 1, 4, 15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (650, 1, 2, 34)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (651, 3, 2, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (652, 4, 3, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (653, 1, 3, 14)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (654, 1, 9, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (655, 1, 3, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (656, 4, 4, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (659, 5, 2, 200)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (660, 5, 5, 1000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (661, 5, 12, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (663, 11, 12, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (664, 4, 4, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (665, 36, 45, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (667, 21, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (668, 43, 6, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (669, 1, 4, 17)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (670, 7, 6, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (671, 15, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (672, 4, 9, 45)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (673, 4, 10, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (674, 4, 13, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (677, 1, 8, 100)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (678, 1, 15, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (679, 1, 5, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (680, 1, 2, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10000, 2, 4, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10001, 3, 4, 10)
GO
SET IDENTITY_INSERT [dbo].[Receptek] OFF
GO
ALTER TABLE [dbo].[Nyersanyagok]  WITH CHECK ADD  CONSTRAINT [FK_Nyersanyagok_MennyisegiEgysegek] FOREIGN KEY([MennyisegiEgysegID])
REFERENCES [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID])
GO
ALTER TABLE [dbo].[Nyersanyagok] CHECK CONSTRAINT [FK_Nyersanyagok_MennyisegiEgysegek]
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_Fogasok] FOREIGN KEY([FogasID])
REFERENCES [dbo].[Fogasok] ([FogasID])
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_Fogasok]
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_Nyersanyagok] FOREIGN KEY([NyersanyagID])
REFERENCES [dbo].[Nyersanyagok] ([NyersanyagID])
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_Nyersanyagok]
GO

