USE [EMLAKCİ]
GO
/****** Object:  Table [dbo].[EMLAKLAR]    Script Date: 23.01.2020 16:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMLAKLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ILAN_TARIHI] [nvarchar](50) NULL,
	[ILAN_KATEGORISI] [nvarchar](50) NULL,
	[ILAN_BASLIGI] [nvarchar](250) NULL,
	[FIYAT] [int] NULL,
	[KONUT_TIPI] [nvarchar](50) NULL,
	[BINA_YASI] [int] NULL,
	[ISINMA_TIPI] [nvarchar](50) NULL,
	[ODA_SAYISI] [int] NULL,
	[SALON_SAYISI] [int] NULL,
	[BANYO_SAYISI] [int] NULL,
	[BURUT_METREKARE] [int] NULL,
	[NET_METREKARE] [int] NULL,
	[KAT_SAYISI] [int] NULL,
	[BULUNDUGU_KAT] [nvarchar](50) NULL,
	[KULLANIM_DURUMU] [nvarchar](50) NULL,
	[AIDAT] [int] NULL,
	[IL_ID] [int] NULL,
	[MUSTERI_ID] [int] NULL,
 CONSTRAINT [PK_EMLAKLAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ILCELER]    Script Date: 23.01.2020 16:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ILCELER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ILCEADI] [nvarchar](50) NULL,
	[IL_ID] [int] NULL,
 CONSTRAINT [PK_ILCELER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ILLER]    Script Date: 23.01.2020 16:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ILLER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ILADI] [nvarchar](50) NULL,
	[ALANKODU] [nvarchar](50) NULL,
 CONSTRAINT [PK_ILLER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUSTERILER]    Script Date: 23.01.2020 16:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUSTERILER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ADI] [nvarchar](50) NULL,
	[SOYADI] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[SIFRE] [nvarchar](50) NULL,
	[EVTEL] [nvarchar](50) NULL,
	[CEPTEL] [nvarchar](50) NULL,
 CONSTRAINT [PK_MUSTERİLER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EMLAKLAR] ON 

INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (18, N'23 Ocak 2020', N'Satılık', N'Deneme ilanı', 130000, N'Daire', 1, N'Kat Kaloriferi', 3, 1, 1, 100, 90, 5, N'Ara Kat', N'Boş', 25, 2, 33)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (19, N'23 Ocak 2020', N'Satılık', N'Yeni İlan', 120000, N'Daire', 1, N'Kat Kaloriferi', 3, 1, 1, 120, 100, 5, N'Yüksek Giriş', N'Boş', 56, 1, 33)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (20, N'23 Ocak 2020', N'Kiralık', N'Yeni kiralık torbalıda', 450, N'Daire', 5, N'Güneş Enerjisi', 2, 1, 1, 110, 85, 5, N'Ara Kat', N'Boş', 45, 2, 34)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (21, N'23 Ocak 2020', N'Satılık', N'En yeni ', 140000, N'Daire', 0, N'Kat Kaloriferi', 2, 1, 1, 120, 110, 8, N'2', N'Boş', 55, 1, 33)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (22, N'23 Ocak 2020', N'Satılık', N'En uygun ilan merkezde', 180000, N'Daire', 0, N'Merkezi', 3, 1, 1, 130, 125, 8, N'7', N'Boş', 100, 2, 34)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (23, N'23 Ocak 2020', N'Satılık', N'İndirimde Düştü', 210000, N'Daire', 1, N'Merkezi', 2, 1, 1, 90, 75, 5, N'3', N'Boş', 55, 1, 33)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (24, N'23 Ocak 2020', N'Kiralık', N'Yapılı', 650, N'Daire', 15, N'Kat Kaloriferi', 2, 1, 1, 100, 90, 5, N'2', N'Boş', 45, 1, 34)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (25, N'23 Ocak 2020', N'Satılık', N'YENİ İLAN', 180000, N'Daire', 1, N'Güneş Enerjisi', 2, 1, 1, 111, 105, 8, N'Ara Kat', N'Boş', 25, 2, 33)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (26, N'23 Ocak 2020', N'Satılık', N'mehmetin ilanı torbalıda', 85000, N'Köy Evi', 0, N'Soba', 2, 1, 1, 90, 75, 2, N'Zemin', N'Boş', 45, 1, 34)
INSERT [dbo].[EMLAKLAR] ([ID], [ILAN_TARIHI], [ILAN_KATEGORISI], [ILAN_BASLIGI], [FIYAT], [KONUT_TIPI], [BINA_YASI], [ISINMA_TIPI], [ODA_SAYISI], [SALON_SAYISI], [BANYO_SAYISI], [BURUT_METREKARE], [NET_METREKARE], [KAT_SAYISI], [BULUNDUGU_KAT], [KULLANIM_DURUMU], [AIDAT], [IL_ID], [MUSTERI_ID]) VALUES (27, N'23 Ocak 2020', N'Satılık', N'Musanın İlanı YENİİİİİ', 250000, N'Daire', 0, N'Klima', 3, 1, 1, 120, 110, 8, N'4', N'Boş', 35, 1, 36)
SET IDENTITY_INSERT [dbo].[EMLAKLAR] OFF
SET IDENTITY_INSERT [dbo].[ILCELER] ON 

INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (1, N'Akyurt', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (2, N'Altındağ', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (3, N'Ayaş', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (4, N'Bala', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (5, N'Beypazarı', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (6, N'Çamlıdere', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (7, N'Çankaya', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (8, N'Çubuk', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (9, N'Etimeskut', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (10, N'Evren', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (11, N'Gölbaşı', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (12, N'Güdül', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (13, N'Haymana', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (14, N'Keçiören', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (15, N'Polatlı', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (16, N'Pursaklar', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (17, N'Yeni Mahalle', 1)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (18, N'Buca', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (19, N'Gaziemir', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (20, N'Çigli', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (21, N'Konak', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (22, N'Aliağa', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (23, N'Bornova', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (24, N'Balçova', 2)
INSERT [dbo].[ILCELER] ([ID], [ILCEADI], [IL_ID]) VALUES (25, N'Dikili', 2)
SET IDENTITY_INSERT [dbo].[ILCELER] OFF
SET IDENTITY_INSERT [dbo].[ILLER] ON 

INSERT [dbo].[ILLER] ([ID], [ILADI], [ALANKODU]) VALUES (1, N'Ankara', N'0312')
INSERT [dbo].[ILLER] ([ID], [ILADI], [ALANKODU]) VALUES (2, N'İzmir', N'0332')
SET IDENTITY_INSERT [dbo].[ILLER] OFF
SET IDENTITY_INSERT [dbo].[MUSTERILER] ON 

INSERT [dbo].[MUSTERILER] ([ID], [ADI], [SOYADI], [EMAIL], [SIFRE], [EVTEL], [CEPTEL]) VALUES (33, N'ADEM', N'YILMAZ', N'adem@hotmail.com', N'1', N'05458887963', N'05455328189')
INSERT [dbo].[MUSTERILER] ([ID], [ADI], [SOYADI], [EMAIL], [SIFRE], [EVTEL], [CEPTEL]) VALUES (34, N'MEHMET', N'KAPLAN', N'mehmet@hotmail.com', N'2', N'05455328179', N'05487553556')
INSERT [dbo].[MUSTERILER] ([ID], [ADI], [SOYADI], [EMAIL], [SIFRE], [EVTEL], [CEPTEL]) VALUES (35, N'AHMET', N'KAPLAN', N'ahmet@hotmail.com', N'3', N'05436666566', N'05456587896')
INSERT [dbo].[MUSTERILER] ([ID], [ADI], [SOYADI], [EMAIL], [SIFRE], [EVTEL], [CEPTEL]) VALUES (36, N'MUSA', N'YILMAZ', N'musa@hotmail.com', N'4', N'05455328179', N'05455328179')
SET IDENTITY_INSERT [dbo].[MUSTERILER] OFF
ALTER TABLE [dbo].[EMLAKLAR]  WITH CHECK ADD  CONSTRAINT [FK_EMLAKLAR_ILLER] FOREIGN KEY([IL_ID])
REFERENCES [dbo].[ILLER] ([ID])
GO
ALTER TABLE [dbo].[EMLAKLAR] CHECK CONSTRAINT [FK_EMLAKLAR_ILLER]
GO
ALTER TABLE [dbo].[EMLAKLAR]  WITH CHECK ADD  CONSTRAINT [FK_EMLAKLAR_MUSTERILER] FOREIGN KEY([MUSTERI_ID])
REFERENCES [dbo].[MUSTERILER] ([ID])
GO
ALTER TABLE [dbo].[EMLAKLAR] CHECK CONSTRAINT [FK_EMLAKLAR_MUSTERILER]
GO
ALTER TABLE [dbo].[ILCELER]  WITH CHECK ADD  CONSTRAINT [FK_ILCELER_ILLER] FOREIGN KEY([IL_ID])
REFERENCES [dbo].[ILLER] ([ID])
GO
ALTER TABLE [dbo].[ILCELER] CHECK CONSTRAINT [FK_ILCELER_ILLER]
GO
