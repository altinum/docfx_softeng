USE [Etkeztetes]
GO
/****** Object:  Table [dbo].[Fogasok]    Script Date: 10/28/2025 7:40:27 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MennyisegiEgysegek]    Script Date: 10/28/2025 7:40:27 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nyersanyagok]    Script Date: 10/28/2025 7:40:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nyersanyagok](
	[NyersanyagID] [int] IDENTITY(1,1) NOT NULL,
	[NyersanyagNev] [nvarchar](50) NULL,
	[MennyisegiEgysegID] [int] NULL,
	[Egysegar] [money] NULL,
 CONSTRAINT [PK_Nyersanyagok] PRIMARY KEY CLUSTERED 
(
	[NyersanyagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receptek]    Script Date: 10/28/2025 7:40:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receptek](
	[ReceptID] [int] IDENTITY(10000,1) NOT NULL,
	[FogasID] [int] NULL,
	[NyersanyagID] [int] NULL,
	[Mennyiseg_4fo] [float] NULL,
 CONSTRAINT [PK_Receptek] PRIMARY KEY CLUSTERED 
(
	[ReceptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2166, N'mizu', NULL, N'')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2167, N'bdjd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2168, N'1233333', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2169, N'oiuzt', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2170, N'ertetrert', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2171, N'hffh', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2173, N'haha', NULL, N'ahah')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2174, N'k', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2175, N'dr', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2176, N'gdd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2177, N'k', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2179, N'asd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2180, N'assassin', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2181, N'shh', NULL, N'ssh')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2182, N'asfata', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2183, N'hjkl', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2186, N'klé', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2187, N'456456456', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2188, N'egase', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2189, N'é_', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2190, N'fas', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2191, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2192, N'szadam husszein alabama milkshake', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2193, N'alma', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2194, N'szexi', NULL, N'tanárnéni')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2195, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2196, N'csrke', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2197, N'att', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2198, N'lih', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2199, N'lil', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2200, N'hjh', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2201, N'asdasd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2202, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2203, N'qwer', NULL, N'retewrt')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2204, N'lm', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2205, N'ara', NULL, N'')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2206, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2207, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2209, N'ghdfh', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2210, N'Asasas', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2211, N'dfhdfgh', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2212, N'asdd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2213, N'sad', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2214, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2215, N'212', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2216, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2218, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2219, N'sdfdsfdsfds', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2220, N'kj', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2221, N'vk', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2222, N'hvj', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2223, N'Csirke', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2224, N'alma', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2225, N'asdasdad', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2226, N'rrrr', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2227, N'sss', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2228, N'sssssss', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2229, N'aaa', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2230, N's', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2231, N'sdfdsf', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2232, N'dsdasdas', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2233, N'sdasdsadasdas', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2235, N'asas', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2236, N'cvx', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2237, N'minta', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2238, N'tutzutzutzutzutz', NULL, N'')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2239, N'rizsa', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2240, N'hagyma', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2241, N'12', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2242, N'alma', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2243, N'asd123123', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2245, N'rw', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2247, N'us j', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2249, N'jjj', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2252, N'hahaaaaa', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2253, N'afssfaasgfsfa', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2275, N'Sült krumpli', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2277, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2280, N'fdsfsdgdfgdfbcb', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2281, N'fdsfsdgdfgdfbcb', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2282, N'kiskutya', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2284, N'zvbjn', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2286, N'szia', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2287, N'szia', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2288, N'szias', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2289, N'guehjg', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2290, N'sss', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2291, N'fdfdfgdfvd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2296, N'asd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2297, N'almafa', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2298, N'ban', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2299, N'ban', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2301, N'', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2305, N'asd', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2307, N'valami', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2309, N'almalé', NULL, N'blablabla finom')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2314, N'Elemózsia', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2324, N'Töltött nokedli', NULL, N'Ez egy új recept.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2326, N'Barackos krémes', NULL, N'A barackos krémes nagyon egyszerű desszert. A hagyományos krémeshez képest csak egy vékony, de annál édesebb lekváros réteget tartalmaz.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2327, N'Hortobágyi palacsinta', NULL, N'A hortobágyi palacsinta elkészítése igencsak bonyolult. A frissen darált pörkölt mellett palacsintasütés folyamata egyszerre kell hogy végbemenjen.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2328, N'Lecsós szelet', NULL, N'A lecsós szelet nagyszerű ötvözete a húsos ételnek és a lecsónak. A megsütött sertéshús szeletekre csak rá kell kanalazni a friss lecsót.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2329, N'Palócleves', NULL, N'A palócleves egy nagyon széles körben elterjedt vidéki leves. Baranya megyében találták ki, mára már egész Magyarország területén ismert.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2330, N'Barackos nokedli', NULL, N'A barackos nokedli egy nagyon egyszerű étel. A nokedlire szükséges bármilyen baracklekvárt önteni és kész is. A legegyszerűbb és legfinomabb étel. Vidéken hétvégi desszertnek is nevezik.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2331, N'Tejfölös tészta', NULL, N'A tejfölös tészta egy nagyon egyszerű étel. A szabadon választott tésztára szükséges tejfölt önteni és kész is. A legegyszerűbb és legfinomabb étel. Vidéken hétvégi vacsorának is nevezik. ')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2332, N'Mákos batyu', NULL, N'A mákos batyu egy könnyen elkészíthető péksütemény. Nagyanyáink hétvégére rendszeresen sütöttek. A mák akkor az igazi ha szárítva van 3 napig.')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2333, N'Babka kalács', NULL, N'A babka kalács hagyományosan baracklekvárral és dióval készül. A babka kalács hagyományosan baracklekvárral és dióval készül. A babka kalács hagyományosan baracklekvárral és dióval készül. ')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2334, N'Valami', NULL, N'')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2340, N'Alma2', NULL, N'Ez is nagyon finom')
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2341, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2342, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2343, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2344, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2345, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2346, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2347, N'Új fogásunk!!', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2348, N'Új fogásunk!!', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2349, N'Új fogásunk!!', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2350, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2351, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2352, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2353, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2354, N'Új fogás', NULL, NULL)
GO
INSERT [dbo].[Fogasok] ([FogasID], [FogasNev], [Kep], [Leiras]) VALUES (2355, N'wfea', NULL, NULL)
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
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (1, N'babérlevél', 7, 180.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (2, N'BORS', 4, 5.0000)
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
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (68, N'petrezselyem', 2, 100.0000)
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
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (226, N'Új BS nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (227, N'Új BS nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (229, N'Új ctx nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (231, N'Új BL nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (232, N'Új BL nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (233, N'Új Context nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (234, N'Új Context nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (237, N'Új BL nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (239, N'áron', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (240, N'mégtöbb áron', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (241, N'alma', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (242, N'Új BL nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (243, N'Új BullShit nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (244, N'Új BS nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (245, N'Új BL nyersanyag', 3, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (246, N'Új ctx nyersanyag', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (247, N'1221', 3, 255.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (274, N'új nyersa.', NULL, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (275, N'új nyersa.', NULL, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (277, N'almalé', NULL, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (278, N'almalé', NULL, 300.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (279, N'micsoda', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (280, N'babgulyás', NULL, 2002.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (281, N'babgulyás', NULL, 2002.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (282, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (283, N'Új ctx nyersanyag', 1, 668.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (284, N'Új ctx nyersanyag', 1, 113.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (285, N'alma', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (287, N'qwr', 2, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (288, N'alma', 4, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (290, N'Metál2', NULL, 10.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (291, N'KUTYA', NULL, 10.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (293, N'asd', NULL, 500.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (294, N'olaj', NULL, 100.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (295, N'aaaaaaa', NULL, 10000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (296, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (297, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (298, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (300, N'árongoat', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (301, N'nézzük', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (302, N'Új nyersanyag', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (304, N'A1BNHZ', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (306, N'erer', 1, 2000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (338, NULL, NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (339, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (340, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (341, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (342, N'aha', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (344, N'maxoljunk pls', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (345, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (346, N'cickó', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (347, N' ', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (348, N'aki holnap', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (350, N'az buzi', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (352, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (353, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (354, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (355, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (357, N'áronnyomod', NULL, 12.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (358, NULL, NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (359, N'Aki nem lép', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (360, N'egyszerre', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (361, N'nem kap pinát', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (362, N'estére', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (363, N'mert a pina', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (364, N'nagyon jó', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (365, N'Moha bá''-nak', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (366, N'az való', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (368, N'valamiproba', NULL, 1000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (369, N'B8WNHZ', NULL, 123.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (370, N'A9AAAA', NULL, 213.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (372, N'A1AAAA', 2, 21.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (373, N'Sigma', 1, 100000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (374, N'proba', 2, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (375, N'hihi', 1, 666.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (376, N'alap', NULL, 100.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (377, N'cukor2', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (378, N'cukor3', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (381, N'za', NULL, 234.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (385, N'kiezalany', 1, 10.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (386, N'', NULL, NULL)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (413, N'barnarépa', 7, 4.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (414, N'alma', 5, 4.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (415, N'Fésű', 6, 1000.0000)
GO
INSERT [dbo].[Nyersanyagok] ([NyersanyagID], [NyersanyagNev], [MennyisegiEgysegID], [Egysegar]) VALUES (416, N'Tökk', 7, 500000.0000)
GO
SET IDENTITY_INSERT [dbo].[Nyersanyagok] OFF
GO
SET IDENTITY_INSERT [dbo].[Receptek] ON 
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (324, 3, 72, 21)
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
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (333, 29, 36, 0.25)
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
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (342, 21, 45, 0.8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (343, 21, 72, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (346, 21, 66, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (347, 21, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (349, 21, 44, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (350, 21, 42, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (351, 40, 56, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (353, 40, 42, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (357, 22, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (359, 22, 3, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (360, 38, 71, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (361, 38, 28, 0.4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (363, 38, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (364, 37, 71, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (365, 37, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (366, 37, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (369, 37, 7, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (370, 37, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (373, 28, 48, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (375, 28, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (377, 28, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (386, 13, 69, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (388, 18, 51, 1.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (390, 18, 17, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (391, 19, 67, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (392, 19, 18, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (393, 19, 72, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (395, 19, 75, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (396, 19, 68, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (397, 19, 46, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (398, 19, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (400, 19, 48, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (402, 4, 34, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (424, 20, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (425, 20, 51, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (428, 7, 64, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (434, 14, 58, 0.14)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (435, 14, 52, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (436, 14, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (451, 33, 45, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (454, 33, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (455, 33, 32, 0.3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (456, 33, 70, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (461, 16, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (463, 16, 68, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (464, 43, 31, 0.8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (468, 43, 68, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (469, 43, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (470, 43, 52, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (487, 24, 61, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (488, 24, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (489, 24, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (491, 24, 32, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (493, 26, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (494, 26, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (497, 26, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (501, 27, 48, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (502, 27, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (503, 27, 51, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (505, 27, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (506, 27, 32, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (513, 15, 45, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (514, 15, 54, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (515, 15, 51, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (516, 15, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (518, 17, 34, 5)
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
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (526, 25, 26, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (527, 39, 77, 0.6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (529, 39, 27, 0.05)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (530, 39, 52, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (533, 44, 78, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (534, 44, 68, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (535, 44, 27, 0.02)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (538, 44, 3, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (539, 46, 54, 6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (540, 46, 52, 0.7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (541, 46, 27, 0.02)
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
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (551, 49, 54, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (552, 49, 53, 20)
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
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (585, 62, 71, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (586, 62, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (587, 62, 57, 8)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (590, 64, 51, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (591, 65, 80, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (592, 65, 7, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (593, 65, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (595, 66, 62, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (596, 67, 72, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (597, 67, 49, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (599, 67, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (600, 67, 60, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (601, 67, 13, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (603, 67, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (604, 68, 37, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (605, 68, 32, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (607, 68, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (608, 68, 71, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (609, 68, 51, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (611, 69, 45, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (612, 69, 54, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (613, 70, 52, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (619, 70, 55, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (620, 71, 33, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (621, 71, 66, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (622, 71, 72, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (625, 71, 67, 0.15)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (627, 71, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (628, 72, 67, 0.75)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (629, 72, 7, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (630, 72, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (632, 72, 68, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (633, 73, 24, 0.25)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (634, 73, 19, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (636, 73, 12, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (638, 73, 51, 0.5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (665, 36, 45, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10010, 31, 13, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10011, 31, 13, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10013, 7, 18, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10019, 27, 45, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10028, 16, 60, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10029, 16, 60, 0)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10033, 35, 13, 12)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10070, 5, 9, 6)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10080, 16, 15, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10081, 16, 15, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10084, 15, 13, 56)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10096, 2237, 10, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10099, 16, 13, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10100, 13, 7, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10101, 5, 17, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10102, 5, 16, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10170, 5, 12, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10209, 9, 3, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10220, 2288, 17, 600)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10228, 2314, 291, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10245, 6, 7, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10246, 6, 7, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10247, 6, 7, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10248, 6, 7, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10249, 18, 9, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10250, 18, 13, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10251, 18, 16, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10252, 30, 3, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10260, 6, 13, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10261, 6, 13, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10262, 6, 13, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10263, 6, 13, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10264, 6, 13, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10268, 9, 9, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10270, 9, 9, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10280, 3, 5, 111)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10281, 3, 5, 111)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10283, 6, 6, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10284, 6, 6, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10289, 5, 301, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10293, 12, 9, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10294, 12, 9, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10297, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10298, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10300, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10302, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10303, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10304, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10305, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10306, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10307, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10308, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10309, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10310, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10311, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10312, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10313, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10314, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10315, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10316, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10317, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10318, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10319, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10320, 18, 239, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10325, 18, 239, 1000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10326, 18, 239, 1000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10327, 18, 239, 1000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10328, 18, 239, 1000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10331, 18, 10, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10339, 5, 4, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10344, 5, 4, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10357, 13, 11, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10358, 13, 11, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10359, 13, 11, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10401, 32, 7, 0)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10402, 32, 7, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10415, 2, 3, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10416, 2, 3, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10445, 11, 8, 500)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10451, 16, 4, NULL)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10455, 12, 8, 9)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10460, 10, 11, NULL)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10463, 4, 8, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10464, 11, 15, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10467, 7, 11, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10468, 24, 11, 10)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10480, 3, 29, 31)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10482, 6, 7, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10487, 63, 24, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10496, 10, 7, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10499, 13, 4, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10502, 13, 17, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10503, 13, 19, 7)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10512, 33, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10513, 33, 2, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10535, 5, 14, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10536, 11, 16, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10540, 1, 11, 22)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10541, NULL, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10542, NULL, 5, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10543, NULL, 5, 0.2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10544, 4, 5, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10545, 4, 16, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10546, NULL, 10, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10547, NULL, 5, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10548, 3, 3, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10549, 3, 7, 21)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10550, NULL, 21, 0.1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10554, 12, 8, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10555, 12, 8, 5)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10560, 1, 1, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10561, 18, 1, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10562, 1, 11, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10563, 1, 1, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10564, 1, 5, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10565, 1, 2, 33)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10566, 12, 27, 0.01)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10567, 12, 10, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10571, 10, 1, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10572, 12, 1, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10573, 10, 52, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10574, 2332, 16, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10582, 14, 7, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10583, 1, 13, 40)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10584, 1, 6, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10586, 11, 3, 1)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10587, 11, 5, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10588, 11, 5, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10589, 11, 11, 4)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10590, 9, 3, 45)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10591, 10, 8, 0)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10592, 2, 2, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10593, 5, 7, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10595, 2340, 4, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10596, 2340, 2, 2)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10599, 17, 7, 3)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10604, 2192, 51, 100)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10605, 2192, 2, 100)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10606, 2192, 36, 100000)
GO
INSERT [dbo].[Receptek] ([ReceptID], [FogasID], [NyersanyagID], [Mennyiseg_4fo]) VALUES (10607, 17, 8, 125)
GO
SET IDENTITY_INSERT [dbo].[Receptek] OFF
GO
ALTER TABLE [dbo].[Nyersanyagok] ADD  CONSTRAINT [DF_Table3_mennyisegi_egyseg]  DEFAULT ((0)) FOR [MennyisegiEgysegID]
GO
ALTER TABLE [dbo].[Nyersanyagok] ADD  CONSTRAINT [DF_Table3_egysegar]  DEFAULT ((0)) FOR [Egysegar]
GO
ALTER TABLE [dbo].[Receptek] ADD  CONSTRAINT [DF_Table4_fogas]  DEFAULT ((0)) FOR [FogasID]
GO
ALTER TABLE [dbo].[Receptek] ADD  CONSTRAINT [DF_Table4_nyersanyag]  DEFAULT ((0)) FOR [NyersanyagID]
GO
ALTER TABLE [dbo].[Receptek] ADD  CONSTRAINT [DF_Table4_mennyiseg_4fo]  DEFAULT ((0)) FOR [Mennyiseg_4fo]
GO
ALTER TABLE [dbo].[Nyersanyagok]  WITH CHECK ADD  CONSTRAINT [FK_Nyersanyagok_MennyisegiEgysegek] FOREIGN KEY([MennyisegiEgysegID])
REFERENCES [dbo].[MennyisegiEgysegek] ([MennyisegiEgysegID])
GO
ALTER TABLE [dbo].[Nyersanyagok] CHECK CONSTRAINT [FK_Nyersanyagok_MennyisegiEgysegek]
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_Fogasok] FOREIGN KEY([FogasID])
REFERENCES [dbo].[Fogasok] ([FogasID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_Fogasok]
GO
ALTER TABLE [dbo].[Receptek]  WITH CHECK ADD  CONSTRAINT [FK_Receptek_Nyersanyagok] FOREIGN KEY([NyersanyagID])
REFERENCES [dbo].[Nyersanyagok] ([NyersanyagID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receptek] CHECK CONSTRAINT [FK_Receptek_Nyersanyagok]
GO
