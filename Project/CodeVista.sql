USE [CodeVista]
GO
/****** Object:  Table [dbo].[APİEntegrasyon]    Script Date: 25.03.2024 22:21:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APİEntegrasyon](
	[APİİstekİD] [int] IDENTITY(1,1) NOT NULL,
	[APİAdi] [varchar](250) NOT NULL,
	[İstekTuru] [varchar](250) NOT NULL,
	[İstekParametreleri] [text] NOT NULL,
	[İstekZamani] [timestamp] NOT NULL,
 CONSTRAINT [PK_APİEntegrasyon] PRIMARY KEY CLUSTERED 
(
	[APİİstekİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Basarilar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Basarilar](
	[BasariİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[SertifikaİD] [int] NOT NULL,
	[BasariTarihi] [date] NOT NULL,
	[Açıklama] [text] NOT NULL,
 CONSTRAINT [PK_Basarilar] PRIMARY KEY CLUSTERED 
(
	[BasariİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bloglar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bloglar](
	[BlogİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[Baslik] [nvarchar](250) NOT NULL,
	[İcerik] [text] NOT NULL,
	[YayinlanmaTarihi] [date] NOT NULL,
	[Etiketler] [nvarchar](250) NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_Bloglar] PRIMARY KEY CLUSTERED 
(
	[BlogİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalismaGruplari]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalismaGruplari](
	[GrupİD] [int] IDENTITY(1,1) NOT NULL,
	[GrupAdi] [nvarchar](250) NOT NULL,
	[KonuİD] [int] NOT NULL,
	[DilİD] [int] NOT NULL,
 CONSTRAINT [PK_CalismaGruplari] PRIMARY KEY CLUSTERED 
(
	[GrupİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DilKonulari]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DilKonulari](
	[DilİD] [int] NOT NULL,
	[KonuİD] [int] NOT NULL,
	[DilAdi] [nvarchar](250) NOT NULL,
	[KullanimAlani] [nvarchar](250) NOT NULL,
	[SektorİD] [int] NOT NULL,
	[Amac] [nvarchar](250) NOT NULL,
	[PopulerlikDerecesi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DilKonulari] PRIMARY KEY CLUSTERED 
(
	[DilİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diller]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diller](
	[DilİD] [int] IDENTITY(1,1) NOT NULL,
	[DilAdi] [nvarchar](250) NOT NULL,
	[DilTipi] [nvarchar](100) NOT NULL,
	[SektorİD] [int] NOT NULL,
	[ResimID] [int] NULL,
	[resim] [varchar](100) NULL,
 CONSTRAINT [PK_Diller] PRIMARY KEY CLUSTERED 
(
	[DilİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EgitimKaynaklari]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EgitimKaynaklari](
	[KaynakİD] [int] IDENTITY(1,1) NOT NULL,
	[KaynakAdi] [nvarchar](250) NOT NULL,
	[KategoriİD] [int] NOT NULL,
	[DilİD] [int] NOT NULL,
	[Seviye] [nvarchar](50) NULL,
 CONSTRAINT [PK_EgitimKaynaklari] PRIMARY KEY CLUSTERED 
(
	[KaynakİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İndirimKuponlari]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İndirimKuponlari](
	[KuponİD] [int] IDENTITY(1,1) NOT NULL,
	[KuponKodu] [nvarchar](50) NOT NULL,
	[İndirimYuzdesi] [int] NOT NULL,
	[SonKullanmaTarihi] [date] NOT NULL,
	[Aciklama] [text] NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_İndirimKuponlari] PRIMARY KEY CLUSTERED 
(
	[KuponİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriİD] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](250) NOT NULL,
	[AnaKategoriİD] [int] NULL,
	[ResimID] [int] NULL,
	[resim] [varchar](100) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kaynaklar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kaynaklar](
	[KaynakİD] [int] IDENTITY(1,1) NOT NULL,
	[KaynakAdi] [nvarchar](250) NOT NULL,
	[KaynakTipi] [nvarchar](250) NOT NULL,
	[KursİD] [int] NOT NULL,
	[SeviyeİD] [int] NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_Kaynaklar] PRIMARY KEY CLUSTERED 
(
	[KaynakİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Konular]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Konular](
	[KonuİD] [int] IDENTITY(1,1) NOT NULL,
	[KonuAdi] [nvarchar](255) NOT NULL,
	[KonuAciklama] [text] NOT NULL,
	[KonuTipi] [nvarchar](50) NOT NULL,
	[ResimID] [int] NULL,
	[SektorID] [int] NULL,
 CONSTRAINT [PK_Konular] PRIMARY KEY CLUSTERED 
(
	[KonuİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciEtkilesimleri]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciEtkilesimleri](
	[EtkilesimİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[KaynakİD] [int] NOT NULL,
	[EtkilesimTipi] [nvarchar](50) NOT NULL,
	[ZamanDamgasi] [datetime] NOT NULL,
	[GeriBildirim] [text] NULL,
 CONSTRAINT [PK_KullaniciEtkilesimleri] PRIMARY KEY CLUSTERED 
(
	[EtkilesimİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciFavorileri]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciFavorileri](
	[FavoriİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[KaynakİD] [int] NOT NULL,
 CONSTRAINT [PK_KullaniciFavorileri] PRIMARY KEY CLUSTERED 
(
	[FavoriİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciGeriBildirimleri]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciGeriBildirimleri](
	[GeriBildirimİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[GeriBildirimTuru] [nvarchar](50) NOT NULL,
	[GeriBildirimİcerigi] [text] NOT NULL,
	[GeriBildirimZamani] [timestamp] NOT NULL,
 CONSTRAINT [PK_KullaniciGeriBildirimleri] PRIMARY KEY CLUSTERED 
(
	[GeriBildirimİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullaniciİstatistikleri]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullaniciİstatistikleri](
	[İstatistikİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[DilİD] [int] NOT NULL,
	[KonuİD] [int] NOT NULL,
	[SeviyeİD] [int] NOT NULL,
	[İlerlemeYuzdesi] [int] NOT NULL,
 CONSTRAINT [PK_Kullaniciİstatistikleri] PRIMARY KEY CLUSTERED 
(
	[İstatistikİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[HashlenmisSifre] [nvarchar](255) NOT NULL,
	[SeviyeİD] [int] NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[KullaniciRolu] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciProfili]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciProfili](
	[KullaniciİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[TercihEdilenDil] [varchar](50) NOT NULL,
	[ProfilResmiURL] [varchar](250) NOT NULL,
	[Cinsiyet] [bit] NOT NULL,
	[DogumTarihi] [date] NOT NULL,
	[Ulke] [nvarchar](100) NOT NULL,
	[Sehir] [nvarchar](100) NOT NULL,
	[İlgiAlanlari] [text] NOT NULL,
	[KullaniciRolu] [nvarchar](30) NOT NULL,
	[KayitTarihi] [timestamp] NOT NULL,
	[SonGirisTarihi] [datetime] NOT NULL,
	[ProfilTamamlamaDurumu] [bit] NOT NULL,
	[SosyelMedyaHesaplari] [text] NULL,
	[İletisimBilgileri] [text] NULL,
	[OdemeBilgileri] [text] NULL,
	[SeviyeİD] [int] NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_KullaniciProfili] PRIMARY KEY CLUSTERED 
(
	[KullaniciAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciSeviyeleri]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciSeviyeleri](
	[SeviyeİD] [int] IDENTITY(1,1) NOT NULL,
	[SeviyeAdi] [nvarchar](50) NOT NULL,
	[SeviyeAciklama] [text] NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_KullaniciSeviyeleri] PRIMARY KEY CLUSTERED 
(
	[SeviyeİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kurslar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurslar](
	[KursİD] [int] IDENTITY(1,1) NOT NULL,
	[KursAdi] [nvarchar](250) NOT NULL,
	[DilİD] [int] NOT NULL,
	[KonuİD] [int] NOT NULL,
	[KursSeviyesi] [nvarchar](50) NOT NULL,
	[KursAciklama] [text] NOT NULL,
	[ResimID] [int] NULL,
	[resim] [image] NULL,
 CONSTRAINT [PK_Kurslar] PRIMARY KEY CLUSTERED 
(
	[KursİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjeOdevTakip]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjeOdevTakip](
	[ProjeOdevİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[KursİD] [int] NOT NULL,
	[SonTarih] [date] NOT NULL,
	[İlerlemeYuzdesi] [int] NOT NULL,
 CONSTRAINT [PK_ProjeOdevTakip] PRIMARY KEY CLUSTERED 
(
	[ProjeOdevİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referanslar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referanslar](
	[ReferansİD] [int] IDENTITY(1,1) NOT NULL,
	[ReferansAdi] [nvarchar](250) NOT NULL,
	[ReferansTipi] [nvarchar](50) NOT NULL,
	[DilİD] [int] NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_Referanslar] PRIMARY KEY CLUSTERED 
(
	[ReferansİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resimler]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resimler](
	[ResimID] [int] IDENTITY(1,1) NOT NULL,
	[Yol] [nvarchar](max) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Boyut] [int] NOT NULL,
 CONSTRAINT [PK_Resimler] PRIMARY KEY CLUSTERED 
(
	[ResimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sayac]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sayac](
	[KaynakID] [int] NULL,
	[BakilanSayi] [int] NULL,
	[SayacİD] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Sayac_1] PRIMARY KEY CLUSTERED 
(
	[SayacİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sektorler]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sektorler](
	[SektorID] [int] IDENTITY(1,1) NOT NULL,
	[SektorAdi] [nvarchar](250) NOT NULL,
	[PopulerYazilimDiliİD] [int] NOT NULL,
	[ResimID] [int] NULL,
	[resim] [varchar](100) NULL,
 CONSTRAINT [PK_Sektorler] PRIMARY KEY CLUSTERED 
(
	[SektorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sertifikalar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sertifikalar](
	[SertifikaİD] [int] IDENTITY(1,1) NOT NULL,
	[SertifikaAdi] [nvarchar](250) NOT NULL,
	[VerenKurulus] [nvarchar](250) NOT NULL,
	[VerilisTarihi] [date] NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_Sertifikalar] PRIMARY KEY CLUSTERED 
(
	[SertifikaİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoruCevap]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoruCevap](
	[SoruCevapİD] [int] IDENTITY(1,1) NOT NULL,
	[Soru] [text] NULL,
	[Cevap] [text] NULL,
	[DilİD] [int] NOT NULL,
 CONSTRAINT [PK_SoruCevap] PRIMARY KEY CLUSTERED 
(
	[SoruCevapİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yoneticiler]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yoneticiler](
	[YoneticiİD] [int] IDENTITY(1,1) NOT NULL,
	[YoneticiAdi] [nvarchar](50) NOT NULL,
	[YoneticiEmail] [nvarchar](100) NOT NULL,
	[YoneticiSifreHash] [nvarchar](64) NOT NULL,
	[ResimID] [int] NULL,
 CONSTRAINT [PK_Yoneticiler] PRIMARY KEY CLUSTERED 
(
	[YoneticiİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yorumlar]    Script Date: 25.03.2024 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yorumlar](
	[YorumİD] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciİD] [int] NOT NULL,
	[KaynakİD] [int] NOT NULL,
	[YorumMetni] [nvarchar](max) NULL,
	[ZamanDamgasi] [datetime] NOT NULL,
 CONSTRAINT [PK_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (6, 1, N'Python', N'Veri Analitiği, Makine Öğrenimi(Kütüphane ve Framework)', 10, N'Genel amaçlı bir dil; veri analizi, yapay zeka ve bilimsel hesaplamalar için yaygın olarak kullanılır.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (7, 3, N'JavaScript', N'Dinamik Web Uygulamaları, Sunucu Tarafı Betik Dili', 11, N'Web tarayıcılarında müşteri tarafı betiklerin geliştirilmesinde kullanılırken, PHP sunucu tarafında çalışan web uygulamaları için tercih edilir', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (8, 8, N'Java', N'Web Geliştirme, Mobil Uygulama Geliştirme', 12, N'Platform bağımsız uygulamalar geliştirmek için yaygın olarak kullanılan nesne yönelimli bir dildir.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (9, 4, N'C#', N'Oyun Geliştirme, Mobil Uygulama Geliştirme', 16, N'Microsoft''un .NET platformu için geliştirilmiş bir dil; özellikle Windows uygulamaları ve oyunlar için yaygın olarak kullanılır.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (11, 5, N'Swift', N'iOS ve Android Uygulama Geliştirme', 20, N'	Apple''ın iOS ve macOS platformları için geliştirilmiş bir dil; özellikle mobil uygulamalar için tercih edilir.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (12, 4, N'C++', N'Oyun Motorları, Grafik Programlama', 19, N'Performansı ön planda tutan, nesne yönelimli bir dil; özellikle oyun ve grafik uygulamalarında yaygın olarak kullanılır.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (17, 6, N'SQL', N'Veritabanı Tasarımı ve Sorgulama', 21, N'	İlişkisel veritabanları üzerinde veri sorgulama, ekleme, güncelleme ve silme işlemleri için standart bir dil.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (18, 3, N'PHP', N'Web Geliştirme', 17, N'Sunucu tarafında işlenen ve dinamik web sayfaları oluşturmak için yaygın olarak kullanılan bir betik dili.', N'Orta')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (20, 4, N'Ruby', N'Web Geliştirme', 13, N'Basit ve anlaşılabilir sözdizimi ile web uygulamaları geliştirmek için kullanılan bir betik dili.', N'Orta')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (21, 4, N'Go', N'Bulut Hizmetleri ve Dağıtık Sistemler', 23, N'Hızlı, güvenilir ve kolay yazılabilir özelliklere sahip; özellikle büyük ölçekli bulut uygulamaları için tercih edilir.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (22, 7, N'C', N'Mikrodenetleyiciler ve Gömülü Sistemler', 22, N'Düşük seviyeli programlama ve donanım ile doğrudan etkileşimde bulunma için yaygın olarak kullanılan bir dil.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (23, 24, N'Solidity', N'Programlama Dili ve Akıllı Sözleşmeler', 15, N'Yüksek seviyeli, blokzinciri için kontrat dili olarak kullanılır.', N'Yüksek')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (27, 27, N' Bash (Shell Scripting)', N'Betik', 26, N'Betik programlama ve otomasyon alanında yaygın olarak kullanılır. Özellikle yazılım geliştirme ve işletme süreçlerinin birleştirilmesi ve otomasyonunda tercih edilir.', N'Orta')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (28, 30, N'Julia', N' Programlama Dili (Bilimsel Hesaplamalar)', 25, N'Yüksek seviyeli, genel amaçlı, hızlı bilimsel hesaplamalar için kullanılır. Özellikle matematiksel ve istatistiksel analizlerde tercih edilir.', N'Orta')
INSERT [dbo].[DilKonulari] ([DilİD], [KonuİD], [DilAdi], [KullanimAlani], [SektorİD], [Amac], [PopulerlikDerecesi]) VALUES (30, 5, N'R', N'Veri Analizi ve İş Zekası', 27, N'	İstatistiksel analiz ve grafikler için yaygın olarak kullanılan bir dildir; özellikle veri bilimi ve iş zekası alanlarında tercih edilir.', N'Orta')
GO
SET IDENTITY_INSERT [dbo].[Diller] ON 

INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (6, N'Python ', N'Yüksek seviyeli, genel amaçlı, yorumlanmış', 10, NULL, N'python.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (7, N'JavaScript', N'Yüksek seviyeli, tarayıcı tabanlı, betik', 11, NULL, N'java_script .png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (8, N'Java', N'Yüksek seviyeli, nesne yönelimli, platform bağımsız', 12, NULL, N'java.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (9, N'C#', N' Yüksek seviyeli, nesne yönelimli, platform bağımsız (.NET framework ile)', 19, NULL, N'csharp.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (11, N'Swift', N'Yüksek seviyeli, nesne yönelimli, iOS ve macOS için tasarlanmış', 20, NULL, N'swift.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (12, N'C++', N'Düşük seviyeli, genel amaçlı, nesne yönelimli', 16, NULL, N'cplus.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (17, N' SQL (Yapılandırılmış Sorgu Dili)', N' Veritabanı sorgu dili', 21, NULL, N'sql.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (18, N'PHP', N' Yüksek seviyeli, sunucu tarafında işlenen, betik', 11, NULL, N'php.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (20, N'Ruby', N'Yüksek seviyeli, dinamik, nesne yönelimli, betik', 13, NULL, N'ruby.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (21, N'Go (Golang)', N'Derlenmiş, hızlı, genel amaçlı', 23, NULL, N'go.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (22, N'C', N'Orta seviyeli, genel amaçlı, derlenmiş', 22, NULL, N'c.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (23, N'Solidity', N' Yüksek seviyeli, blokzinciri için kontrat dili', 15, NULL, N'solidity.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (26, N'MATLAB', N' Yüksek seviyeli, matematiksel hesaplamalar ve modelleme için özel olarak tasarlanmış', 17, NULL, N'matlab.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (27, N'Bash (Shell Scripting)', N'Betik', 18, NULL, N'bash.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (28, N'Julia', N'Yüksek seviyeli, genel amaçlı, hızlı bilimsel hesaplamalar için', 25, NULL, N'julia.jpg')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (29, N'Groovy', N'Yüksek seviyeli, nesne yönelimli, JVM üzerinde çalışan', 26, NULL, N'groovy.png')
INSERT [dbo].[Diller] ([DilİD], [DilAdi], [DilTipi], [SektorİD], [ResimID], [resim]) VALUES (30, N'R', N'Yüksek seviyeli, istatistiksel analiz ve grafikler için', 27, NULL, N'r.jpg')
SET IDENTITY_INSERT [dbo].[Diller] OFF
GO
SET IDENTITY_INSERT [dbo].[EgitimKaynaklari] ON 

INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (1, N'https://www.python.org/', 1, 6, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (2, N'https://www.javascript.com/', 8, 7, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (3, N'https://www.java.com/tr/', 11, 8, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (4, N'Swift.org', 13, 11, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (5, N'https://cplusplus.com/', 4, 12, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (6, N'https://www.sqlcourse.com/', 16, 17, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (7, N'PHP.net', 11, 18, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (8, N'Ruby-lang.org', 19, 20, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (9, N'Golang.org', 31, 21, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (10, N'https://react.dev/learn', 9, 7, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (11, N'https://angular.io/docs', 9, 7, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (12, N'https://vuejs.org/guide/introduction.html', 9, 7, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (13, N'https://developer.android.com/get-started/overview?hl=tr', 12, 12, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (14, N'https://flutter.dev/', 14, 11, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (15, N'https://www.tutorialspoint.com/php/index.htm', 11, 18, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (17, N'https://www.kaggle.com/', 35, 30, N'4')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (20, N'https://www.datacamp.com/tracks/data-scientist-with-python', 39, 6, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (21, N'https://www.analyticsvidhya.com/', 39, 6, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (23, N'https://www.gamedev.net/', 43, 12, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (24, N'https://learn.unity.com/', 43, 9, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (25, N'https://www.blenderguru.com/', 43, 12, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (26, N'	edX - Artificial Intelligence', 35, 30, N'4')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (27, N'https://www.datacamp.com/courses/free-introduction-to-r', 39, 30, N'3')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (28, N'https://javascript.info/', 8, 7, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (29, N'https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures-v8/', 8, 7, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (30, N'https://realpython.com/', 1, 6, N'1')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (31, N'https://www.hackingwithswift.com/', 11, 18, N'2')
INSERT [dbo].[EgitimKaynaklari] ([KaynakİD], [KaynakAdi], [KategoriİD], [DilİD], [Seviye]) VALUES (32, N'https://www.learncpp.com/', 12, 12, N'1')
SET IDENTITY_INSERT [dbo].[EgitimKaynaklari] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (1, N'Programlama Dilleri ve Temelleri', 1, NULL, N'kid1.jpg')
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (2, N'Temel Programlama Kavramları', 1, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (3, N'Veri Yapıları ve Algoritmalar', 1, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (4, N'Nesne Yönelimli Programlama', 1, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (5, N'Fonksiyonel Programlama', 1, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (6, N'Web Geliştirme', 6, NULL, N'kid6.png')
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (7, N'HTML ve CSS', 6, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (8, N'JavaScript ve ECMAScript', 6, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (9, N'Web Framework''leri (React, Angular, Vue.js vb.)', 6, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (10, N'Web Güvenliği ve Performansı', 6, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (11, N'Mobil Uygulama Geliştirme', 11, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (12, N'Android Uygulama Geliştirme', 11, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (13, N'iOS Uygulama Geliştirme', 11, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (14, N'Cross-Platform Uygulama Geliştirme (React Native, Xamarin, Flutter vb.)', 11, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (15, N'Veritabanı Yönetimi ve SQL', 15, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (16, N'SQL Temelleri', 15, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (17, N'Veritabanı Tasarımı ve Normalizasyon', 15, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (18, N'İleri SQL Teknikleri (Stored Procedures, Triggers, Views vb.)', 15, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (19, N'Yazılım Mimarisi ve Tasarım Desenleri', 19, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (20, N'Tasarım Prensipleri (DRY, SOLID, KISS vb.)', 19, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (21, N'Tasarım Desenleri (Singleton, Factory, Observer vb.)', 19, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (22, N'Mikroservis Mimarisi', 19, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (23, N'Test ve Kalite Güvencesi', 23, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (24, N'Birim Testleri', 23, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (25, N'Entegrasyon Testleri', 23, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (26, N'Otomasyon Test Araçları (Selenium, Appium, JUnit, NUnit vb.)', 23, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (27, N'Ağ Programlama ve Güvenlik', 27, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (28, N'Ağ Protokolleri (TCP/IP, HTTP, HTTPS vb.)', 27, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (29, N'Güvenlik Protokolleri ve Uygulamaları (SSL/TLS, VPN, Firewall vb.)', 27, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (30, N'Sızma Testleri ve Güvenlik Denetimleri', 27, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (31, N'Bulut Bilişim ve Dağıtık Sistemler', 31, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (32, N'Bulut Hizmet Modelleri (IaaS, PaaS, SaaS)', 31, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (33, N'Dağıtık Veritabanları', 31, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (34, N'Serverless Mimarisi', 31, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (35, N'Yapay Zeka ve Makine Öğrenimi', 35, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (36, N'Makine Öğrenimi Temelleri', 35, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (37, N'Derin Öğrenme ve Sinir Ağları', 35, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (38, N'Doğal Dil İşleme ve Görüntü İşleme', 35, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (39, N'Veri Bilimi ve Büyük Veri Analizi', 39, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (40, N'Veri Temizleme ve Ön İşleme', 39, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (41, N'eri Görselleştirme ve Raporlama', 39, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (42, N'Büyük Veri İşleme Araçları (Hadoop, Spark, Kafka vb.)', 39, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (43, N'Oyun Geliştirme ve Grafik Programlama', 43, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (44, N'Oyun Motorları ve Grafik Motorları', 43, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (45, N'3D Modelleme ve Animasyon', 43, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (46, N'Oyun Mekaniği ve Tasarımı', 43, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (47, N'Gömülü Sistemler ve Mikrodenetleyiciler', 47, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (48, N'Gömülü Sistem Tasarımı', 47, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (49, N'Mikrodenetleyici Programlama (Arduino, Raspberry Pi vb.)', 47, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (50, N'IoT Uygulamaları ve Sensörler', 47, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (51, N'İşletim Sistemleri', 51, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (52, N'İşletim Sistemi Temelleri', 51, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (53, N'Ağ İşletim Sistemleri ve Yönetimi', 51, NULL, NULL)
INSERT [dbo].[Kategoriler] ([KategoriİD], [KategoriAdi], [AnaKategoriİD], [ResimID], [resim]) VALUES (54, N'Sanallaştırma ve Konteynerleme Teknolojileri', 51, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kaynaklar] ON 

INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (1, N'https://bilgeis.net/moodle/course/index.php?categoryid=8', N'Online Kurs', 1, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (3, N'https://www.coursera.org/learn/python-crash-course', N'Online Kurs', 1, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (4, N'https://www.youtube.com/playlist?list=PLlrxD0HtieHhS8VzuMCfQD4uJ9yne1mE6', N'Video', 1, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (5, N'https://www.mobilhanem.com/python-egitimi/', N' Eğitim Serisi ', 1, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (6, N'https://www.udemy.com/tr/topic/python/free/', N'Kurs', 1, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (7, N'https://www.muratkara.com/html/html_sunu.pdf', N'Sunu', 2, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (9, N'https://tr.javascript.info/', N'Web Sitesi', 2, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (10, N'https://github.com/haki9/Books/blob/master/Javascript_Books-master/Learning.JavaScript.Design.Patterns.pdf', N'Kitap', 2, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (11, N'https://vdoc.pub/documents/jquery-enlightenment-2fss4ergn1p0', N'Kitap', 2, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (12, N'https://www.youtube.com/playlist?app=desktop&list=PLy4zTYiAcOoBej002giLlVwvgygwAD_6r', N'Video', 2, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (14, N'https://yasirkula.com/2014/07/07/unity-c-tps-oyunu-yapimi-ceviri-projesi/', N'Eğitim Serisi', 4, 4, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (15, N'https://www.btkakademi.gov.tr/portal/course/swift-ui-ile-ios-mobil-gelistirme-12696', N'Kurs', 5, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (16, N'https://gelecegiyazanlar.turkcell.com.tr/konu/swift-ile-ios-programlama#courses_list', N'Eğitim Serisi', 5, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (17, N'https://www.aydin.edu.tr/tr-tr/arastirma/universite-yayinlari/Documents/swift-ile-ios-uygulama-gelistirme-yeni-baslayanlar-icin.pdf', N'Döküman', 5, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (18, N'https://acikders.ankara.edu.tr/course/view.php?id=2089', N'Döküman', 7, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (19, N'https://tr.khanacademy.org/computing/computer-programming/sql', N'Eğitim Serisi', 7, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (20, N'https://digitalvizyon.net/mysql-ve-php-ile-web-uygulama-gelistirme-egitimi/', N'Döküman', 9, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (21, N'https://www.btkakademi.gov.tr/portal/course/php-8-ile-web-uygulama-gelistirme-25053', N'Eğitim Serisi', 9, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (22, N'https://books.google.com.tr/books?id=CJYqEAAAQBAJ&printsec=frontcover&hl=tr#v=onepage&q&f=false', N'Kitap', 9, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (23, N'https://github.com/nuriakman/PHP-Egitimi', N'Githup', 9, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (24, N'https://www.bilgigunlugum.net/prog/cembed/cembed_microd', N'Web Sitesi', 12, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (25, N'https://www.bilgigunlugum.net/prog/cembed/cembed_giris', N'Web Sitesi', 12, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (26, N'NUhttps://web.itu.edu.tr/~buyukcolako/c_ile_uc1.pdfLL', N'Döküman', 12, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (27, N'https://www.youtube.com/watch?v=7qeT0ieH1V4', N'Eğitim Serisi', 16, 1, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (28, N'https://docs.soliditylang.org/tr/latest/introduction-to-smart-contracts.html', N'Web Sitesi', 16, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (29, N'https://learn.microsoft.com/tr-tr/training/modules/blockchain-solidity-ethereum-smart-contracts/', N'Kurs', 16, 4, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (30, N'https://bctr.org/dokumanlar/Akilli_Sozlesme_Raporu.pdf', N'Döküman', 16, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (31, N'https://www.hostinger.web.tr/rehberler/bash-script-nedir-ve-ornekleri', N'Web Sitesi', 17, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (32, N'https://www.youtube.com/playlist?list=PL8jZTVwefzOxo9XkkBEEbrEC955jlB7Pz', N'Video', 17, 2, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (33, N'https://web.deu.edu.tr/doc/lis/lis-6.html', N'Döküman', 17, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (34, N'https://iupress.istanbul.edu.tr/tr/journal/ekoist/article/veri-bilimi-icin-yeni-bir-programlama-dili-julia', N'Döküman', 18, 3, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (35, N'https://www.researchgate.net/publication/350597288_A_novel_Julia_based_system_description_language_and_simulation_environment_JuSDL', N'Döküman', 18, 4, NULL)
INSERT [dbo].[Kaynaklar] ([KaynakİD], [KaynakAdi], [KaynakTipi], [KursİD], [SeviyeİD], [ResimID]) VALUES (39, N'https://www.academia.edu/36454162/R_ile_%C4%B0statistiksel_Veri_Analizleri', N'Döküman', 19, 2, NULL)
SET IDENTITY_INSERT [dbo].[Kaynaklar] OFF
GO
SET IDENTITY_INSERT [dbo].[Konular] ON 

INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (1, N'Veri Analitiği ve Makine Öğrenimi', N'Python, geniş bir veri analitiği ve yapay zeka ekosistemi ile birlikte gelir. Pandas, NumPy ve SciPy gibi kütüphaneler veri analizi için kullanılırken, TensorFlow ve PyTorch gibi framework''ler makine öğrenimi ve derin öğrenme için tercih edilir.', N' Kütüphane ve Framework', NULL, 10)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (3, N'Dinamik Web Uygulamaları', N'JavaScript, web tarayıcılarında müşteri tarafı betiklerin geliştirilmesinde kullanılırken, PHP sunucu tarafında çalışan web uygulamaları için tercih edilir.', N' Programlama Dili ve Sunucu Tarafı Betik Dili', NULL, 11)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (4, N'Oyun Motorları ve Grafik Programlama', N' C++ ve C#, oyun motorları için sıkça kullanılan dillerdir. Unreal Engine (C++) ve Unity (C#) gibi popüler oyun motorları bu dillere dayanır.', N'Programlama Dili', NULL, 19)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (5, N' iOS ve Android Uygulama Geliştirme', N'Swift, iOS platformu için native uygulamalar geliştirmek için kullanılırken, Java ve Kotlin Android platformunda tercih edilir.', N' Programlama Dili', NULL, 20)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (6, N' Veritabanı Tasarımı ve Sorgulama', N'SQL, ilişkisel veritabanları üzerinde veri sorgulama, ekleme, güncelleme ve silme işlemleri için standart bir dil olarak kullanılır.', N'Veri Tabanı Sorgu Dili', NULL, 21)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (7, N'Mikrodenetleyiciler ve Gömülü Sistemler Programlama', N'C ve C++, donanım ile doğrudan etkileşimde bulunabilen ve gömülü sistemlerde sıkça kullanılan dillerdir. Bu sistemler genellikle elektronik cihazlarda ve otomasyon sistemlerinde bulunur.', N'Programlama Dili', NULL, 16)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (8, N'Bulut Hizmetleri ve Dağıtık Sistemler', N'Bulut tabanlı uygulamaların geliştirilmesinde Python, Java ve Go gibi diller sıkça tercih edilir. Bu dillerin sağladığı kolaylık ve hız, bulut altyapısında uygulama geliştirmeyi destekler.', N' Programlama Dili', NULL, 21)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (11, N'Finansal Uygulamalar ve Blockchain Teknolojisi', N'Finansal teknoloji alanında, özellikle blokzinciri teknolojileri üzerine çalışan uygulamalar geliştirilir. Bu uygulamalar genellikle Python ve Java gibi dillerle yazılırken, akıllı sözleşmeleri (smart contracts) Solidity gibi özel dillerle kodlanır.', N'Programlama Dili ve Akıllı Sözleşmeler', NULL, 15)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (12, N'Otomasyon Testi ve Test Sürümleri Yönetimi', N'Yazılım test otomasyonu, yazılımın otomatik olarak test edilmesini sağlar. Bu alanda Python, Java ve JavaScript gibi diller, test senaryolarının otomatize edilmesi ve test süreçlerinin yönetimi için kullanılır.', N'Programlama Dili ve Test Araçları', NULL, 18)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (15, N'Yapay Zeka (AI)', N'Yapay zeka, bilgisayar sistemlerinin insan benzeri zeka ve öğrenme kapasitesi kazanmasını hedefleyen bir alandır. Bu alan, derin öğrenme, makine öğrenimi ve yapay sinir ağları gibi teknolojileri içerir. Yapay zeka, otomatik pilottan kişisel asistanlara, sağlık hizmetlerinden oyunlara kadar geniş bir uygulama yelpazesine sahiptir.', N'Teknoloji', NULL, 10)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (20, N'Büyük Veri', N'Büyük miktarda verinin toplanması, depolanması, analiz edilmesi ve kullanılmasıyla ilgili teknolojiler.', N'Veri Bilimi', NULL, 21)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (21, N'Blockchain', N'Dağıtık defter teknolojisi olan blockchain''in işleyişi ve uygulama alanları.', N'Kripto-Para', NULL, 24)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (22, N'Nesnelerin İnterneti (IoT)', N'Cihazlar arasındaki bağlantılarla veri toplama ve analiz etme yeteneği.', N'Teknoloji', NULL, 22)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (23, N'Bulut Bilişim', N'Bilgisayar kaynaklarının internet üzerinden sağlanması ve paylaşılması', N'Altyapı ve Servisler', NULL, 23)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (24, N'Makine Öğrenimi', N'Bilgisayar sistemlerinin veri kullanarak kendilerini geliştirmesi.', N'Veri Bilimi', NULL, 25)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (25, N'Robotik', N'Makinelerin kendi kendine çalışma yeteneği ve insanlarla etkileşimi.', N'Teknoloji', NULL, 25)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (26, N'Veri Güvenliği', N' Verilerin yetkisiz erişime karşı korunması ve gizliliğinin sağlanması.', N'Güvenlik', NULL, 27)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (27, N'DevOps', N'Yazılım geliştirme ve işletme süreçlerinin birleştirilmesi ve otomasyonu', N'Yazılım Geliştirme', NULL, 16)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (29, N'Güçlü Yazılım Mimarisi', N'Yazılım projelerinde sağlam ve ölçeklenebilir bir mimari tasarlama ve uygulama.', N'Yazılım Geliştirme', NULL, 18)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (30, N'Bilimsel Hesaplamalar', N'Yüksek seviyeli, genel amaçlı, hızlı bilimsel hesaplamalar için kullanılır. Özellikle matematiksel ve istatistiksel analizlerde tercih edilir.', N'Veri Bilimi', NULL, 17)
INSERT [dbo].[Konular] ([KonuİD], [KonuAdi], [KonuAciklama], [KonuTipi], [ResimID], [SektorID]) VALUES (31, N'Matematik and hesaplama işlemleri / Algoritma', N'MATLAB kullanıcıya, matris işleme, fonksiyon ve veri çizme, algoritma uygulama, kullanıcı arayüzü oluşturma, C, C++, Java, ve Fortran gibi diğer dillerde yazılmış programlarla arabağlama imkânı tanır.', N'Uygulama Geliştirme', NULL, 17)
SET IDENTITY_INSERT [dbo].[Konular] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciİD], [KullaniciAdi], [HashlenmisSifre], [SeviyeİD], [Ad], [Soyad], [Email], [KullaniciRolu]) VALUES (1, N'Doofenshmirtz', N'1011', 13, N'Bülent', N'Dumlupınar', N'saladım@gmail.com', N'Doldurulacak')
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciSeviyeleri] ON 

INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (1, N'Başlangıç Seviyesi  ', N'Platforma yeni katılan kullanıcılar için başlangıç seviyesi', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (2, N'Girişimci Seviyesi ', N'Platformda etkin katılım gösteren ve deneyim kazananlar için', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (3, N'Orta Seviye ', N'Temel becerilere sahip ve orta düzeyde deneyime sahip olanlar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (4, N'Uzman Seviyesi ', N'Alanlarında uzmanlaşmış ve ileri düzeyde deneyime sahip olanlar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (5, N'İleri Seviye  ', N' Orta seviyenin ötesinde, ileri düzeyde becerilere sahip olanlar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (6, N' Lider Seviyesi ', N' Toplulukta liderlik yapabilen ve uzmanlığını kanıtlamış kullanıcılar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (7, N'Master Seviyesi', N'Platformun en deneyimli ve etkili kullanıcıları için', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (8, N'Gelişen Seviye  ', N'Başlangıç ve orta seviye arasında, yeni beceriler geliştirenler', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (9, N'Profesyonel Seviye ', N'İş alanlarında profesyonel deneyime sahip olanlar için', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (10, N'Mentor Seviyesi ', N'Topluluğa rehberlik eden, yeni kullanıcılara yardımcı olanlar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (11, N'Expert Seviyesi  ', N'Belirli bir alanda uzmanlık kazanmış ve bilgi birikimine sahip olanlar', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (12, N'Innovator Seviyesi ', N'Yaratıcı ve yenilikçi projeler geliştirenler için ', NULL)
INSERT [dbo].[KullaniciSeviyeleri] ([SeviyeİD], [SeviyeAdi], [SeviyeAciklama], [ResimID]) VALUES (13, N'Diplomat Seviyesi ', N'Topluluğun barış ve uyumunu sağlayan, çatışmaları çözenler ', NULL)
SET IDENTITY_INSERT [dbo].[KullaniciSeviyeleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kurslar] ON 

INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (1, N'Python ile Veri Analitiği ve Makine Öğrenimi', 6, 1, N'Orta', N'Bu kurs, Python kullanarak veri analizi ve makine öğrenimi temellerini kapsar.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (2, N'JavaScript ile Dinamik Web Uygulamaları', 7, 3, N'Orta', N'JavaScript''in kullanımını web geliştirme alanında öğrenmek için ideal bir kurs.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (3, N'Java ile Web Geliştirme', 8, 6, N'İleri', N'Java''nın web geliştirme alanındaki kullanımını öğrenmek için ileri düzey bir kurs.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (4, N'C# ile Oyun Geliştirme', 9, 4, N'İleri', N'	Unity gibi popüler oyun motorlarıyla C# kullanarak oyun geliştirmeyi öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (5, N'Swift ile iOS Uygulama Geliştirme', 11, 5, N'Orta', N'Swift''in kullanımını iOS platformunda uygulama geliştirmek için öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (6, N'C++ ile Oyun Motorları ve Grafik Programlama', 12, 4, N'İleri', N'Unreal Engine gibi oyun motorlarında C++ kullanımını öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (7, N'SQL ile Veritabanı Tasarımı ve Sorgulama', 17, 6, N'Orta', N'İlişkisel veritabanları üzerinde sorgulama ve yönetim becerilerini geliştirin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (9, N'PHP ile Web Geliştirme', 18, 3, N'Orta', N'	Sunucu tarafında işlenen web uygulamaları geliştirmek için PHP kullanımını öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (10, N'	Ruby ile Web Geliştirme', 20, 4, N'Orta', N'Ruby kullanarak web uygulamaları geliştirmenin temellerini öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (11, N'	Go ile Bulut Hizmetleri ve Dağıtık Sistemler', 21, 8, N'İleri', N'Büyük ölçekli bulut uygulamaları geliştirmek için Go kullanımını öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (12, N'	C ile Mikrodenetleyiciler ve Gömülü Sistemler Programlama', 22, 7, N'Orta', N'Gömülü sistemler ve mikrodenetleyiciler için C programlamayı öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (16, N'Solidity ile Akıllı Sözleşmeler (Smart Contracts)', 23, 24, N'İleri', N'Blokzinciri teknolojisi üzerine akıllı sözleşmeleri Solidity ile kodlamayı öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (17, N'Bash (Shell Scripting) ile Otomasyon ve İşletme', 27, 27, N'Orta', N'Betik programlama ve otomasyon alanında Bash kullanımını öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (18, N'Julia ile Bilimsel Hesaplamalar', 28, 30, N'Orta', N'Hızlı ve etkili bilimsel hesaplamalar için Julia programlamayı öğrenin.', NULL, NULL)
INSERT [dbo].[Kurslar] ([KursİD], [KursAdi], [DilİD], [KonuİD], [KursSeviyesi], [KursAciklama], [ResimID], [resim]) VALUES (19, N'R ile Veri Analizi ve İş Zekası', 30, 5, N'Orta', N'İstatistiksel analiz ve veri görselleştirme için R programlamayı öğrenin.', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Kurslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Sektorler] ON 

INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (10, N'Veri Bilimi ve Yapay Zeka', 6, NULL, N'sektorid10_2.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (11, N'Web Geliştirme', 7, NULL, N'sektorid11_2.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (12, N'Bulut Bilişim', 8, NULL, N'sektorid12.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (13, N'Siber Güvenlik', 20, NULL, N'sektorid13.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (15, N'Finansal Teknoloji (Fintech)', 23, NULL, N'sektorid15.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (16, N'Yazılım Test Otomasyonu', 6, NULL, N'sektorid16_2.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (17, N'Bilimsel Hesaplamalar', 26, NULL, N'sektorid17.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (18, N'Yazılım Otomasyonu ve Yapılandırma Yönetimi', 27, NULL, N'sektorid18.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (19, N'Oyun Geliştirme', 9, NULL, N'sektorid19.png')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (20, N'Mobil Uygulama Geliştirme', 11, NULL, N'sektorid20.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (21, N'Veritabanı Yönetimi', 17, NULL, N'sektorid21.jpeg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (22, N'Gömülü Sistemler', 22, NULL, N'sektorid22.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (23, N'Bulut Tabanlı Uygulamalar', 21, NULL, N'sektorid23.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (24, N'Akıllı Sözleşmeler (Smart Contracts)', 23, NULL, N'sektorid24.jpg')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (25, N'Makine Öğrenimi ve Derin Öğrenme', 28, NULL, N'sektorid25.webp')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (26, N'Yazılım Otomasyonu ve DevOps', 29, NULL, N'sektorid26.webp')
INSERT [dbo].[Sektorler] ([SektorID], [SektorAdi], [PopulerYazilimDiliİD], [ResimID], [resim]) VALUES (27, N'Veri Analizi ve İş Zekası', 30, NULL, N'sektorid27.jpeg')
SET IDENTITY_INSERT [dbo].[Sektorler] OFF
GO
/****** Object:  Index [UQ_SektorİD]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[DilKonulari] ADD  CONSTRAINT [UQ_SektorİD] UNIQUE NONCLUSTERED 
(
	[SektorİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Eposta]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[Kullanicilar] ADD  CONSTRAINT [UQ_Eposta] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_KullaniciAdi]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[Kullanicilar] ADD  CONSTRAINT [UQ_KullaniciAdi] UNIQUE NONCLUSTERED 
(
	[KullaniciAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Kullanicilar]    Script Date: 25.03.2024 22:21:52 ******/
CREATE NONCLUSTERED INDEX [IX_Kullanicilar] ON [dbo].[Kullanicilar]
(
	[KullaniciİD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Eposta_Kullanici]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[KullaniciProfili] ADD  CONSTRAINT [UQ_Eposta_Kullanici] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Kullanici_Adi]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[KullaniciProfili] ADD  CONSTRAINT [UQ_Kullanici_Adi] UNIQUE NONCLUSTERED 
(
	[KullaniciAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_YAZİLİMDİLİD]    Script Date: 25.03.2024 22:21:52 ******/
ALTER TABLE [dbo].[Sektorler] ADD  CONSTRAINT [UQ_YAZİLİMDİLİD] UNIQUE NONCLUSTERED 
(
	[SektorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Basarilar]  WITH CHECK ADD  CONSTRAINT [FK_Basarilar_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[Basarilar] CHECK CONSTRAINT [FK_Basarilar_Kullanicilar]
GO
ALTER TABLE [dbo].[Basarilar]  WITH CHECK ADD  CONSTRAINT [FK_Basarilar_Sertifikalar] FOREIGN KEY([SertifikaİD])
REFERENCES [dbo].[Sertifikalar] ([SertifikaİD])
GO
ALTER TABLE [dbo].[Basarilar] CHECK CONSTRAINT [FK_Basarilar_Sertifikalar]
GO
ALTER TABLE [dbo].[Bloglar]  WITH CHECK ADD  CONSTRAINT [FK_Bloglar_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[Bloglar] CHECK CONSTRAINT [FK_Bloglar_Kullanicilar]
GO
ALTER TABLE [dbo].[Bloglar]  WITH CHECK ADD  CONSTRAINT [FK_Bloglar_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Bloglar] CHECK CONSTRAINT [FK_Bloglar_Resimler]
GO
ALTER TABLE [dbo].[CalismaGruplari]  WITH CHECK ADD  CONSTRAINT [FK_CalismaGruplari_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[CalismaGruplari] CHECK CONSTRAINT [FK_CalismaGruplari_Diller]
GO
ALTER TABLE [dbo].[CalismaGruplari]  WITH CHECK ADD  CONSTRAINT [FK_CalismaGruplari_Konular] FOREIGN KEY([KonuİD])
REFERENCES [dbo].[Konular] ([KonuİD])
GO
ALTER TABLE [dbo].[CalismaGruplari] CHECK CONSTRAINT [FK_CalismaGruplari_Konular]
GO
ALTER TABLE [dbo].[DilKonulari]  WITH CHECK ADD  CONSTRAINT [FK_DilKonulari_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[DilKonulari] CHECK CONSTRAINT [FK_DilKonulari_Diller]
GO
ALTER TABLE [dbo].[DilKonulari]  WITH CHECK ADD  CONSTRAINT [FK_DilKonulari_Konular] FOREIGN KEY([KonuİD])
REFERENCES [dbo].[Konular] ([KonuİD])
GO
ALTER TABLE [dbo].[DilKonulari] CHECK CONSTRAINT [FK_DilKonulari_Konular]
GO
ALTER TABLE [dbo].[DilKonulari]  WITH CHECK ADD  CONSTRAINT [FK_DilKonulari_Sektorler] FOREIGN KEY([SektorİD])
REFERENCES [dbo].[Sektorler] ([SektorID])
GO
ALTER TABLE [dbo].[DilKonulari] CHECK CONSTRAINT [FK_DilKonulari_Sektorler]
GO
ALTER TABLE [dbo].[Diller]  WITH CHECK ADD  CONSTRAINT [FK_Diller_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Diller] CHECK CONSTRAINT [FK_Diller_Resimler]
GO
ALTER TABLE [dbo].[Diller]  WITH CHECK ADD  CONSTRAINT [FK_Diller_Resimler1] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Diller] CHECK CONSTRAINT [FK_Diller_Resimler1]
GO
ALTER TABLE [dbo].[Diller]  WITH CHECK ADD  CONSTRAINT [FK_Diller_Sektorler] FOREIGN KEY([SektorİD])
REFERENCES [dbo].[Sektorler] ([SektorID])
GO
ALTER TABLE [dbo].[Diller] CHECK CONSTRAINT [FK_Diller_Sektorler]
GO
ALTER TABLE [dbo].[EgitimKaynaklari]  WITH CHECK ADD  CONSTRAINT [FK_EgitimKaynaklari_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[EgitimKaynaklari] CHECK CONSTRAINT [FK_EgitimKaynaklari_Diller]
GO
ALTER TABLE [dbo].[EgitimKaynaklari]  WITH CHECK ADD  CONSTRAINT [FK_EgitimKaynaklari_Kategoriler] FOREIGN KEY([KategoriİD])
REFERENCES [dbo].[Kategoriler] ([KategoriİD])
GO
ALTER TABLE [dbo].[EgitimKaynaklari] CHECK CONSTRAINT [FK_EgitimKaynaklari_Kategoriler]
GO
ALTER TABLE [dbo].[İndirimKuponlari]  WITH CHECK ADD  CONSTRAINT [FK_İndirimKuponlari_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[İndirimKuponlari] CHECK CONSTRAINT [FK_İndirimKuponlari_Resimler]
GO
ALTER TABLE [dbo].[Kategoriler]  WITH CHECK ADD  CONSTRAINT [FK_Kategoriler_Kategoriler] FOREIGN KEY([AnaKategoriİD])
REFERENCES [dbo].[Kategoriler] ([KategoriİD])
GO
ALTER TABLE [dbo].[Kategoriler] CHECK CONSTRAINT [FK_Kategoriler_Kategoriler]
GO
ALTER TABLE [dbo].[Kaynaklar]  WITH CHECK ADD  CONSTRAINT [FK_Kaynaklar_KullaniciSeviyeleri] FOREIGN KEY([SeviyeİD])
REFERENCES [dbo].[KullaniciSeviyeleri] ([SeviyeİD])
GO
ALTER TABLE [dbo].[Kaynaklar] CHECK CONSTRAINT [FK_Kaynaklar_KullaniciSeviyeleri]
GO
ALTER TABLE [dbo].[Kaynaklar]  WITH CHECK ADD  CONSTRAINT [FK_Kaynaklar_Kurslar] FOREIGN KEY([KursİD])
REFERENCES [dbo].[Kurslar] ([KursİD])
GO
ALTER TABLE [dbo].[Kaynaklar] CHECK CONSTRAINT [FK_Kaynaklar_Kurslar]
GO
ALTER TABLE [dbo].[Kaynaklar]  WITH CHECK ADD  CONSTRAINT [FK_Kaynaklar_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Kaynaklar] CHECK CONSTRAINT [FK_Kaynaklar_Resimler]
GO
ALTER TABLE [dbo].[Konular]  WITH CHECK ADD  CONSTRAINT [FK_Konular_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Konular] CHECK CONSTRAINT [FK_Konular_Resimler]
GO
ALTER TABLE [dbo].[Konular]  WITH CHECK ADD  CONSTRAINT [FK_Konular_Sektorler] FOREIGN KEY([SektorID])
REFERENCES [dbo].[Sektorler] ([SektorID])
GO
ALTER TABLE [dbo].[Konular] CHECK CONSTRAINT [FK_Konular_Sektorler]
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciEtkilesimleri_Kaynaklar] FOREIGN KEY([KaynakİD])
REFERENCES [dbo].[Kaynaklar] ([KaynakİD])
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri] CHECK CONSTRAINT [FK_KullaniciEtkilesimleri_Kaynaklar]
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciEtkilesimleri_Kaynaklar1] FOREIGN KEY([KaynakİD])
REFERENCES [dbo].[Kaynaklar] ([KaynakİD])
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri] CHECK CONSTRAINT [FK_KullaniciEtkilesimleri_Kaynaklar1]
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciEtkilesimleri_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[KullaniciEtkilesimleri] CHECK CONSTRAINT [FK_KullaniciEtkilesimleri_Kullanicilar]
GO
ALTER TABLE [dbo].[KullaniciFavorileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciFavorileri_EgitimKaynaklari] FOREIGN KEY([KaynakİD])
REFERENCES [dbo].[EgitimKaynaklari] ([KaynakİD])
GO
ALTER TABLE [dbo].[KullaniciFavorileri] CHECK CONSTRAINT [FK_KullaniciFavorileri_EgitimKaynaklari]
GO
ALTER TABLE [dbo].[KullaniciFavorileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciFavorileri_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[KullaniciFavorileri] CHECK CONSTRAINT [FK_KullaniciFavorileri_Kullanicilar]
GO
ALTER TABLE [dbo].[KullaniciGeriBildirimleri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciGeriBildirimleri_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[KullaniciGeriBildirimleri] CHECK CONSTRAINT [FK_KullaniciGeriBildirimleri_Kullanicilar]
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri]  WITH CHECK ADD  CONSTRAINT [FK_Kullaniciİstatistikleri_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri] CHECK CONSTRAINT [FK_Kullaniciİstatistikleri_Diller]
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri]  WITH CHECK ADD  CONSTRAINT [FK_Kullaniciİstatistikleri_Konular] FOREIGN KEY([KonuİD])
REFERENCES [dbo].[Konular] ([KonuİD])
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri] CHECK CONSTRAINT [FK_Kullaniciİstatistikleri_Konular]
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri]  WITH CHECK ADD  CONSTRAINT [FK_Kullaniciİstatistikleri_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri] CHECK CONSTRAINT [FK_Kullaniciİstatistikleri_Kullanicilar]
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri]  WITH CHECK ADD  CONSTRAINT [FK_Kullaniciİstatistikleri_KullaniciSeviyeleri] FOREIGN KEY([SeviyeİD])
REFERENCES [dbo].[KullaniciSeviyeleri] ([SeviyeİD])
GO
ALTER TABLE [dbo].[Kullaniciİstatistikleri] CHECK CONSTRAINT [FK_Kullaniciİstatistikleri_KullaniciSeviyeleri]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Kullanicilar_KullaniciSeviyeleri] FOREIGN KEY([SeviyeİD])
REFERENCES [dbo].[KullaniciSeviyeleri] ([SeviyeİD])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_KullaniciSeviyeleri]
GO
ALTER TABLE [dbo].[KullaniciProfili]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciProfili_Kullanicilar_Email] FOREIGN KEY([Email])
REFERENCES [dbo].[Kullanicilar] ([Email])
GO
ALTER TABLE [dbo].[KullaniciProfili] CHECK CONSTRAINT [FK_KullaniciProfili_Kullanicilar_Email]
GO
ALTER TABLE [dbo].[KullaniciProfili]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciProfili_Kullanicilar_KullaniciAdi] FOREIGN KEY([KullaniciAdi])
REFERENCES [dbo].[Kullanicilar] ([KullaniciAdi])
GO
ALTER TABLE [dbo].[KullaniciProfili] CHECK CONSTRAINT [FK_KullaniciProfili_Kullanicilar_KullaniciAdi]
GO
ALTER TABLE [dbo].[KullaniciProfili]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciProfili_Kullanicilar_KullaniciİD] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[KullaniciProfili] CHECK CONSTRAINT [FK_KullaniciProfili_Kullanicilar_KullaniciİD]
GO
ALTER TABLE [dbo].[KullaniciProfili]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciProfili_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[KullaniciProfili] CHECK CONSTRAINT [FK_KullaniciProfili_Resimler]
GO
ALTER TABLE [dbo].[KullaniciSeviyeleri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciSeviyeleri_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[KullaniciSeviyeleri] CHECK CONSTRAINT [FK_KullaniciSeviyeleri_Resimler]
GO
ALTER TABLE [dbo].[Kurslar]  WITH CHECK ADD  CONSTRAINT [FK_Kurslar_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[Kurslar] CHECK CONSTRAINT [FK_Kurslar_Diller]
GO
ALTER TABLE [dbo].[Kurslar]  WITH CHECK ADD  CONSTRAINT [FK_Kurslar_Konular] FOREIGN KEY([KonuİD])
REFERENCES [dbo].[Konular] ([KonuİD])
GO
ALTER TABLE [dbo].[Kurslar] CHECK CONSTRAINT [FK_Kurslar_Konular]
GO
ALTER TABLE [dbo].[Kurslar]  WITH CHECK ADD  CONSTRAINT [FK_Kurslar_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Kurslar] CHECK CONSTRAINT [FK_Kurslar_Resimler]
GO
ALTER TABLE [dbo].[ProjeOdevTakip]  WITH CHECK ADD  CONSTRAINT [FK_ProjeOdevTakip_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[ProjeOdevTakip] CHECK CONSTRAINT [FK_ProjeOdevTakip_Kullanicilar]
GO
ALTER TABLE [dbo].[ProjeOdevTakip]  WITH CHECK ADD  CONSTRAINT [FK_ProjeOdevTakip_Kurslar] FOREIGN KEY([KursİD])
REFERENCES [dbo].[Kurslar] ([KursİD])
GO
ALTER TABLE [dbo].[ProjeOdevTakip] CHECK CONSTRAINT [FK_ProjeOdevTakip_Kurslar]
GO
ALTER TABLE [dbo].[Referanslar]  WITH CHECK ADD  CONSTRAINT [FK_Referanslar_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[Referanslar] CHECK CONSTRAINT [FK_Referanslar_Diller]
GO
ALTER TABLE [dbo].[Referanslar]  WITH CHECK ADD  CONSTRAINT [FK_Referanslar_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Referanslar] CHECK CONSTRAINT [FK_Referanslar_Resimler]
GO
ALTER TABLE [dbo].[Sayac]  WITH CHECK ADD  CONSTRAINT [FK_Sayac_Kaynaklar1] FOREIGN KEY([KaynakID])
REFERENCES [dbo].[Kaynaklar] ([KaynakİD])
GO
ALTER TABLE [dbo].[Sayac] CHECK CONSTRAINT [FK_Sayac_Kaynaklar1]
GO
ALTER TABLE [dbo].[Sektorler]  WITH CHECK ADD  CONSTRAINT [FK_Sektorler_Diller] FOREIGN KEY([PopulerYazilimDiliİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[Sektorler] CHECK CONSTRAINT [FK_Sektorler_Diller]
GO
ALTER TABLE [dbo].[Sektorler]  WITH CHECK ADD  CONSTRAINT [FK_Sektorler_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Sektorler] CHECK CONSTRAINT [FK_Sektorler_Resimler]
GO
ALTER TABLE [dbo].[Sertifikalar]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikalar_Kullanicilar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[Sertifikalar] CHECK CONSTRAINT [FK_Sertifikalar_Kullanicilar]
GO
ALTER TABLE [dbo].[Sertifikalar]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikalar_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Sertifikalar] CHECK CONSTRAINT [FK_Sertifikalar_Resimler]
GO
ALTER TABLE [dbo].[SoruCevap]  WITH CHECK ADD  CONSTRAINT [FK_SoruCevap_Diller] FOREIGN KEY([DilİD])
REFERENCES [dbo].[Diller] ([DilİD])
GO
ALTER TABLE [dbo].[SoruCevap] CHECK CONSTRAINT [FK_SoruCevap_Diller]
GO
ALTER TABLE [dbo].[Yoneticiler]  WITH CHECK ADD  CONSTRAINT [FK_Yoneticiler_Resimler] FOREIGN KEY([ResimID])
REFERENCES [dbo].[Resimler] ([ResimID])
GO
ALTER TABLE [dbo].[Yoneticiler] CHECK CONSTRAINT [FK_Yoneticiler_Resimler]
GO
ALTER TABLE [dbo].[Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Yorumlar_Kullanicilar_Yorumlar] FOREIGN KEY([KullaniciİD])
REFERENCES [dbo].[Kullanicilar] ([KullaniciİD])
GO
ALTER TABLE [dbo].[Yorumlar] CHECK CONSTRAINT [FK_Yorumlar_Kullanicilar_Yorumlar]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aynı E-posta Olmamalı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kullanicilar', @level2type=N'CONSTRAINT',@level2name=N'UQ_Eposta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kullanıcı Adı Benzersiz Olmalı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Kullanicilar', @level2type=N'CONSTRAINT',@level2name=N'UQ_KullaniciAdi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Aynı E-posta Olmamalı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KullaniciProfili', @level2type=N'CONSTRAINT',@level2name=N'UQ_Eposta_Kullanici'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kullanıcı Adı Benzersiz Olmalı' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KullaniciProfili', @level2type=N'CONSTRAINT',@level2name=N'UQ_Kullanici_Adi'
GO
