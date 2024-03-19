USE [BURS]
GO
/****** Object:  Table [dbo].[Anket]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tarih] [date] NULL,
	[Ad] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Anket] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketCevapSik]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnketCevapSik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnketSoruId] [int] NULL,
	[Metin] [nvarchar](550) NULL,
	[CreateDate] [datetime] NULL,
	[OgrenciId] [int] NULL,
	[Cevap] [int] NULL,
 CONSTRAINT [PK_AnketCevapSik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnketSoru]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnketSoru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnketId] [int] NULL,
	[Metin] [nvarchar](550) NULL,
 CONSTRAINT [PK_AnketSoru] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BelgeTuru]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BelgeTuru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BelgeAd] [varchar](80) NULL,
	[Ingilizce] [nvarchar](90) NULL,
	[Arapca] [nvarchar](90) NULL,
 CONSTRAINT [PK_BelgeTuru] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danisman]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danisman](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[KullaniciAd] [nvarchar](150) NULL,
	[Sifre] [nvarchar](150) NULL,
	[Kurum] [nvarchar](100) NULL,
	[Unvan] [nvarchar](100) NULL,
	[OfisAdresi] [nvarchar](100) NULL,
	[IlId] [int] NULL,
	[IlceId] [int] NULL,
 CONSTRAINT [PK_Danisman] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DilekSikayet]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DilekSikayet](
	[Id] [int] NOT NULL,
	[Tur] [nvarchar](50) NULL,
	[Tarih] [nvarchar](50) NULL,
	[Saat] [nvarchar](50) NULL,
	[OgrenciId] [int] NULL,
	[Mesaj] [nvarchar](750) NULL,
	[Cevap] [nvarchar](750) NULL,
 CONSTRAINT [PK_DilekSikayet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etkinlik]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etkinlik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](550) NULL,
	[Tarih] [nvarchar](50) NULL,
	[BasSaat] [nvarchar](50) NULL,
	[BitSaat] [nvarchar](50) NULL,
	[Resim] [nvarchar](250) NULL,
	[Konum] [nvarchar](max) NULL,
 CONSTRAINT [PK_Etkinlik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Il]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Il](
	[Id] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Il] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ilce] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesaj]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesaj](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NULL,
	[DanismanId] [int] NULL,
	[Mesaj] [nvarchar](250) NULL,
	[OgrenciGonderdi] [bit] NULL,
	[Okundu] [bit] NULL,
	[Tarih] [nvarchar](50) NULL,
	[Saat] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Mesaj] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenci]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenci](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Tc] [nvarchar](50) NULL,
	[Telefon] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Sifre] [nvarchar](150) NULL,
	[KullaniciAd] [nvarchar](50) NULL,
	[DanismanId] [int] NULL,
	[UniId] [int] NULL,
	[IlId] [int] NULL,
	[IlceId] [int] NULL,
	[StajDurum] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciBelge]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciBelge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NULL,
	[Ad] [nvarchar](50) NULL,
	[Belge] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](250) NULL,
	[BelgeTarih] [datetime] NULL,
	[BelgeTurId] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_OgrenciBelge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciBurs]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciBurs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NULL,
	[Sonuc] [int] NULL,
	[Puan] [int] NULL,
 CONSTRAINT [PK_OgrenciBurs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RandevuTalep]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RandevuTalep](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DanısmanId] [int] NULL,
	[OgrenciId] [int] NULL,
	[Gun] [nvarchar](50) NULL,
	[Saat] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_RandevuTalep] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sinav]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sinav](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Donem] [nvarchar](50) NULL,
	[DilId] [int] NULL,
	[Tur] [int] NULL,
	[Aciklama] [nvarchar](250) NULL,
	[Tarih] [nvarchar](50) NULL,
	[BasSaat] [nvarchar](50) NULL,
	[BitSaat] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sinav] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinavSoru]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinavSoru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SinavId] [int] NULL,
	[Ad] [nvarchar](250) NULL,
	[ZorlukSeviyesi] [int] NULL,
	[Puan] [int] NULL,
	[Sik1] [nvarchar](250) NULL,
	[Sik2] [nvarchar](250) NULL,
	[Sik3] [nvarchar](250) NULL,
	[Sik4] [nvarchar](250) NULL,
	[Sik5] [nvarchar](250) NULL,
	[DogruSik] [int] NULL,
 CONSTRAINT [PK_SinavSoru] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoruCevap]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoruCevap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NULL,
	[SoruId] [int] NULL,
	[SikId] [int] NULL,
 CONSTRAINT [PK_SoruCevap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
 CONSTRAINT [PK_Universite] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Anket] ADD  CONSTRAINT [DF_Anket_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[AnketCevapSik] ADD  CONSTRAINT [DF_AnketCevapSik_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Mesaj] ADD  CONSTRAINT [DF_Mesaj_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Ogrenci] ADD  CONSTRAINT [DF_Ogrenci_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OgrenciBelge] ADD  CONSTRAINT [DF_OgrenciBelge_BelgeTarih]  DEFAULT (getdate()) FOR [BelgeTarih]
GO
ALTER TABLE [dbo].[OgrenciBelge] ADD  CONSTRAINT [DF_OgrenciBelge_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[RandevuTalep] ADD  CONSTRAINT [DF_RandevuTalep_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  StoredProcedure [dbo].[usp_Danisman_Duzenle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Danisman_Duzenle]
@Id int,
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Telefon nvarchar(50),
@Email nvarchar(50),
@Sifre nvarchar(150),
@KullaniciAd nvarchar(150),
@Kurum nvarchar(100),
@Unvan nvarchar(100),
@OfisAdresi  nvarchar(100),
@IlId int,
@IlceId int
AS
BEGIN
    UPDATE Danisman
    SET Ad = @Ad,
        Soyad = @Soyad,
        Telefon = @Telefon,
        Email = @Email,
        Sifre = @Sifre,
        KullaniciAd = @KullaniciAd,
        Kurum = @Kurum,
        Unvan = @Unvan,
        OfisAdresi = @OfisAdresi,
        IlId = @IlId,
        IlceId = @IlceId
    WHERE Id = @Id;
END;

GO
/****** Object:  StoredProcedure [dbo].[usp_Danisman_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[usp_Danisman_Ekle]
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Telefon nvarchar(50),
@Email nvarchar(50),
@Sifre nvarchar(150),
@KullaniciAd nvarchar(150),
@Kurum nvarchar(100),
@Unvan nvarchar(100),
@OfisAdresi  nvarchar(100),
@IlId int,
@IlceId int

AS
BEGIN

insert into Danisman(Ad,Soyad,Telefon,Email,Sifre,KullaniciAd,Kurum,Unvan,OfisAdresi,IlId,IlceId)
Values(@Ad,@Soyad,@Telefon,@Email,@Sifre,@KullaniciAd,@Kurum,@Unvan,@OfisAdresi,@IlId,@IlceId)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Danisman_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[usp_Danisman_Oku]
@Id int
as
begin
select Danisman.Ad,Soyad,KullaniciAd,Telefon,Email,Sifre,Kurum,Unvan,OfisAdresi,Il.Ad SehirAd,Ilce.Ad IlceAd from Danisman
inner join Il on Danisman.IlId=Il.Id
inner join Ilce on Danisman.IlceId=Ilce.Id
where Danisman.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Danisman_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_Danisman_Sil]
@Id int
AS
BEGIN 

DELETE FROM Danisman
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Etkinlik_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Etkinlik_Ekle]
@Ad nvarchar(550),
@Tarih nvarchar(50),
@BasSaat nvarchar(50),
@BitSaat nvarchar(50),
@Resim nvarchar(250),
@Konum nvarchar(MAX)
AS
BEGIN
  INSERT INTO Etkinlik(Ad, Tarih, BasSaat, BitSaat, Resim, Konum)
    VALUES (@Ad, @Tarih, @BasSaat, @BitSaat, @Resim, @Konum);
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Etkinlik_Guncelle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Etkinlik_Guncelle]
@Id int,
@Ad nvarchar(550),
@Tarih nvarchar(50),
@BasSaat nvarchar(50),
@BitSaat nvarchar(50),
@Resim nvarchar(250),
@Konum nvarchar(MAX)
AS 
BEGIN
UPDATE Etkinlik
        SET Ad = @Ad,
            Tarih = @Tarih,
            BasSaat = @BasSaat,
            BitSaat = @BitSaat,
            Resim = @Resim,
            Konum = @Konum
        WHERE Id = @Id

		END
GO
/****** Object:  StoredProcedure [dbo].[usp_Etkinlik_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Etkinlik_Oku]
@Id int
AS
BEGIN
select Ad,Tarih ,BasSaat,BitSaat,Resim, Konum   from Etkinlik
    WHERE Etkinlik.Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Etkinlik_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Etkinlik_Sil]
@Id int
AS
BEGIN
 DELETE FROM Etkinlik
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mesaj_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Mesaj_Ekle]
@OgrenciId int,
@DanismanId int,
@Mesaj nvarchar(250),
@OgrenciGonderdi bit,
@Okundu bit,
@Tarih nvarchar(50),
@Saat nvarchar(50)

AS 
BEGIN
  INSERT INTO Mesaj (OgrenciId, DanismanId, Mesaj, OgrenciGonderdi, Okundu, Tarih, Saat)
    VALUES (@OgrenciId, @DanismanId, @Mesaj, @OgrenciGonderdi, @Okundu, @Tarih, @Saat);

		END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mesaj_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_Mesaj_Oku]
@Id int
AS
BEGIN
select Ogrenci.Ad Ad, Ogrenci.Soyad Soyad,Danisman.Ad DanismanAd,Danisman.Soyad DanismanSoyad ,Mesaj,OgrenciGonderdi,Okundu,Tarih,Saat from Mesaj
inner join Ogrenci on Ogrenci.Id=Mesaj.Id
inner join Danisman on Mesaj.DanismanId=Danisman.Id
    WHERE Mesaj.Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Mesaj_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Mesaj_Sil]
@Id int
AS
BEGIN
 DELETE FROM Etkinlik
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Ogrenci_Duzenle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Ogrenci_Duzenle]
    @OgrenciId INT,
    @Ad NVARCHAR(50),
    @Soyad NVARCHAR(50),
    @Tc NVARCHAR(50),
    @Telefon NVARCHAR(50),
    @Email NVARCHAR(50),
    @Sifre NVARCHAR(150),
    @KullaniciAd NVARCHAR(50),
    @DanismanId INT,
    @UniId INT,
    @IlId INT,
    @IlceId INT,
    @StajDurum NVARCHAR(50)
AS
BEGIN
    UPDATE Ogrenci
    SET Ad = @Ad,
        Soyad = @Soyad,
        Tc = @Tc,
        Telefon = @Telefon,
        Email = @Email,
        Sifre = @Sifre,
        KullaniciAd = @KullaniciAd,
        DanismanId = @DanismanId,
        UniId = @UniId,
        IlId = @IlId,
        IlceId = @IlceId,
        StajDurum = @StajDurum
    WHERE Id = @OgrenciId;
END;

GO
/****** Object:  StoredProcedure [dbo].[usp_Ogrenci_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[usp_Ogrenci_Ekle]
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Tc nvarchar(50),
@Telefon nvarchar(50),
@Email nvarchar(50),
@Sifre nvarchar(150),
@KullaniciAd nvarchar(50),
@DanismanId int,
@UniId int,
@IlId int,
@IlceId int,
@StajDurum nvarchar(50)

AS
BEGIN

insert into Ogrenci(Ad,Soyad,Tc,Telefon,Email,Sifre,KullaniciAd,DanismanId,UniId,IlId,IlceId,StajDurum)
Values(@Ad,@Soyad,@Tc,@Telefon,@Email,@Sifre,@KullaniciAd,@DanismanId,@UniId,@IlId,@IlceId,@StajDurum)


END
GO
/****** Object:  StoredProcedure [dbo].[usp_Ogrenci_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_Ogrenci_Oku]
@Id int

as
begin
select Ogrenci.Ad,Ogrenci.Soyad,Ogrenci.KullaniciAd,Ogrenci.Telefon,Ogrenci.Email,Ogrenci.Sifre,Danisman.Ad DanismanAd,Il.Ad SehirAd,Ilce.Ad IlceAd, StajDurum from Ogrenci
inner join Il on Ogrenci.IlId=Il.Id
inner join Ilce on Ogrenci.IlceId=Ilce.Id
inner join Universite on Ogrenci.UniId=Universite.Id
inner join Danisman on Danisman.Id=Ogrenci.DanismanId

where Ogrenci.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Ogrenci_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_Ogrenci_Sil]
@Id int
AS
BEGIN 

DELETE FROM Ogrenci
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OgrenciBelge_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_OgrenciBelge_Ekle]
@OgrenciId int,
@Ad nvarchar(50),
@BelgeTurId int,
@Belge nvarchar(50),
@Aciklama nvarchar(50),
@BelgeTarih datetime
AS 
BEGIN
 INSERT INTO OgrenciBelge (OgrenciId, Ad, BelgeTurId, Belge, Aciklama, BelgeTarih)
				   VALUES (@OgrenciId, @Ad, @BelgeTurId, @Belge, @Aciklama, @BelgeTarih);
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_OgrenciBelge_Guncelle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_OgrenciBelge_Guncelle]
@OgrenciId int,
@Ad nvarchar(50),
@BelgeTurId int,
@Belge nvarchar(50),
@Aciklama nvarchar(50),
@BelgeTarih datetime

AS 
BEGIN
    -- Var olan öğrenci belgesini kontrol etmek ve güncellemek
    IF EXISTS (
        SELECT 1
        FROM OgrenciBelge
        WHERE OgrenciId = @OgrenciId AND Ad = @Ad
    )
    BEGIN
        UPDATE OgrenciBelge
        SET BelgeTurId = @BelgeTurId,
            Belge = @Belge,
            Aciklama = @Aciklama,
            BelgeTarih = @BelgeTarih
        WHERE OgrenciId = @OgrenciId AND Ad = @Ad;
        
        PRINT 'Öğrenci belgesi güncellendi.';
    END
    ELSE
    BEGIN
        PRINT 'Belirtilen öğrenci ve belge adı ile öğrenci belgesi bulunamadı.';
    END;
End
GO
/****** Object:  StoredProcedure [dbo].[usp_OgrenciBelge_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_OgrenciBelge_Oku]
@Id int
AS
BEGIN
Select Ogrenci.Ad,Ogrenci.Soyad,BelgeTuru.BelgeAd,OgrenciBelge.CreateDate IstenmeTarihi from OgrenciBelge
inner join Ogrenci on Ogrenci.Id=OgrenciBelge.OgrenciId
inner join BelgeTuru on BelgeTuru.Id=OgrenciBelge.BelgeTarih


END
GO
/****** Object:  StoredProcedure [dbo].[usp_OgrenciBelge_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_OgrenciBelge_Sil]
@Id int
AS
BEGIN
 DELETE FROM OgrenciBelgeleri
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_RandevuTalep_Ekle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_RandevuTalep_Ekle]
@DanismanId int,
@OgrenciId int,
@Gun nvarchar(50),
@Saat nvarchar(50)

AS
BEGIN
 INSERT INTO RandevuTalep (DanısmanId, OgrenciId, Gun, Saat)
    VALUES (@DanismanId, @OgrenciId, @Gun, @Saat);
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RandevuTalep_Guncelle]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RandevuTalep_Guncelle]
@DanismanId INT,
@OgrenciId INT,
@Gun NVARCHAR(50),
@Saat NVARCHAR(50)
AS
BEGIN
 IF EXISTS (
        SELECT 1
        FROM RandevuTalep
        WHERE DanısmanId = @DanismanId AND OgrenciId = @OgrenciId
    )
    BEGIN
        UPDATE RandevuTalep
        SET Gun = @Gun,
            Saat = @Saat
        WHERE DanısmanId = @DanismanId AND OgrenciId = @OgrenciId;
         
        PRINT 'Randevu talebi güncellendi.';
    END
    ELSE
    BEGIN
        PRINT 'Belirtilen danışman ve öğrenci için randevu talebi bulunamadı.';
    END;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RandevuTalep_Oku]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[usp_RandevuTalep_Oku]
@Id int

as
begin
select Danisman.Ad DanısmanAd,Danisman.Soyad DanısmanSoyad,Ogrenci.Ad OgrenciAd, Ogrenci.Soyad OgrenciSoyad ,Gun,Saat,RandevuTalep.CreateDate OlusturmaTarihi from RandevuTalep

inner join Ogrenci on Ogrenci.Id=RandevuTalep.Id
inner join Danisman on Danisman.Id=RandevuTalep.DanısmanId

where Ogrenci.Id=@Id
end
GO
/****** Object:  StoredProcedure [dbo].[usp_RandevuTalep_Sil]    Script Date: 19.03.2024 03:21:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_RandevuTalep_Sil]
@Id int

AS
BEGIN


DELETE FROM RandevuTalep
    WHERE Id = @Id;
END
GO
