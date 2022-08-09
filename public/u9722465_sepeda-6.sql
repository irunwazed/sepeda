-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2022 at 08:07 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9722465_sepeda`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_level` tinyint(4) NOT NULL,
  `login_aktif` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `login_nama`, `login_email`, `login_nomor_hp`, `login_username`, `login_password`, `login_foto`, `login_level`, `login_aktif`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL, 'aka', '$2y$10$4eELEgXAr2.eoxCn6fOcm.8MnqnTM45Gy6xLklUdQ.Lxh7xok2oPy', NULL, 1, 1, NULL, NULL),
(2, 'Administrator', NULL, NULL, 'admin', '$2y$10$dRGGh29yGyODTNDMod3IUOzE242AfWDAQhPcgnTTw3aojeqY5G8Sy', NULL, 2, 1, NULL, NULL),
(3, 'Dinas Pendidikan dan Kebudayaan', NULL, NULL, 'pendidikan', '$2y$10$ZJxgw3FbvBWbrUPJEG5yg.gXg4Do438tVycjloFULpG22qxVSS4gy', NULL, 3, 1, NULL, NULL),
(4, 'Rumah Sakit Umum Daerah Morowali', NULL, NULL, 'rsud', '$2y$10$s.AC.BM/jcudQgh8kn9/duwXavTLBbQGIBa2v4In27f0G/on8U3Ra', NULL, 3, 1, NULL, NULL),
(5, 'Rumah Sakit Pratama', NULL, NULL, 'rs-pratama', '$2y$10$Ds/GhMjb/R3yZkkz8Cg6bO.ug/PwKTFRIcOqfm6AJPyGMtzAta2iO', NULL, 3, 1, NULL, NULL),
(6, 'Dinas Kesehatan, Pengendalian Penduduk dan Keluarga Berencana', NULL, NULL, 'dinkes', '$2y$10$ryU3AzsZv94bbZpRoxTh8eweeWnqFJf3aIP5rmvteRTQUmej3eukm', NULL, 3, 1, NULL, NULL),
(7, 'Puskesmas Ulunambo', NULL, NULL, 'puskesmas_ulunambo', '$2y$10$px8uI/SckRAP0vJf3cHdJu6rtCl8O8vGB4F4gK1gDY5v.c/D1wesO', NULL, 3, 1, NULL, NULL),
(8, 'Puskesmas Kaleroang', NULL, NULL, 'puskesmas_kaleroang', '$2y$10$RWhtBfz4vXWEHhcvYydrOO/rdsjoaHRBSkULg26QLOZS7NTc/2QAa', NULL, 3, 1, NULL, NULL),
(9, 'Puskesmas Lafeu', NULL, NULL, 'puskesmas_lafeu', '$2y$10$ptywylcbsgs.E2eXTOLTKOcjhOhRN1hWwIfve.5Uyy.d0Ada/MdC2', NULL, 3, 1, NULL, NULL),
(10, 'Puskesmas Bahodopi', NULL, NULL, 'puskesmas_bahodopi', '$2y$10$QFb1i/bI33d8eMGKLsoXv.ZrwBWVjKshnwJp4cJEZcVb4AAfSKlcW', NULL, 3, 1, NULL, NULL),
(11, 'Puskesmas Bahomotefe', NULL, NULL, 'puskesmas_bahomotefe', '$2y$10$5Y5rChKKkLc2bfX/Xc3Qt.G8DU8xUwG9RCcV008g2drEeiK4LyTEm', NULL, 3, 1, NULL, NULL),
(12, 'Puskesmas Bungku', NULL, NULL, 'puskesmas_bungku', '$2y$10$5HAZb4nNfVJcve76Q5Z/h.gCXkkZLMbpJOVH4tNM3s3/mfnAJD9ES', NULL, 3, 1, NULL, NULL),
(13, 'Puskesmas Wosu', NULL, NULL, 'puskesmas_wosu', '$2y$10$XFnDolhJVJcLhoERDHZ1murW1XkO3Ca4VNyjr6KE4RRC05lOw908y', NULL, 3, 1, NULL, NULL),
(14, 'Puskesmas Bahonsuai', NULL, NULL, 'puskesmas_bahonsuai', '$2y$10$89uvL0YbiCKpYzMdsGmCAe5MeYc3AsNlyLSXqTqBQpRmap/n9Ptea', NULL, 3, 1, NULL, NULL),
(15, 'Puskesmas Laantula Jaya', NULL, NULL, 'puskesmas_jaya', '$2y$10$tb6tMqAnTP7e2yySudbnFOWv/1nUZfaaEUpV7EUhpRlui8L.ARgkS', NULL, 3, 1, NULL, NULL),
(16, 'Puskesmas Tanjung Harapan', NULL, NULL, 'puskesmas_harapan', '$2y$10$I9GtRQ6xvE.y9ccnyCSBV.CdwO514MvjmAKdJcWsv4BmbkgAZuSaC', NULL, 3, 1, NULL, NULL),
(17, 'Puskesmas Fonuasingko', NULL, NULL, 'puskesmas_fonuasingko', '$2y$10$KSMUzConC4CjlIryRACYpedaDn0sF61Zv2rLAe49VHwpvpl1Hbyg.', NULL, 3, 1, NULL, NULL),
(18, 'Dinas Pekerjaan Umum dan Penataan Ruang', NULL, NULL, 'pu', '$2y$10$ab95W51w923L7yYDhb1W2uHg9Ogj0CG2CeuF0Qaak2qejsZlbljxi', NULL, 3, 1, NULL, NULL),
(19, 'Dinas Perumahan, Kawasan Pemukiman dan Pertanahan', NULL, NULL, 'perumahan', '$2y$10$/tFPLluQ1U4nPP94QfeImuUYiKeSPSg/deX515IEIMRKCCf4aytW.', NULL, 3, 1, NULL, NULL),
(20, 'Badan Penanggulangan Bencana Daerah', NULL, NULL, 'bencana', '$2y$10$brHZQKT6dS.dpxObxXLyAeTqtlFN.7QAiyRtZar.mWRWWHq7QCv9O', NULL, 3, 1, NULL, NULL),
(21, 'Satuan Polisi Pamongpraja', NULL, NULL, 'polpp', '$2y$10$hUSKV.Uhm.oL.FQ7hIxTxe2yqE17ufd5q7tFeScXO.oMOBBd.z3Gu', NULL, 3, 1, NULL, NULL),
(22, 'Dinas Sosial', NULL, NULL, 'sosial', '$2y$10$TUw4E8OId55d9I689ZzwdeJ7pQZPvcof0K/k4le75k71lZe7JOSdy', NULL, 3, 1, NULL, NULL),
(23, 'Dinas Transmigrasi Dan Tenaga Kerja Daerah', NULL, NULL, 'transmigrasi', '$2y$10$wo5k4SvWTyiReLjXXm/4Z.dNKNNKozapM8XL8kCpl2m1mQ4mNPzzG', NULL, 3, 1, NULL, NULL),
(24, 'Dinas Pertanian Dan Ketahanan Pangan', NULL, NULL, 'pertanian', '$2y$10$riLIhUSk8jltJWkSM/UZyunSlASJot/Thv/MjeOzuj.CDTLguhMjO', NULL, 3, 1, NULL, NULL),
(25, 'Dinas Lingkungan Hidup Daerah', NULL, NULL, 'dlhd', '$2y$10$zJoey9RnO2NNwo.Q6a9O6.aSmSr2dYK5dw80GoTcu2alksK2ZND2G', NULL, 3, 1, NULL, NULL),
(26, 'Dinas Kependudukan dan Pencatatan Sipil Daerah', NULL, NULL, 'capil', '$2y$10$9VrPvsoYLQovfmraQ..JDuxoTDF/HNb66fd5uHI9s1QIZhwg7kkhK', NULL, 3, 1, NULL, NULL),
(27, 'Dinas Pemberdayaan Masyarakat, Desa,Pemberdayaan Perempuan dan Perlindungan Anak', NULL, NULL, 'pemdes', '$2y$10$0j2m4nI3UWwHGjO8cs/fdOPs5emj9LYdwptSg8uO7j6MuyTxi6ESu', NULL, 3, 1, NULL, NULL),
(28, 'Dinas Perhubungan Daerah', NULL, NULL, 'perhubungan', '$2y$10$cVzEGLgo4ZZK02q0lPDA.e/WIUJ.TO1FbuaaEadgMUNpXvplV/Fv6', NULL, 3, 1, NULL, NULL),
(29, 'Dinas Komunikasi dan Informatika', NULL, NULL, 'kominfo', '$2y$10$YCnHJIj.ZxD2bj7Rapk2H.nA2mO1.btrSOSFUEPs7Psw3kJSaJL/K', NULL, 3, 1, NULL, NULL),
(30, 'Dinas Koperasi, Usaha Kecil, dan Menengah', NULL, NULL, 'koperasi', '$2y$10$c/49BV2LrIsiyMAUYOdF3uvNfG4sobkHpWsjVlKUOwmG4L5eTEmgi', NULL, 3, 1, NULL, NULL),
(31, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', NULL, NULL, 'ptsp', '$2y$10$V3ApD.9/LKHRK441ZkLEeefXNzx3Jzo/RJf5Ic3GSXtF1pWfshFki', NULL, 3, 1, NULL, NULL),
(32, 'Dinas Kepemudaan, Olahraga dan Pariwisata', NULL, NULL, 'dispora', '$2y$10$/goN9hgdFxHMFMabq6onSOjkwNXzeIgpgjOl806xh5KVc9GgAYqFy', NULL, 3, 1, NULL, NULL),
(33, 'Dinas Perpustakaan Daerah', NULL, NULL, 'puskesmas', '$2y$10$0lu3X7ZCXCYCfldzxXXeMOFq0xhMIVoYhgklXhBlvI7fQExlFInea', NULL, 3, 1, NULL, NULL),
(34, 'Dinas Perikanan Daerah', NULL, NULL, 'perikanan', '$2y$10$f4lImwpHmC2kJm0XRxDXXeuEUr3Go0LxKP2NUsGaGKqvQuzAvGfYK', NULL, 3, 1, NULL, NULL),
(35, 'Dinas Perdagangan Dan Perindustrian', NULL, NULL, 'perindag', '$2y$10$/vkyzNNIfkJyHPkO6yHgtOkn3Fg8QIByXkpGSADtNauanTLWBL8cC', NULL, 3, 1, NULL, NULL),
(36, 'SEKRETARIAT DAERAH', NULL, NULL, 'sekretariat_daerah', '$2y$10$bsIaU62VIfUU1Fq/3FrbQOHRL7am4.r5N3KmJOq0HBNOdn9MPmXp6', NULL, 3, 1, NULL, NULL),
(37, 'Bagian Administrasi Pembangunan', NULL, NULL, 'bagian_administrasi', '$2y$10$/d2it1oHMYki1LkYFl3uFu8OovBNOMPbrEr1a.rMH6FFMoxlObUTe', NULL, 3, 1, NULL, NULL),
(38, 'Bagian Ekonomi dan Sumber Daya Alam', NULL, NULL, 'bagian_ekonomi', '$2y$10$wPQYexjNfWTDL88SufOpkeVMC5vpU2LI2QhUzHnMwlkGS25Erw8Om', NULL, 3, 1, NULL, NULL),
(39, 'Bagian Hukum', NULL, NULL, 'bagian_hukum', '$2y$10$oxQh0rYhh07SrOyoBzQAXO32JTUkLZRlBAJx8B2BBFTHIl/I4YKIW', NULL, 3, 1, NULL, NULL),
(40, 'Bagian Kesejahteraan Rakyat', NULL, NULL, 'bagian_kesejahteraan', '$2y$10$yKAfFrbQ6N8QT02/RHcrwuYeG9A4Hq.PKpgJ/JKsq/sbdgc7FMeqe', NULL, 3, 1, NULL, NULL),
(41, 'Bagian Organisasi', NULL, NULL, 'bagian_organisasi', '$2y$10$dRY/0QVnXfgGYPCTPtEikOZR3mIJtZ2oKdJ.S1hGXEnwA5RIrcLSu', NULL, 3, 1, NULL, NULL),
(42, 'Bagian Pemerintahan', NULL, NULL, 'bagian_pemerintahan', '$2y$10$soybFPj/Y4SvqwSIvirpXeZBEd4ETOm1F093wz5FvNW0rn3IGElt6', NULL, 3, 1, NULL, NULL),
(43, 'Bagian Pengadaan Barang dan Jasa', NULL, NULL, 'bagian_pengadaan', '$2y$10$X.K8R/pwfLLHqEGRzvf84O4LwfNf8cOV/kLWzN7TDRJ8tAhA7G9um', NULL, 3, 1, NULL, NULL),
(44, 'Bagian Protokoler dan Komunikasi Pimpinan', NULL, NULL, 'bagian_protokoler', '$2y$10$zpUvd4O7QVLQxWrTo9.0b.90v2mFC7oYcrjWJm3ZSmTS4iT64jHQS', NULL, 3, 1, NULL, NULL),
(45, 'Bagian Umum', NULL, NULL, 'bagian_umum', '$2y$10$37qgcY/v3jmWS0PcVAoUAOp76Ue6oIN5JCarEjbBeObpiD0k58rDu', NULL, 3, 1, NULL, NULL),
(46, 'Sekretariat Dewan Perwakilan Rakyat Daerah', NULL, NULL, 'sekretariat_dewan', '$2y$10$Fh/pBv3Quag/l0FF3jxrcOJTSmi.xAGKzUBDnYj.eJi/L3J4Kh1ja', NULL, 3, 1, NULL, NULL),
(47, 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', NULL, NULL, 'bappeda', '$2y$10$q7TNsUcdwD6.JMMd2wC8hOrWjBZ4rbfXIIK4763xrxDGRjWwj.fJu', NULL, 3, 1, NULL, NULL),
(48, 'Badan Pengelola Keuangan dan Aset Daerah', NULL, NULL, 'bpkad', '$2y$10$6M0r9RMvDpMMYv8cuULL7.5ghd8xCHcAL6zWNwDRpdDOrsAG.BdUK', NULL, 3, 1, NULL, NULL),
(49, 'Badan Pengelola Pendapatan Daerah', NULL, NULL, 'pendapatan', '$2y$10$9ul0N9GkQ8N79j6qEUCAQevYZ11enAeDGuiRVA5Z6QeB7mQjRLPFG', NULL, 3, 1, NULL, NULL),
(50, 'Badan Kepegawaian Daerah dan Pengembangan Sumber Daya Manusia', NULL, NULL, 'bkd', '$2y$10$yqVndS5/nT15qqyd1D7WBOYA5B.DZVb.jb7eqcj7HdqL/SKzGR.E.', NULL, 3, 1, NULL, NULL),
(51, 'Inspektorat Daerah', NULL, NULL, 'inspektorat', '$2y$10$yR1WRZF6t6SiLikz/XPzv.P90h7J8jaElwZUnYtD.dRwy.J.JCHwe', NULL, 3, 1, NULL, NULL),
(52, 'Kecamatan Bahodopi', NULL, NULL, 'kecamatan_bahodopi', '$2y$10$WkXenigu/Ge29Bd32.FJVupzqkeKqi23hPvWElfXkR0kajB/pep3e', NULL, 3, 1, NULL, NULL),
(53, 'Kecamatan Bumi Raya', NULL, NULL, 'kecamatan_bumi', '$2y$10$9mejWG7ZKYfIc7LghYPF9e6NHewlH52i35OEBtfCJEREjNZB/Fobm', NULL, 3, 1, NULL, NULL),
(54, 'Kecamatan Bungku Barat', NULL, NULL, 'kecamatan_bungku_barat', '$2y$10$bI9/EqX11I6uPM9srZfY7OwN7tLncinpBWy0ho1TZL42lhXZczwfO', NULL, 3, 1, NULL, NULL),
(55, 'Kecamatan Bungku Pesisir', NULL, NULL, 'kecamatan_bungku_pesisir', '$2y$10$4YcbdvAsrzXPVaYpGduu4eElzsRnfe3m9TewkcxLKARIcgRLT/LL.', NULL, 3, 1, NULL, NULL),
(56, 'Kecamatan Bungku Selatan', NULL, NULL, 'kecamatan_bungku_selatan', '$2y$10$rdoIj4fFYCRQjbBMu9NWGuRqTWVv08JyFsawIRAUcw9I6zOJUnqE2', NULL, 3, 1, NULL, NULL),
(57, 'Kecamatan Bungku Tengah', NULL, NULL, 'kecamatan_bungku_tengah', '$2y$10$xujjuymexyqTEIuzFF8adOxC/MNRs9NLfMhu5doa6ugdxX/g/mjwe', NULL, 3, 1, NULL, NULL),
(58, 'Kelurahan Bungi', NULL, NULL, 'kelurahan_bungi', '$2y$10$QHL2WC8d1uuY365waT8sgOKfU.ryLwZI4vM5swdOxL7Jfx5Ju3Qku', NULL, 3, 1, NULL, NULL),
(59, 'Kelurahan Lamberea', NULL, NULL, 'kelurahan_lamberea', '$2y$10$kgf9ciFFIaVQTi/31UjUdO4djPKHxExLR6WnCyosiR6jDUvIAbkVq', NULL, 3, 1, NULL, NULL),
(60, 'Kelurahan Matano', NULL, NULL, 'kelurahan_matano', '$2y$10$YO44r.FhyTF1vXBtAZ.NyO.HijoZGj2A3nPthhqr06haHdhUA6euK', NULL, 3, 1, NULL, NULL),
(61, 'Kelurahan Marsaole', NULL, NULL, 'kelurahan_marsaole', '$2y$10$w3enNKGVQGeoKZMtjKyj9.em8bQlHnWapcRSbdKL06cF8ePlFlG7W', NULL, 3, 1, NULL, NULL),
(62, 'Kelurahan Tofoiso', NULL, NULL, 'kelurahan_tofoiso', '$2y$10$DynSDztzdNH/4ZKtvt36ueataGTFpicSSmpaFQcE7XPvxqBwZfppy', NULL, 3, 1, NULL, NULL),
(63, 'Kelurahan Mendui', NULL, NULL, 'kelurahan_mendui', '$2y$10$w7WXVXVxVmTyUeQc37Rkzuik42chNnQmOpVGyFCRvKmwp0/5I9/Qm', NULL, 3, 1, NULL, NULL),
(64, 'Kecamatan Bungku Timur', NULL, NULL, 'kecamatan_bungku', '$2y$10$g79V49WiSstclhezj1fGluqSeO0/wmhW7ePxFO2EiGZCBDWDGrw0C', NULL, 3, 1, NULL, NULL),
(65, 'Kecamatan Menui Kepulauan', NULL, NULL, 'kecamatan_menui', '$2y$10$JwU4zs.C1f5NUSRQ8VwX5eht/j37R0xr8a9klBRLV9A2oRm1kYbRS', NULL, 3, 1, NULL, NULL),
(66, 'Kelurahan Ulunambo', NULL, NULL, 'kelurahan_ulunambo', '$2y$10$d36aAVY8FuGgarfj5O5dSeQ7TyqtO4OfLKdUijAAPvfZXUh.Z68/a', NULL, 3, 1, NULL, NULL),
(67, 'Kecamatan Wita Ponda', NULL, NULL, 'kecamatan_wita', '$2y$10$AS96JJ6iZ3KJaRTAHkJhTON4Yp55xHyAfIwy9NomN7Kz0MfBwNnHO', NULL, 3, 1, NULL, NULL),
(68, 'Badan Kesatuan Bangsa dan Politik Daerah', NULL, NULL, 'kesbang', '$2y$10$V3q2T2p/z7X9zLeYNURtUOOKqRCLLerC2mX7efT27D5Jp8USDl.Ze', NULL, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_login_table', 1),
(2, '2021_04_25_000000_create_kecamatan_table', 1),
(3, '2021_04_25_000000_create_opd_table', 1),
(4, '2021_04_25_000000_create_pengaturan_table', 1),
(5, '2021_04_25_000001_create_kelurahan_table', 1),
(6, '2021_04_25_000001_create_login_opd_table', 1),
(7, '2021_04_25_000001_create_ref_sumber_dana_table', 1),
(8, '2021_04_25_000001_create_ref_urusan_table', 1),
(9, '2021_04_25_000002_create_ref_bidang_table', 1),
(10, '2021_04_25_000003_create_ref_program_table', 1),
(11, '2021_04_25_000004_create_ref_kegiatan_table', 1),
(12, '2021_04_25_000004_create_ref_sub_kegiatan_table', 1),
(13, '2021_04_25_000011_create_rpjmd_table', 1),
(14, '2021_04_25_000012_create_rpjmd_visi_table', 1),
(15, '2021_04_25_000013_create_rpjmd_misi_table', 1),
(16, '2021_04_25_000014_create_rpjmd_tujuan_table', 1),
(17, '2021_04_25_000015_create_rpjmd_tujuan_indikator_table', 1),
(18, '2021_04_25_000016_create_rpjmd_sasaran_table', 1),
(19, '2021_04_25_000017_create_rpjmd_sasaran_indikator_table', 1),
(20, '2021_04_25_000018_create_rpjmd_program_table', 1),
(21, '2021_04_25_000019_create_rpjmd_program_indikator_table', 1),
(22, '2021_04_25_000020_create_renstra_kegiatan_table', 1),
(23, '2021_04_25_000020_create_renstra_tujuan_table', 1),
(24, '2021_04_25_000021_create_renstra_kegiatan_indikator_table', 1),
(25, '2021_04_25_000021_create_renstra_sasaran_table', 1),
(26, '2021_04_25_000021_create_renstra_tujuan_indikator_table', 1),
(27, '2021_04_25_000022_create_renstra_sasaran_indikator_table', 1),
(28, '2021_04_25_000022_create_renstra_sub_kegiatan_table', 1),
(29, '2021_04_25_000023_create_renstra_sub_kegiatan_indikator_table', 1),
(30, '2021_04_25_000024_create_rkpd_sub_kegiatan_table', 1),
(31, '2021_04_25_000024_create_rkpd_sub_kegiatan_triwulan_table', 1),
(32, '2021_04_25_000025_create_rkpd_sub_kegiatan_indikator_table', 1),
(33, '2021_04_25_000026_create_rkpd_sub_kegiatan_indikator_sumber_dana_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `value`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'rpjmd_tahun', '2019', NULL, NULL, NULL),
(2, 'tahun', '4', NULL, NULL, NULL),
(3, 'triwulan', '3', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_bidang`
--

CREATE TABLE `ref_bidang` (
  `permen_ver` int(10) UNSIGNED NOT NULL,
  `urusan_kode` int(10) UNSIGNED NOT NULL,
  `bidang_kode` int(10) UNSIGNED NOT NULL,
  `bidang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_bidang`
--

INSERT INTO `ref_bidang` (`permen_ver`, `urusan_kode`, `bidang_kode`, `bidang_nama`, `created_at`, `updated_at`) VALUES
(1, 0, 0, '', NULL, NULL),
(1, 1, 1, 'URUSAN PEMERINTAHAN BIDANG PENDIDIKAN', NULL, NULL),
(1, 1, 2, 'URUSAN PEMERINTAHAN BIDANG KESEHATAN', NULL, NULL),
(1, 1, 3, 'URUSAN PEMERINTAHAN BIDANG PEKERJAAN UMUM DAN PENATAAN RUANG', NULL, NULL),
(1, 1, 4, 'URUSAN PEMERINTAHAN BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', NULL, NULL),
(1, 1, 5, 'URUSAN PEMERINTAHAN BIDANG KETENTERAMAN DAN KETERTIBAN UMUM SERTA PERLINDUNGAN MASYARAKAT', NULL, NULL),
(1, 1, 6, 'URUSAN PEMERINTAHAN BIDANG SOSIAL', NULL, NULL),
(1, 2, 7, 'URUSAN PEMERINTAHAN BIDANG TENAGA KERJA', NULL, NULL),
(1, 2, 8, 'URUSAN PEMERINTAHAN BIDANG PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK', NULL, NULL),
(1, 2, 9, 'URUSAN PEMERINTAHAN BIDANG PANGAN', NULL, NULL),
(1, 2, 10, 'URUSAN PEMERINTAHAN BIDANG PERTANAHAN', NULL, NULL),
(1, 2, 11, 'URUSAN PEMERINTAHAN BIDANG LINGKUNGAN HIDUP', NULL, NULL),
(1, 2, 12, 'URUSAN PEMERINTAHAN BIDANG ADMINISTRASI KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL),
(1, 2, 13, 'URUSAN PEMERINTAHAN BIDANG PEMBERDAYAAN MASYARAKAT DAN DESA', NULL, NULL),
(1, 2, 14, 'URUSAN PEMERINTAHAN BIDANG PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA', NULL, NULL),
(1, 2, 15, 'URUSAN PEMERINTAHAN BIDANG PERHUBUNGAN', NULL, NULL),
(1, 2, 16, 'URUSAN PEMERINTAHAN BIDANG KOMUNIKASI DAN INFORMATIKA', NULL, NULL),
(1, 2, 17, 'URUSAN PEMERINTAHAN BIDANG KOPERASI, USAHA KECIL, DAN MENENGAH', NULL, NULL),
(1, 2, 18, 'URUSAN PEMERINTAHAN BIDANG PENANAMAN MODAL', NULL, NULL),
(1, 2, 19, 'URUSAN PEMERINTAHAN BIDANG KEPEMUDAAN DAN OLAHRAGA', NULL, NULL),
(1, 2, 20, 'URUSAN PEMERINTAHAN BIDANG STATISTIK', NULL, NULL),
(1, 2, 21, 'URUSAN PEMERINTAHAN BIDANG PERSANDIAN', NULL, NULL),
(1, 2, 22, 'URUSAN PEMERINTAHAN BIDANG KEBUDAYAAN', NULL, NULL),
(1, 2, 23, 'URUSAN PEMERINTAHAN BIDANG PERPUSTAKAAN', NULL, NULL),
(1, 2, 24, 'URUSAN PEMERINTAHAN BIDANG KEARSIPAN', NULL, NULL),
(1, 3, 25, 'URUSAN PEMERINTAHAN BIDANG KELAUTAN DAN PERIKANAN', NULL, NULL),
(1, 3, 26, 'URUSAN PEMERINTAHAN BIDANG PARIWISATA', NULL, NULL),
(1, 3, 27, 'URUSAN PEMERINTAHAN BIDANG PERTANIAN', NULL, NULL),
(1, 3, 28, 'URUSAN PEMERINTAHAN BIDANG KEHUTANAN', NULL, NULL),
(1, 3, 29, 'URUSAN PEMERINTAHAN BIDANG ENERGI DAN SUMBER DAYA MINERAL', NULL, NULL),
(1, 3, 30, 'URUSAN PEMERINTAHAN BIDANG PERDAGANGAN', NULL, NULL),
(1, 3, 31, 'URUSAN PEMERINTAHAN BIDANG PERINDUSTRIAN', NULL, NULL),
(1, 3, 32, 'URUSAN PEMERINTAHAN BIDANG TRANSMIGRASI', NULL, NULL),
(1, 4, 1, 'SEKRETARIAT DAERAH', NULL, NULL),
(1, 4, 2, 'SEKRETARIAT DPRD', NULL, NULL),
(1, 5, 1, 'PERENCANAAN', NULL, NULL),
(1, 5, 2, 'KEUANGAN', NULL, NULL),
(1, 5, 3, 'KEPEGAWAIAN', NULL, NULL),
(1, 5, 4, 'PENDIDIKAN DAN PELATIHAN', NULL, NULL),
(1, 5, 5, 'PENELITIAN DAN PENGEMBANGAN', NULL, NULL),
(1, 5, 6, 'PENGELOLAAN PERBATASAN', NULL, NULL),
(1, 6, 1, 'INSPEKTORAT DAERAH', NULL, NULL),
(1, 7, 1, 'KECAMATAN', NULL, NULL),
(1, 8, 1, 'KESATUAN BANGSA DAN POLITIK', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kecamatan`
--

CREATE TABLE `ref_kecamatan` (
  `kecamatan_id` int(10) UNSIGNED NOT NULL,
  `kecamatan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_kegiatan`
--

CREATE TABLE `ref_kegiatan` (
  `permen_ver` int(10) UNSIGNED NOT NULL,
  `urusan_kode` int(10) UNSIGNED NOT NULL,
  `bidang_kode` int(10) UNSIGNED NOT NULL,
  `program_kode` int(10) UNSIGNED NOT NULL,
  `kegiatan_kode` int(10) UNSIGNED NOT NULL,
  `kegiatan_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_kegiatan`
--

INSERT INTO `ref_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 201, 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 202, 'Administrasi Keuangan Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 203, 'Administrasi Barang Milik Daerah pada Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 'Administrasi Pendapatan Daerah Kewenangan Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 205, 'Administrasi Kepegawaian Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 206, 'Administrasi Umum Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 207, 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', NULL, NULL),
(1, 0, 0, 1, 208, 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', NULL, NULL),
(1, 0, 0, 1, 209, 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', NULL, NULL),
(1, 0, 0, 1, 210, 'Peningkatan Pelayanan BLUD', NULL, NULL),
(1, 0, 0, 1, 211, 'Administrasi Keuangan dan Operasional Kepala Daerah dan Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 212, 'Fasilitasi Kerumahtanggaan Sekretariat Daerah', NULL, NULL),
(1, 0, 0, 1, 213, 'Penataan Organisasi', NULL, NULL),
(1, 0, 0, 1, 214, 'Pelaksanaan Protokol dan Komunikasi Pimpinan', NULL, NULL),
(1, 0, 0, 1, 215, 'Layanan Keuangan dan Kesejahteraan DPRD', NULL, NULL),
(1, 0, 0, 1, 216, 'Layanan Administrasi DPRD', NULL, NULL),
(1, 1, 1, 2, 201, 'Pengelolaan Pendidikan Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 202, 'Pengelolaan Pendidikan Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 203, 'Pengelolaan Pendidikan Anak Usia Dini (PAUD)', NULL, NULL),
(1, 1, 1, 2, 204, 'Pengelolaan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 3, 201, 'Penetapan Kurikulum Muatan Lokal Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 3, 202, 'Penetapan Kurikulum Muatan Lokal Pendidikan Anak Usia Dini dan Pendidikan Nonformal', NULL, NULL),
(1, 1, 1, 4, 201, 'Pemerataan Kuantitas dan Kualitas Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Dasar, PAUD, dan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 5, 201, 'Penerbitan Izin Pendidikan Dasar yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 5, 202, 'Penerbitan Izin PAUD dan Pendidikan Nonformal yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 6, 201, 'Pembinaan, Pengembangan dan Perlindungan Bahasa dan Sastra yang Penuturannya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 201, 'Penyediaan Fasilitas Pelayanan Kesehatan untuk UKM dan UKP Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 202, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 203, 'Penyelenggaraan Sistem Informasi Kesehatan secara Terintegrasi', NULL, NULL),
(1, 1, 2, 2, 204, 'Penerbitan Izin Rumah Sakit Kelas C, D dan Fasilitas Pelayanan Kesehatan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 3, 201, 'Pemberian Izin Praktik Tenaga Kesehatan di Wilayah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 3, 202, 'Perencanaan Kebutuhan dan Pendayagunaan Sumberdaya Manusia Kesehatan untuk UKP dan UKM di Wilayah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 3, 203, 'Pengembangan Mutu dan Peningkatan Kompetensi Teknis Sumber Daya Manusia Kesehatan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 4, 201, 'Pemberian Izin Apotek, Toko Obat, Toko Alat Kesehatan dan Optikal, Usaha Mikro Obat Tradisional (UMOT)', NULL, NULL),
(1, 1, 2, 4, 202, 'Pemberian Sertifikat Produksi untuk Sarana Produksi Alat Kesehatan Kelas 1 tertentu dan Perbekalan Kesehatan Rumah Tangga Kelas 1 Tertentu Perusahaan Rumah Tangga', NULL, NULL),
(1, 1, 2, 4, 203, 'Penerbitan Sertifikat Produksi Pangan Industri Rumah Tangga dan Nomor P-IRT sebagai Izin Produksi, untuk Produk Makanan Minuman Tertentu yang dapat Diproduksi oleh Industri Rumah Tangga', NULL, NULL),
(1, 1, 2, 4, 204, 'Penerbitan Sertifikat Laik Higiene Sanitasi Tempat Pengelolaan Makanan (TPM) antara lain Jasa Boga, Rumah Makan/Restoran dan Depot Air Minum (DAM)', NULL, NULL),
(1, 1, 2, 4, 205, 'Penerbitan Stiker Pembinaan pada Makanan Jajanan dan Sentra Makanan Jajanan', NULL, NULL),
(1, 1, 2, 4, 206, 'Pemeriksaan dan Tindak Lanjut Hasil Pemeriksaan Post Market pada Produksi dan Produk Makanan Minuman Industri Rumah Tangga', NULL, NULL),
(1, 1, 2, 5, 201, 'Advokasi, Pemberdayaan, Kemitraan, Peningkatan Peran serta Masyarakat dan Lintas Sektor Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 5, 202, 'Pelaksanaan Sehat dalam rangka Promotif Preventif Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 5, 203, 'Pengembangan dan Pelaksanaan Upaya Kesehatan Bersumber Daya Masyarakat (UKBM) Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 'Pengelolaan SDA dan Bangunan Pengaman Pantai pada Wilayah Sungai (WS) dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 202, 'Pengembangan dan Pengelolaan Sistem Irigasi Primer dan Sekunder pada Daerah Irigasi yang Luasnya dibawah 1000 Ha dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 3, 201, 'Pengelolaan dan Pengembangan Sistem Penyediaan Air Minum (SPAM) di Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 4, 201, 'Pengembangan Sistem dan Pengelolaan Persampahan di Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 5, 201, 'Pengelolaan dan Pengembangan Sistem Air Limbah Domestik dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 6, 201, 'Pengelolaan dan Pengembangan Sistem Drainase yang Terhubung Langsung dengan Sungai dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 7, 201, 'Penyelenggaraan Infrastruktur pada Permukiman di Kawasan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 'Penyelenggaraan Bangunan Gedung di Wilayah Daerah Kabupaten/Kota, Pemberian Izin Mendirikan Bangunan (IMB) dan Sertifikat Laik Fungsi Bangunan Gedung', NULL, NULL),
(1, 1, 3, 9, 201, 'Penyelenggaraan Penataan Bangunan dan Lingkungannya di Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 10, 201, 'Penyelenggaraan Jalan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 11, 201, 'Penyelenggaraan Pelatihan Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 'Penyelenggaraan Sistem Informasi Jasa Konstruksi Cakupan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 11, 203, 'Penerbitan Izin Usaha Jasa Konstruksi Nasional (Non Kecil dan Kecil)', NULL, NULL),
(1, 1, 3, 11, 204, 'Pengawasan Tertib Usaha, Tertib Penyelenggaraan dan Tertib Pemanfaatan Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 12, 201, 'Penetapan Rencana Tata Ruang Wilayah (RTRW) dan Rencana Rinci Tata Ruang (RRTR) Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 202, 'Koordinasi dan Sinkronisasi Perencanaan Tata Ruang Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 203, 'Koordinasi dan Sinkronisasi Pemanfaatan Ruang Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 204, 'Koordinasi dan Sinkronisasi Pengendalian Pemanfaatan Ruang Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 201, 'Pendataan Penyediaan dan Rehabilitasi Rumah Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 202, 'Sosialisasi dan Persiapan Penyediaan dan Rehabilitasi Rumah Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 203, 'Pembangunan dan Rehabilitasi Rumah Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 204, 'Pendistribusian dan Serah Terima Rumah bagi Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 205, 'Pembinaan Pengelolaan Rumah Susun Umum dan/atau Rumah Khusus', NULL, NULL),
(1, 1, 4, 2, 206, 'Penerbitan Izin Pembangunan dan Pengembangan Perumahan', NULL, NULL),
(1, 1, 4, 2, 207, 'Penerbitan Sertifikat Kepemilikan Bangunan Gedung (SKGB)', NULL, NULL),
(1, 1, 4, 3, 201, 'Penerbitan Izin Pembangunan dan Pengembangan Kawasan Permukiman', NULL, NULL),
(1, 1, 4, 3, 202, 'Penataan dan Peningkatan Kualitas Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, NULL),
(1, 1, 4, 3, 203, 'Peningkatan Kualitas Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, NULL),
(1, 1, 4, 4, 201, 'Pencegahan Perumahan dan Kawasan Permukiman Kumuh pada Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 5, 201, 'Urusan Penyelenggaraan PSU Perumahan', NULL, NULL),
(1, 1, 4, 6, 201, 'Sertifikasi dan Registrasi bagi Orang atau Badan Hukum yang Melaksanakan Perancangan dan Perencanaan Rumah serta Perencanaan Prasarana, Sarana dan Utilitas Umum PSU Tingkat Kemampuan Kecil', NULL, NULL),
(1, 1, 5, 2, 201, 'Penanganan Gangguan Ketenteraman dan Ketertiban Umum dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 2, 202, 'Penegakan Peraturan Daerah Kabupaten/Kota dan Peraturan Bupati/Wali Kota', NULL, NULL),
(1, 1, 5, 2, 203, 'Pembinaan Penyidik Pegawai Negeri Sipil (PPNS) Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 201, 'Pelayanan Informasi Rawan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 'Pelayanan Pencegahan dan Kesiapsiagaan Terhadap Bencana', NULL, NULL),
(1, 1, 5, 3, 203, 'Pelayanan Penyelamatan dan Evakuasi Korban Bencana', NULL, NULL),
(1, 1, 5, 3, 204, 'Penataan Sistem Dasar Penanggulangan Bencana', NULL, NULL),
(1, 1, 5, 4, 201, 'Pencegahan, Pengendalian, Pemadaman, Penyelamatan, dan Penanganan Bahan Berbahaya dan Beracun Kebakaran dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 4, 202, 'Inspeksi Peralatan Proteksi Kebakaran', NULL, NULL),
(1, 1, 5, 4, 203, 'Investigasi Kejadian Kebakaran', NULL, NULL),
(1, 1, 5, 4, 204, 'Pemberdayaan Masyarakat dalam Pencegahan Kebakaran', NULL, NULL),
(1, 1, 5, 4, 205, 'Penyelenggaraan Operasi Pencarian dan Pertolongan terhadap Kondisi Membahayakan Manusia', NULL, NULL),
(1, 1, 6, 2, 201, 'Pemberdayaan Sosial Komunitas Adat Terpencil (KAT)', NULL, NULL),
(1, 1, 6, 2, 202, 'Pengumpulan Sumbangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 2, 203, 'Pengembangan Potensi Sumber Kesejahteraan Sosial Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 3, 201, 'Pemulangan Warga Negara Migran Korban Tindak Kekerasan dari Titik Debarkasi di Daerah Kabupaten/Kota untuk dipulangkan ke Desa/Kelurahan Asal', NULL, NULL),
(1, 1, 6, 4, 201, 'Rehabilitasi Sosial Dasar Penyandang Disabilitas Terlantar, Anak Terlantar, Lanjut Usia Terlantar, serta Gelandangan Pengemis di Luar Panti Sosial', NULL, NULL),
(1, 1, 6, 4, 202, 'Rehabilitasi Sosial Penyandang Masalah Kesejahteraan Sosial (PMKS) Lainnya Bukan Korban HIV/AIDS dan NAPZA di Luar Panti Sosial', NULL, NULL),
(1, 1, 6, 5, 201, 'Pemeliharaan Anak-Anak Terlantar', NULL, NULL),
(1, 1, 6, 5, 202, 'Pengelolaan Data Fakir Miskin Cakupan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 6, 201, 'Perlindungan Sosial Korban Bencana Alam dan Sosial Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 6, 202, 'Penyelenggaraan Pemberdayaan Masyarakat terhadap Kesiapsiagaan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 7, 201, 'Pemeliharaan Taman Makam Pahlawan Nasional Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 2, 201, 'Penyusunan Rencana Tenaga Kerja (RTK)', NULL, NULL),
(1, 2, 7, 3, 201, 'Pelaksanaan Pelatihan berdasarkan Unit Kompetensi', NULL, NULL),
(1, 2, 7, 3, 202, 'Pembinaan Lembaga Pelatihan Kerja Swasta', NULL, NULL),
(1, 2, 7, 3, 203, 'Perizinan dan Pendaftaran Lembaga Pelatihan Kerja', NULL, NULL),
(1, 2, 7, 3, 204, 'Konsultansi Produktivitas pada Perusahaan Kecil', NULL, NULL),
(1, 2, 7, 3, 205, 'Pengukuran Produktivitas Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 4, 201, 'Pelayanan Antarkerja di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 4, 202, 'Penerbitan Izin Lembaga Penempatan Tenaga Kerja Swasta (LPTKS) dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 4, 203, 'Pengelolaan Informasi Pasar Kerja', NULL, NULL),
(1, 2, 7, 4, 204, 'Pelindungan PMI (Pra dan Purna Penempatan) di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 4, 205, 'Penerbitan Perpanjangan IMTA yang Lokasi Kerja dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 201, 'Pengesahan Peraturan Perusahaan dan Pendaftaran Perjanjian Kerja Bersama untuk Perusahaan yang hanya Beroperasi dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 202, 'Pencegahan dan Penyelesaian Perselisihan Hubungan Industrial, Mogok Kerja dan Penutupan Perusahaan di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 201, 'Pelembagaan Pengarusutamaan Gender (PUG) pada Lembaga Pemerintah Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 202, 'Pemberdayaan Perempuan Bidang Politik, Hukum, Sosial, dan Ekonomi pada Organisasi Kemasyarakatan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 203, 'Penguatan dan Pengembangan Lembaga Penyedia Layanan Pemberdayaan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 201, 'Pencegahan Kekerasan terhadap Perempuan Lingkup Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 202, 'Penyediaan Layanan Rujukan Lanjutan bagi Perempuan Korban Kekerasan yang Memerlukan Koordinasi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 203, 'Penguatan dan Pengembangan Lembaga Penyedia Layanan Perlindungan Perempuan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 201, 'Peningkatan Kualitas Keluarga dalam Mewujudkan Kesetaraan Gender (KG) dan Hak Anak Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 202, 'Penguatan dan Pengembangan Lembaga Penyedia Layanan Peningkatan Kualitas Keluarga dalam Mewujudkan KG dan Hak Anak yang Wilayah Kerjanya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 203, 'Penyediaan Layanan bagi Keluarga dalam Mewujudkan KG dan Hak Anak yang Wilayah Kerjanya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 5, 201, 'Pengumpulan, Pengolahan Analisis dan Penyajian Data Gender dan Anak Dalam Kelembagaan Data di Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 201, 'Pelembagaan PHA pada Lembaga Pemerintah, Nonpemerintah, dan Dunia Usaha Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 202, 'Penguatan dan Pengembangan Lembaga Penyedia Layanan Peningkatan Kualitas Hidup Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 201, 'Pencegahan Kekerasan Terhadap Anak yang Melibatkan para Pihak Lingkup Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 202, 'Penyediaan Layanan bagi Anak yang Memerlukan Perlindungan Khusus yang Memerlukan Koordinasi Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 203, 'Penguatan dan Pengembangan Lembaga Penyedia Layanan bagi Anak yang Memerlukan Perlindungan Khusus Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 2, 201, 'Penyediaan Infrastruktur dan Seluruh Pendukung Kemandirian Pangan sesuai Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 3, 201, 'Penyediaan dan Penyaluran Pangan Pokok atau Pangan Lainnya sesuai dengan Kebutuhan Daerah Kabupaten/Kota dalam rangka Stabilisasi Pasokan dan Harga Pangan', NULL, NULL),
(1, 2, 9, 3, 202, 'Pengelolaan dan Keseimbangan Cadangan Pangan Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 3, 203, 'Penentuan Harga Minimum Daerah untuk Pangan Lokal yang Tidak Ditetapkan oleh Pemerintah Pusat dan Pemerintah Provinsi', NULL, NULL),
(1, 2, 9, 3, 204, 'Pelaksanaan Pencapaian Target Konsumsi Pangan Perkapita/Tahun sesuai dengan Angka Kecukupan Gizi', NULL, NULL),
(1, 2, 9, 4, 201, 'Penyusunan Peta Kerentanan dan Ketahanan Pangan Kecamatan', NULL, NULL),
(1, 2, 9, 4, 202, 'Penanganan Kerawanan Pangan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 'Pelaksanaan Pengawasan Keamanan Pangan Segar Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 2, 201, 'Pemberian Izin Lokasi Dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 4, 201, 'Penyelesaian Sengketa Tanah Garapan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 5, 201, 'Penyelesaian Masalah Ganti Kerugian dan Santunan Tanah untuk Pembangunan oleh Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 201, 'Penetapan Subjek dan Objek Redistribusi Tanah serta Ganti Kerugian Tanah Kelebihan Maksimum dan Tanah Absentee dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 202, 'Penetapan Ganti Kerugian Tanah Kelebihan Maksimum dan Tanah Absentee Lintas Daerah Kabupaten/Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 7, 201, 'Penetapan Tanah Ulayat yang Lokasinya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 8, 201, 'Penyelesaian Masalah Tanah Kosong', NULL, NULL),
(1, 2, 10, 8, 202, 'Inventarisasi dan Pemanfaatan Tanah Kosong', NULL, NULL),
(1, 2, 10, 9, 201, 'Penerbitan Izin Membuka Tanah', NULL, NULL),
(1, 2, 10, 10, 201, 'Penggunaan Tanah yang Hamparannya dalam satu Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 2, 201, 'Rencana Perlindungan dan Pengelolaan Lingkungan Hidup (RPPLH) Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 2, 202, 'Penyelenggaraan Kajian Lingkungan Hidup Strategis (KLHS) Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 3, 201, 'Pencegahan Pencemaran dan/atau Kerusakan Lingkungan Hidup Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 3, 202, 'Penanggulangan Pencemaran dan/atau Kerusakan Lingkungan Hidup Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 3, 203, 'Pemulihan Pencemaran dan/atau Kerusakan Lingkungan Hidup Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 4, 201, 'Pengelolaan Keanekaragaman Hayati Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 5, 201, 'Penyimpanan Sementara Limbah B3', NULL, NULL),
(1, 2, 11, 5, 202, 'Pengumpulan Limbah B3 dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 6, 201, 'Pembinaan dan Pengawasan Terhadap Usaha dan/atau Kegiatan yang Izin Lingkungan dan Izin PPLH diterbitkan oleh Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 7, 201, 'Pengakuan MHA, Kearifan Lokal, Pengetahuan Tradisional, dan Hak MHA yang terkait dengan PPLH', NULL, NULL),
(1, 2, 11, 7, 202, 'Peningkatan Kapasitas MHA dan Kearifan Lokal, Pengetahuan Tradisional dan Hak MHA yang terkait dengan PPLH', NULL, NULL),
(1, 2, 11, 8, 201, 'Penyelenggaraan Pendidikan, Pelatihan, dan Penyuluhan Lingkungan Hidup untuk Lembaga Kemasyarakatan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 9, 201, 'Pemberian Penghargaan Lingkungan Hidup Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 10, 201, 'Penyelesaian Pengaduan Masyarakat di Bidang Perlindungan dan Pengelolaan Lingkungan Hidup (PPLH) Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 11, 201, 'Pengelolaan Sampah', NULL, NULL),
(1, 2, 11, 11, 202, 'Penerbitan Izin Pendaurulangan Sampah/Pengelolaan Sampah, Pengangkutan Sampah dan Pemrosesan Akhir Sampah yang Diselenggarakan oleh Swasta', NULL, NULL),
(1, 2, 11, 11, 203, 'Pembinaan dan Pengawasan Pengelolaan Sampah yang Diselenggarakan oleh Pihak Swasta', NULL, NULL),
(1, 2, 12, 2, 201, 'Pelayanan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 202, 'Penataan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 'Penyelenggaraan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 204, 'Pembinaan dan Pengawasan Penyelenggaraan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 3, 201, 'Pelayanan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 'Penyelenggaraan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 203, 'Pembinaan dan Pengawasan Penyelenggaraan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 4, 201, 'Pengumpulan Data Kependudukan dan Pemanfaatan dan Penyajian Database Kependudukan', NULL, NULL),
(1, 2, 12, 4, 202, 'Penataan Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 'Penyelenggaraan Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 204, 'Pembinaan dan Pengawasan Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 5, 201, 'Penyusunan Profil Kependudukan', NULL, NULL),
(1, 2, 13, 2, 201, 'Penyelenggaraan Penataan Desa', NULL, NULL),
(1, 2, 13, 3, 201, 'Fasilitasi Kerja sama antar Desa', NULL, NULL),
(1, 2, 13, 4, 201, 'Pembinaan dan Pengawasan Penyelenggaraan Administrasi Pemerintahan Desa', NULL, NULL),
(1, 2, 13, 5, 201, 'Pemberdayaan Lembaga Kemasyarakatan yang Bergerak di Bidang Pemberdayaan Desa dan Lembaga Adat Tingkat Daerah Kabupaten/Kota serta Pemberdayaan Masyarakat Hukum Adat yang Masyarakat Pelakunya Hukum Adat yang Sama dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 2, 201, 'Pemaduan dan Sinkronisasi Kebijakan Pemerintah Daerah Provinsi dengan Pemerintah Daerah Kabupaten/Kota dalam rangka Pengendalian Kuantitas Penduduk', NULL, NULL),
(1, 2, 14, 2, 202, 'Pemetaan Perkiraan Pengendalian Penduduk Cakupan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 3, 201, 'Pelaksanaan Advokasi, Komunikasi, Informasi dan Edukasi (KIE) Pengendalian Penduduk dan KB sesuai Kearifan Budaya Lokal', NULL, NULL),
(1, 2, 14, 3, 202, 'Pendayagunaan Tenaga Penyuluh KB/Petugas Lapangan KB (PKB/PLKB)', NULL, NULL),
(1, 2, 14, 3, 203, 'Pengendalian dan Pendistribusian Kebutuhan Alat dan Obat Kontrasepsi serta Pelaksanaan Pelayanan KB di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 3, 204, 'Pemberdayaan dan Peningkatan Peran serta Organisasi Kemasyarakatan Tingkat Daerah Kabupaten/Kota dalam Pelaksanaan Pelayanan dan Pembinaan Kesertaan Ber-KB', NULL, NULL),
(1, 2, 14, 4, 201, 'Pelaksanaan Pembangunan Keluarga melalui Pembinaan Ketahanan dan Kesejahteraan Keluarga', NULL, NULL),
(1, 2, 14, 4, 202, 'Pelaksanaan dan Peningkatan Peran Serta Organisasi Kemasyarakatan Tingkat Daerah Kabupaten/ Kota dalam Pembangunan Keluarga Melalui Pembinaan Ketahanan dan Kesejahteraan Keluarga', NULL, NULL),
(1, 2, 15, 2, 201, 'Penetapan Rencana Induk Jaringan LLAJ Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 202, 'Penyediaan Perlengkapan Jalan di Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 203, 'Pengelolaan Terminal Penumpang Tipe C', NULL, NULL),
(1, 2, 15, 2, 204, 'Penerbitan Izin Penyelenggaraan dan Pembangunan Fasilitas Parkir', NULL, NULL),
(1, 2, 15, 2, 205, 'Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 206, 'Pelaksanaan Manajemen dan Rekayasa Lalu Lintas untuk Jaringan Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 207, 'Persetujuan Hasil Analisis Dampak Lalu Lintas (Andalalin) untuk Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 208, 'Audit dan Inspeksi Keselamatan LLAJ di Jalan', NULL, NULL),
(1, 2, 15, 2, 209, 'Penyediaan Angkutan Umum untuk Jasa Angkutan Orang dan/atau Barang antar Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 210, 'Penetapan Kawasan Perkotaan untuk Pelayanan Angkutan Perkotaan yang Melampaui Batas 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 211, 'Penetapan Rencana Umum Jaringan Trayek Perkotaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 212, 'Penetapan Rencana Umum Jaringan Trayek Pedesaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 213, 'Penetapan Wilayah Operasi Angkutan Orang dengan Menggunakan Taksi dalam Kawasan Perkotaan yang Wilayah Operasinya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 214, 'Penerbitan Izin Penyelenggaraan Angkutan Orang dalam Trayek Lintas Daerah Kabupaten/Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 215, 'Penerbitan Izin Penyelenggaraan Angkutan Taksi yang Wilayah Operasinya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 216, 'Penetapan Tarif Kelas Ekonomi untuk Angkutan Orang yang Melayani Trayek serta Angkutan Perkotaan dan Perdesaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 201, 'Penerbitan Izin Usaha Angkutan Laut bagi Badan Usaha yang Berdomisili dalam Daerah Kabupaten/Kota dan Beroperasi pada Lintas Pelabuhan di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 202, 'Penerbitan Izin Usaha Angkutan Laut Pelayaran Rakyat bagi Orang Perorangan atau Badan Usaha yang Berdomisili dan yang Beroperasi pada Lintas Pelabuhan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 203, 'Penerbitan Izin Usaha Penyelenggaraan Angkutan Sungai dan Danau sesuai dengan Domisili Orang Perseorangan Warga Negara Indonesia atau Badan Usaha', NULL, NULL),
(1, 2, 15, 3, 204, 'Pembangunan dan Penerbitan Izin Pelabuhan Sungai dan Danau yang Melayani Trayek dalam 1 Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 205, 'Penerbitan Izin Usaha Penyelenggaraan Angkutan Penyeberangan sesuai dengan Domisili Badan Usaha', NULL, NULL),
(1, 2, 15, 3, 206, 'Penetapan Lintas Penyeberangan dan Persetujuan Pengoperasian Kapal dalam Daerah Kabupaten/Kota yang Terletak pada Jaringan Jalan Kabupaten/Kota dan/atau Jaringan Jalur Kereta Api Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 207, 'Penetapan Lintas Penyeberangan dan Persetujuan Pengoperasian untuk Kapal yang Melayani Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 208, 'Penerbitan Izin Usaha Jasa terkait dengan Perawatan dan Perbaikan Kapal', NULL, NULL),
(1, 2, 15, 3, 209, 'Penetapan Tarif Angkutan Penyeberangan Penumpang Kelas Ekonomi dan Kendaraan beserta Muatannya pada Lintas Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 210, 'Penetapan Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 211, 'Penetapan Rencana Induk dan DLKR/DLKP untuk Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 212, 'Pembangunan, Penerbitan Izin Pembangunan dan Pengoperasian Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 213, 'Pembangunan dan Penerbitan Izin Pembangunan dan Pengoperasian Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 214, 'Penerbitan Izin Usaha untuk Badan Usaha Pelabuhan di Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 215, 'Penerbitan Izin Pengembangan Pelabuhan untuk Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 216, 'Penerbitan Izin Pengoperasian Pelabuhan Selama 24 Jam untuk Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 217, 'Penerbitan Izin Pekerjaan Pengerukan di Wilayah Perairan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 218, 'Penerbitan Izin Reklamasi di Wilayah Perairan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 219, 'Penerbitan Izin Pengelolaan Terminal untuk Kepentingan Sendiri (TUKS) di dalam DLKR/DLKP Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 4, 201, 'Penerbitan Izin Mendirikan Bangunan Tempat Pendaratan dan Lepas Landas Helikopter', NULL, NULL),
(1, 2, 15, 5, 201, 'Penetapan Rencana Induk Perkeretaapian', NULL, NULL),
(1, 2, 15, 5, 202, 'Penerbitan Izin Usaha, Izin Pembangunan dan Izin Operasi Prasarana Perkeretaapian Umum yang Jaringan Jalurnya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 203, 'Penetapan Jaringan Jalur Kereta Api yang Jaringannya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 204, 'Penetapan Kelas Stasiun untuk Stasiun pada Jaringan Jalur Kereta Api Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 205, 'Penerbitan Izin Operasi Sarana Perkeretaapian Umum yang Jaringan Jalurnya Melintasi Batas dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 206, 'Penetapan Jaringan Pelayanan Perkeretaapian pada Jaringan Jalur Perkeretaapian Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 207, 'Penerbitan Izin Pengadaan atau Pembangunan Perkeretapian Khusus, Izin Operasi, dan Penetapan Jalur Kereta Api Khusus yang Jaringannya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 2, 201, 'Pengelolaan Informasi dan Komunikasi Publik Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 201, 'Pengelolaan Nama Domain yang telah Ditetapkan oleh Pemerintah Pusat dan Sub Domain di Lingkup Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 202, 'Pengelolaan e-government Di Lingkup Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 2, 201, 'Penerbitan Izin Usaha Simpan Pinjam untuk Koperasi dengan Wilayah Keanggotaan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 2, 202, 'Penerbitan Izin Pembukaan Kantor Cabang, Cabang Pembantu dan Kantor Kas Koperasi Simpan Pinjam untuk Koperasi dengan Wilayah Keanggotaan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 3, 201, 'Pemeriksaan dan Pengawasan Koperasi, Koperasi Simpan Pinjam/Unit Simpan Pinjam Koperasi yang Wilayah Keanggotaannya dalam Daerah Kabupaten/ Kota', NULL, NULL),
(1, 2, 17, 4, 201, 'Penilaian Kesehatan Koperasi Simpan Pinjam/Unit Simpan Pinjam Koperasi yang Wilayah Keanggotaanya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 5, 201, 'Pendidikan dan Latihan Perkoperasian Bagi Koperasi yang Wilayah Keanggotaan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 5, 202, 'Pendidikan dan Latihan UKM Bagi UKM dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 5, 203, 'Pendidikan dan Pelatihan SDM Usaha Mikro dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 6, 201, 'Pemberdayaan dan Perlindungan Koperasi yang Keanggotaannya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 7, 201, 'Pemberdayaan Usaha Mikro yang Dilakukan melalui Pendataan, Kemitraan, Kemudahan Perizinan, Penguatan Kelembagaan dan Koordinasi dengan Para Pemangku Kepentingan', NULL, NULL),
(1, 2, 17, 8, 201, 'Pengembangan Usaha Mikro dengan Orientasi Peningkatan Skala Usaha Menjadi Usaha Kecil', NULL, NULL),
(1, 2, 18, 2, 201, 'Penetapan Pemberian Fasilitas/Insentif Dibidang Penanaman Modal yang menjadi Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 2, 202, 'Pembuatan Peta Potensi Investasi Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 3, 201, 'Penyelenggaraan Promosi Penanaman Modal yang menjadi Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 4, 201, 'Pelayanan Perizinan dan Non Perizinan secara Terpadu Satu Pintu dibidang Penanaman Modal yang menjadi Kewenangan Daerah Kabupaten/ Kota', NULL, NULL),
(1, 2, 18, 5, 201, 'Pengendalian Pelaksanaan Penanaman Modal yang menjadi Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 6, 201, 'Pengelolaan Data dan Informasi Perizinan dan Non Perizinan yang Terintegrasi pada Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 2, 201, 'Penyadaran, Pemberdayaan, dan Pengembangan Pemuda dan Kepemudaan Terhadap Pemuda Pelopor Kabupaten/Kota, Wirausaha Muda Pemula, dan Pemuda Kader Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 2, 202, 'Pemberdayaan dan Pengembangan Organisasi Kepemudaan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 201, 'Pembinaan dan Pengembangan Olahraga Pendidikan pada Jenjang Pendidikan yang menjadi Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 202, 'Penyelenggaraan Kejuaraan Olahraga Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 203, 'Pembinaan dan Pengembangan Olahraga Prestasi Tingkat Daerah Provinsi', NULL, NULL),
(1, 2, 19, 3, 204, 'Pembinaan dan Pengembangan Organisasi Olahraga', NULL, NULL),
(1, 2, 19, 3, 205, 'Pembinaan dan Pengembangan Olahraga Rekreasi', NULL, NULL),
(1, 2, 19, 4, 201, 'Pembinaan dan Pengembangan Organisasi Kepramukaan', NULL, NULL),
(1, 2, 20, 2, 201, 'Penyelenggaraan Statistik Sektoral di Lingkup Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 21, 2, 201, 'Penyelenggaraan Persandian untuk Pengamanan Informasi Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 21, 2, 202, 'Penetapan Pola Hubungan Komunikasi Sandi Antar Perangkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 2, 201, 'Pengelolaan Kebudayaan yang Masyarakat Pelakunya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 2, 202, 'Pelestarian Kesenian Tradisional yang Masyarakat Pelakunya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 2, 203, 'Pembinaan Lembaga Adat yang Penganutnya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 3, 201, 'Pembinaan Kesenian yang Masyarakat Pelakunya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 4, 201, 'Pembinaan Sejarah Lokal dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 5, 201, 'Penetapan Cagar Budaya Peringkat Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 5, 202, 'Pengelolaan Cagar Budaya Peringkat Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 5, 203, 'Penerbitan Izin membawa Cagar Budaya ke Luar Daerah Kabupaten/Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 6, 201, 'Pengelolaan Museum Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 'Pengelolaan Perpustakaan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 202, 'Pembudayaan Gemar Membaca Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 3, 201, 'Pelestarian Naskah Kuno Milik Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 3, 202, 'Pengembangan Koleksi Budaya Etnis Nusantara yang ditemukan oleh Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 2, 201, 'Pengelolaan Arsip Dinamis Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 2, 202, 'Pengelolaan Arsip Statis Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 2, 203, 'Pengelolaan Simpul Jaringan Informasi Kearsipan Nasional Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 201, 'Pemusnahan Arsip Dilingkungan Pemerintah Daerah Kabupaten/Kota yang Memiliki Retensi di Bawah 10 (sepuluh) Tahun', NULL, NULL),
(1, 2, 24, 3, 202, 'Perlindungan dan Penyelamatan Arsip Akibat Bencana yang Berskala Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 203, 'Penyelamatan Arsip Perangkat Daerah Kabupaten/Kota yang Digabung dan/atau Dibubarkan, dan Pemekaran Daerah Kecamatan dan Desa/Kelurahan', NULL, NULL),
(1, 2, 24, 3, 204, 'Autentikasi Arsip Statis dan Arsip Hasil Alih Media Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 205, 'Pencarian Arsip Statis Kabupaten/Kota yang Dinyatakan Hilang', NULL, NULL),
(1, 2, 24, 4, 201, 'Pelayanan Izin Penggunaan Arsip yang Bersifat Tertutup di Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 3, 201, 'Pengelolaan Penangkapan Ikan di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam 1 (satu) Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 25, 3, 202, 'Pemberdayaan Nelayan Kecil dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 3, 203, 'Pengelolaan dan Penyelenggaraan Tempat Pelelangan Ikan (TPI)', NULL, NULL),
(1, 3, 25, 3, 204, 'Penerbitan Tanda Daftar Kapal Perikanan Berukuran sampai dengan 10 GT di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 3, 205, 'Penerbitan Izin Pengadaan Kapal Penangkap Ikan dan Kapal Pengangkut Ikan dengan Ukuran sampai dengan 10 GT di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam 1 (satu) Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 25, 3, 206, 'Pendaftaran Kapal Perikanan Berukuran Sampai Dengan 10 GT yang Beroperasi di Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 201, 'Penerbitan Izin Usaha Perikanan di Bidang Pembudidayaan Ikan yang Usahanya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 202, 'Pemberdayaan Pembudi Daya Ikan Kecil', NULL, NULL),
(1, 3, 25, 4, 203, 'Penerbitan Tanda Daftar bagi Pembudi Daya Ikan Kecil (TDPIK) dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 'Pengelolaan Pembudidayaan Ikan', NULL, NULL),
(1, 3, 25, 5, 201, 'Pengawasan Sumber Daya Perikanan di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan Dalam Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 6, 201, 'Penerbitan Tanda Daftar Usaha Pengolahan Hasil Perikanan Bagi Usaha Skala Mikro dan Kecil', NULL, NULL),
(1, 3, 25, 6, 202, 'Pembinaan Mutu dan Keamanan Hasil Perikanan Bagi Usaha Pengolahan dan Pemasaran Skala Mikro dan Kecil', NULL, NULL),
(1, 3, 25, 6, 203, 'Penyediaan dan Penyaluran Bahan Baku Industri Pengolahan Ikan dalam 1 (satu) Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 26, 2, 201, 'Pengelolaan Daya Tarik Wisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 'Pengelolaan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 'Pengelolaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 204, 'Penetapan Tanda Daftar Usaha Pariwisata Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 3, 201, 'Pemasaran Pariwisata Dalam dan Luar Negeri Daya Tarik, Destinasi dan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 4, 201, 'Penyediaan Prasarana (Zona Kreatif/Ruang Kreatif/Kota Kreatif) sebagai Ruang Berekspresi, Berpromosi dan Berinteraksi bagi Insan Kreatif di Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 4, 202, 'Pengembangan Ekosistem Ekonomi Kreatif ', NULL, NULL),
(1, 3, 26, 5, 201, 'Pelaksanaan Peningkatan Kapasitas Sumber Daya Manusia Pariwisata dan Ekonomi Kreatif Tingkat Dasar', NULL, NULL),
(1, 3, 26, 5, 202, 'Pengembangan Kapasitas Pelaku Ekonomi Kreatif', NULL, NULL),
(1, 3, 27, 2, 201, 'Pengawasan Penggunaan Sarana Pertanian', NULL, NULL),
(1, 3, 27, 2, 202, 'Pengelolaan Sumber Daya Genetik (SDG) Hewan, Tumbuhan, dan Mikro Organisme Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 2, 203, 'Peningkatan Mutu dan Peredaran Benih/Bibit Ternak dan Tanaman Pakan Ternak serta Pakan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 2, 204, 'Pengawasan Obat Hewan di Tingkat Pengecer', NULL, NULL),
(1, 3, 27, 2, 205, 'Pengendalian dan Pengawasan Penyediaan dan Peredaran Benih/Bibit Ternak, dan Hijauan Pakan Ternak dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 2, 206, 'Penyediaan Benih/Bibit Ternak dan Hijauan Pakan Ternak yang Sumbernya dalam 1 (satu) Daerah Kabupaten/Kota Lain', NULL, NULL),
(1, 3, 27, 3, 201, 'Pengembangan Prasarana Pertanian', NULL, NULL),
(1, 3, 27, 3, 202, 'Pembangunan Prasarana Pertanian', NULL, NULL),
(1, 3, 27, 3, 203, 'Pengelolaan Wilayah Sumber Bibit Ternak dan Rumpun/Galur Ternak dalam Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 27, 3, 204, 'Pengembangan Lahan Penggembalaan Umum', NULL, NULL),
(1, 3, 27, 4, 201, 'Penjaminan Kesehatan Hewan, Penutupan dan Pembukaan Daerah Wabah Penyakit Hewan Menular Dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 4, 202, 'Pengawasan Pemasukan dan Pengeluaran Hewan dan Produk Hewan Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 4, 203, 'Pengelolaan Pelayanan Jasa Laboratorium dan Jasa Medik Veteriner dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 4, 204, 'Penerapan dan Pengawasan Persyaratan Teknis Kesehatan Masyarakat Veteriner', NULL, NULL),
(1, 3, 27, 4, 205, 'Penerapan dan Pengawasan Persyaratan Teknis Kesejahteraan Hewan', NULL, NULL),
(1, 3, 27, 5, 201, 'Pengendalian dan Penanggulangan Bencana Pertanian Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 6, 201, 'Penerbitan Izin Usaha Pertanian yang Kegiatan Usahanya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 6, 202, 'Penerbitan Izin Usaha Produksi Benih/Bibit Ternak dan Pakan, Fasilitas Pemeliharaan Hewan, Rumah Sakit Hewan/Pasar Hewan, Rumah Potong Hewan', NULL, NULL),
(1, 3, 27, 6, 203, 'Izin Usaha Pengecer (Toko, Retail, Sub Distributor) Obat Hewan', NULL, NULL),
(1, 3, 27, 7, 201, 'Pelaksanaan Penyuluhan Pertanian', NULL, NULL),
(1, 3, 28, 4, 201, 'Pengelolaan Taman Hutan Raya (TAHURA) Kabupaten/Kota', NULL, NULL),
(1, 3, 29, 5, 201, 'Penatausahaan Izin Pemanfaatan Langsung Panas Bumi dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 2, 201, 'Penerbitan Izin Pengelolaan Pasar Rakyat, Pusat Perbelanjaan, dan Izin Usaha Toko Swalayan', NULL, NULL),
(1, 3, 30, 2, 202, 'Penerbitan Tanda Daftar Gudang', NULL, NULL),
(1, 3, 30, 2, 203, 'Penerbitan Surat Tanda Pendaftaran Waralaba (STPW) untuk Penerima Waralaba dari Waralaba Dalam Negeri', NULL, NULL),
(1, 3, 30, 2, 204, 'Penerbitan Surat Tanda Pendaftaran Waralaba (STPW) untuk Penerima Waralaba Lanjutan dari Waralaba Luar Negeri', NULL, NULL),
(1, 3, 30, 2, 205, 'Penerbitan Surat Izin Usaha Perdagangan Minuman Beralkohol Golongan B dan C untuk Pengecer dan Penjual Langsung Minum di Tempat', NULL, NULL),
(1, 3, 30, 2, 206, 'Pengendalian Fasilitas Penyimpanan Bahan Berbahaya dan Pengawasan Distribusi, Pengemasan dan Pelabelan Bahan Berbahaya di Tingkat Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 30, 2, 207, 'Penerbitan Surat Keterangan Asal (Bagi Daerah Kabupaten/Kota yang Telah Ditetapkan sebagai Instansi Penerbit Surat Keterangan Asal)', NULL, NULL),
(1, 3, 30, 3, 201, 'Pembangunan dan Pengelolaan Sarana Distribusi Perdagangan', NULL, NULL),
(1, 3, 30, 3, 202, 'Pembinaan Terhadap Pengelola Sarana Distribusi Perdagangan Masyarakat di Wilayah Kerjanya', NULL, NULL),
(1, 3, 30, 4, 201, 'Menjamin Ketersediaan Barang Kebutuhan Pokok dan Barang Penting di Tingkat Daerah Kabupaten/ Kota', NULL, NULL),
(1, 3, 30, 4, 202, 'Pengendalian Harga, dan Stok Barang Kebutuhan Pokok dan Barang Penting di Tingkat Pasar Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 4, 203, 'Pengawasan Pupuk dan Pestisida Bersubsidi di Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 5, 201, 'Penyelenggaraan Promosi Dagang melalui Pameran Dagang dan Misi Dagang bagi Produk Ekspor Unggulan yang terdapat pada 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 6, 201, 'Pelaksanaan Metrologi Legal, Berupa Tera, Tera Ulang, dan Pengawasan', NULL, NULL),
(1, 3, 30, 7, 201, 'Pelaksanaan Promosi, Pemasaran dan Peningkatan Penggunaan Produk Dalam Negeri', NULL, NULL),
(1, 3, 31, 2, 201, 'Penyusunan dan Evaluasi Rencana Pembangunan Industri Kabupaten/Kota', NULL, NULL),
(1, 3, 31, 3, 201, 'Penerbitan Izin Usaha Industri (IUI), Izin Perluasan Usaha Industri (IPUI), Izin Usaha Kawasan Industri (IUKI) dan Izin Perluasan Kawasan Industri (IPKI) Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 3, 31, 4, 201, 'Penyediaan Informasi Industri untuk Informasi Industri untuk IUI, IPUI, IUKI dan IPKI Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 3, 32, 2, 201, 'Pencadangan Tanah untuk Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 3, 201, 'Penataan Persebaran Penduduk yang Berasal dari 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 32, 4, 201, 'Pengembangan Satuan Permukiman pada Tahap Kemandirian', NULL, NULL),
(1, 4, 1, 2, 201, 'Administrasi Tata Pemerintahan', NULL, NULL),
(1, 4, 1, 2, 202, 'Pelaksanaan Kebijakan Kesejahteraan Rakyat', NULL, NULL),
(1, 4, 1, 2, 203, 'Fasilitasi dan Koordinasi Hukum', NULL, NULL),
(1, 4, 1, 2, 204, 'Fasilitasi Kerjasama Daerah', NULL, NULL),
(1, 4, 1, 3, 201, 'Pelaksanaan Kebijakan Perekonomian', NULL, NULL),
(1, 4, 1, 3, 202, 'Pelaksanaan Administrasi Pembangunan', NULL, NULL),
(1, 4, 1, 3, 203, 'Pengelolaan Pengadaan Barang dan Jasa', NULL, NULL),
(1, 4, 1, 3, 204, 'Pemantauan Kebijakan Sumber Daya Alam', NULL, NULL),
(1, 4, 2, 2, 201, 'Pembentukan Peraturan Daerah dan Peraturan DPRD', NULL, NULL),
(1, 4, 2, 2, 202, 'Pembahasan Kebijakan Anggaran', NULL, NULL),
(1, 4, 2, 2, 203, 'Pengawasan Penyelenggaraan Pemerintahan', NULL, NULL),
(1, 4, 2, 2, 204, 'Peningkatan Kapasitas DPRD', NULL, NULL),
(1, 4, 2, 2, 205, 'Penyerapan dan Penghimpunan Aspirasi Masyarakat', NULL, NULL),
(1, 4, 2, 2, 206, 'Pelaksanaan dan Pengawasan Kode Etik DPRD', NULL, NULL),
(1, 4, 2, 2, 207, 'Pembahasan Kerja Sama Daerah', NULL, NULL),
(1, 4, 2, 2, 208, 'Fasilitasi Tugas DPRD', NULL, NULL),
(1, 5, 1, 2, 201, 'Penyusunan Perencanaan dan Pendanaan', NULL, NULL),
(1, 5, 1, 2, 202, 'Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah', NULL, NULL),
(1, 5, 1, 2, 203, 'Pengendalian, Evaluasi dan Pelaporan Bidang Perencanaan Pembangunan Daerah', NULL, NULL),
(1, 5, 1, 3, 201, 'Koordinasi Perencanaan Bidang Pemerintahan dan Pembangunan Manusia', NULL, NULL),
(1, 5, 1, 3, 202, 'Koordinasi Perencanaan Bidang Perekonomian dan SDA (Sumber Daya Alam)', NULL, NULL),
(1, 5, 1, 3, 203, 'Koordinasi Perencanaan Bidang Infrastruktur dan Kewilayahan', NULL, NULL),
(1, 5, 2, 2, 201, 'Koordinasi dan Penyusunan Rencana Anggaran Daerah', NULL, NULL),
(1, 5, 2, 2, 202, 'Koordinasi dan Pengelolaan Perbendaharaan Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 'Koordinasi dan Pelaksanaan Akuntansi dan Pelaporan Keuangan Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 'Penunjang Urusan Kewenangan Pengelolaan Keuangan Daerah', NULL, NULL),
(1, 5, 2, 2, 205, 'Pengelolaan Data dan Implementasi Sistem Informasi Pemerintah Daerah Lingkup Keuangan Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 'Pengelolaan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 'Kegiatan Pengelolaan pendapatan Daerah', NULL, NULL),
(1, 5, 3, 2, 201, 'Pengadaan, Pemberhentian dan Informasi Kepegawaian ASN', NULL, NULL),
(1, 5, 3, 2, 202, 'Mutasi dan Promosi ASN', NULL, NULL),
(1, 5, 3, 2, 203, 'Pengembangan Kompetensi ASN', NULL, NULL),
(1, 5, 3, 2, 204, 'Penilaian dan Evaluasi Kinerja Aparatur', NULL, NULL),
(1, 5, 4, 2, 201, 'Pengembangan Kompetensi Teknis', NULL, NULL),
(1, 5, 4, 2, 202, 'Sertifikasi, Kelembagaan, Pengembangan Kompetensi Manajerial dan Fungsional', NULL, NULL),
(1, 5, 5, 2, 201, 'Penelitian dan Pengembangan Bidang Penyelenggaraan Pemerintahan dan Pengkajian Peraturan', NULL, NULL),
(1, 5, 5, 2, 202, 'Penelitian dan Pengembangan Bidang Sosial dan Kependudukan', NULL, NULL),
(1, 5, 5, 2, 203, 'Penelitian dan Pengembangan Bidang Ekonomi dan Pembangunan', NULL, NULL),
(1, 5, 5, 2, 204, 'Pengembangan Inovasi dan Teknologi', NULL, NULL),
(1, 5, 6, 2, 201, 'Perencanaan dan Fasilitasi Kerja Sama', NULL, NULL),
(1, 5, 6, 2, 202, 'Pelaksanaan Kewilayahan Perbatasan', NULL, NULL),
(1, 5, 6, 2, 203, 'Monitoring dan Evaluasi Kewilayahan Perbatasan', NULL, NULL),
(1, 6, 1, 2, 201, 'Penyelenggaraan Pengawasan Internal', NULL, NULL),
(1, 6, 1, 2, 202, 'Penyelenggaraan Pengawasan dengan Tujuan Tertentu', NULL, NULL),
(1, 6, 1, 3, 201, 'Perumusan Kebijakan Teknis di Bidang Pengawasan dan Fasilitasi Pengawasan', NULL, NULL),
(1, 6, 1, 3, 202, 'Pendampingan dan Asistensi', NULL, NULL),
(1, 7, 1, 2, 201, 'Koordinasi Penyelenggaraan Kegiatan Pemerintahan di Tingkat Kecamatan', NULL, NULL),
(1, 7, 1, 2, 202, 'Penyelenggaraan Urusan Pemerintahan yang tidak Dilaksanakan oleh Unit Kerja Perangkat Daerah yang ada di Kecamatan', NULL, NULL),
(1, 7, 1, 2, 203, 'Koordinasi Pemeliharaan Prasarana dan Sarana Pelayanan Umum', NULL, NULL),
(1, 7, 1, 2, 204, 'Pelaksanaan Urusan Pemerintahan yang Dilimpahkan kepada Camat', NULL, NULL),
(1, 7, 1, 3, 201, 'Koordinasi Kegiatan Pemberdayaan Desa', NULL, NULL),
(1, 7, 1, 3, 202, 'Kegiatan Pemberdayaan Kelurahan', NULL, NULL),
(1, 7, 1, 3, 203, 'Pemberdayaan Lembaga Kemasyarakatan Tingkat Kecamatan', NULL, NULL),
(1, 7, 1, 3, 204, 'Pemberdayaan Mukim', NULL, NULL),
(1, 7, 1, 3, 205, 'Koordinasi dan Sinkronisasi Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM)', NULL, NULL),
(1, 7, 1, 4, 201, 'Koordinasi Upaya Penyelenggaraan Ketenteraman dan Ketertiban Umum', NULL, NULL),
(1, 7, 1, 4, 202, 'Koordinasi Penerapan dan Penegakan Peraturan Daerah dan Peraturan Kepala Daerah', NULL, NULL),
(1, 7, 1, 4, 203, 'Koordinasi Upaya Penyelenggaraan Ketentraman dan Ketertiban Umum', NULL, NULL),
(1, 7, 1, 4, 204, 'Koordinasi Penerapan dan Penegakan Qanun dan Peraturan Kepala Daerah', NULL, NULL),
(1, 7, 1, 5, 201, 'Penyelenggaraan Urusan Pemerintahan Umum sesuai Penugasan Kepala Daerah', NULL, NULL),
(1, 7, 1, 6, 201, 'Fasilitasi, Rekomendasi dan Koordinasi Pembinaan dan Pengawasan Pemerintahan Desa', NULL, NULL),
(1, 8, 1, 2, 201, 'Perumusan Kebijakan Teknis dan Pemantapan Pelaksanaan Bidang Ideologi Pancasila dan Karakter Kebangsaan', NULL, NULL),
(1, 8, 1, 3, 201, 'Perumusan Kebijakan Teknis dan Pemantapan Pelaksanaan Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik', NULL, NULL),
(1, 8, 1, 4, 201, 'Perumusan Kebijakan Teknis dan Pemantapan Pelaksanaan Bidang Pemberdayaan dan Pengawasan Organisasi Kemasyarakatan', NULL, NULL),
(1, 8, 1, 5, 201, 'Perumusan Kebijakan Teknis dan Pemantapan Pelaksanaan Bidang Ketahanan Ekonomi, Sosial dan Budaya', NULL, NULL),
(1, 8, 1, 6, 201, 'Perumusan Kebijakan Teknis dan Pelaksanaan Pemantapan Kewaspadaan Nasional dan Penanganan Konflik Sosial', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kelurahan`
--

CREATE TABLE `ref_kelurahan` (
  `kecamatan_id` int(10) UNSIGNED NOT NULL,
  `kelurahan_id` int(10) UNSIGNED NOT NULL,
  `kelurahan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_login_opd`
--

CREATE TABLE `ref_login_opd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_id` bigint(20) UNSIGNED NOT NULL,
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `login_opd_level` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_login_opd`
--

INSERT INTO `ref_login_opd` (`id`, `login_id`, `opd_id`, `login_opd_level`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, NULL, NULL),
(2, 4, 2, 1, NULL, NULL),
(3, 5, 3, 1, NULL, NULL),
(4, 6, 4, 1, NULL, NULL),
(5, 7, 5, 1, NULL, NULL),
(6, 8, 6, 1, NULL, NULL),
(7, 9, 7, 1, NULL, NULL),
(8, 10, 8, 1, NULL, NULL),
(9, 11, 9, 1, NULL, NULL),
(10, 12, 10, 1, NULL, NULL),
(11, 13, 11, 1, NULL, NULL),
(12, 14, 12, 1, NULL, NULL),
(13, 15, 13, 1, NULL, NULL),
(14, 16, 14, 1, NULL, NULL),
(15, 17, 15, 1, NULL, NULL),
(16, 18, 16, 1, NULL, NULL),
(17, 19, 17, 1, NULL, NULL),
(18, 20, 18, 1, NULL, NULL),
(19, 21, 19, 1, NULL, NULL),
(20, 22, 20, 1, NULL, NULL),
(21, 23, 21, 1, NULL, NULL),
(22, 24, 22, 1, NULL, NULL),
(23, 25, 23, 1, NULL, NULL),
(24, 26, 24, 1, NULL, NULL),
(25, 27, 25, 1, NULL, NULL),
(26, 28, 26, 1, NULL, NULL),
(27, 29, 27, 1, NULL, NULL),
(28, 30, 28, 1, NULL, NULL),
(29, 31, 29, 1, NULL, NULL),
(30, 32, 30, 1, NULL, NULL),
(31, 33, 31, 1, NULL, NULL),
(32, 34, 32, 1, NULL, NULL),
(33, 35, 33, 1, NULL, NULL),
(34, 36, 34, 1, NULL, NULL),
(35, 37, 35, 1, NULL, NULL),
(36, 38, 36, 1, NULL, NULL),
(37, 39, 37, 1, NULL, NULL),
(38, 40, 38, 1, NULL, NULL),
(39, 41, 39, 1, NULL, NULL),
(40, 42, 40, 1, NULL, NULL),
(41, 43, 41, 1, NULL, NULL),
(42, 44, 42, 1, NULL, NULL),
(43, 45, 43, 1, NULL, NULL),
(44, 46, 44, 1, NULL, NULL),
(45, 47, 45, 1, NULL, NULL),
(46, 48, 46, 1, NULL, NULL),
(47, 49, 47, 1, NULL, NULL),
(48, 50, 48, 1, NULL, NULL),
(49, 51, 49, 1, NULL, NULL),
(50, 52, 50, 1, NULL, NULL),
(51, 53, 51, 1, NULL, NULL),
(52, 54, 52, 1, NULL, NULL),
(53, 55, 53, 1, NULL, NULL),
(54, 56, 54, 1, NULL, NULL),
(55, 57, 55, 1, NULL, NULL),
(56, 58, 56, 1, NULL, NULL),
(57, 59, 57, 1, NULL, NULL),
(58, 60, 58, 1, NULL, NULL),
(59, 61, 59, 1, NULL, NULL),
(60, 62, 60, 1, NULL, NULL),
(61, 63, 61, 1, NULL, NULL),
(62, 64, 62, 1, NULL, NULL),
(63, 65, 63, 1, NULL, NULL),
(64, 66, 64, 1, NULL, NULL),
(65, 67, 65, 1, NULL, NULL),
(66, 68, 66, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_opd`
--

CREATE TABLE `ref_opd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urusan1_kode` int(11) DEFAULT NULL,
  `bidang1_kode` int(11) DEFAULT NULL,
  `urusan2_kode` int(11) DEFAULT NULL,
  `bidang2_kode` int(11) DEFAULT NULL,
  `urusan3_kode` int(11) DEFAULT NULL,
  `bidang3_kode` int(11) DEFAULT NULL,
  `opd_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opd_level` tinyint(4) NOT NULL,
  `opd_id` bigint(20) DEFAULT NULL,
  `opd_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_opd`
--

INSERT INTO `ref_opd` (`id`, `urusan1_kode`, `bidang1_kode`, `urusan2_kode`, `bidang2_kode`, `urusan3_kode`, `bidang3_kode`, `opd_nama`, `opd_level`, `opd_id`, `opd_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 22, NULL, NULL, 'Dinas Pendidikan dan Kebudayaan', 1, NULL, 1, NULL, NULL),
(2, 1, 2, 0, 0, NULL, NULL, 'Rumah Sakit Umum Daerah Morowali', 2, 4, 1, NULL, NULL),
(3, 1, 2, 0, 0, NULL, NULL, 'Rumah Sakit Pratama', 2, 4, 1, NULL, NULL),
(4, 1, 2, 2, 14, NULL, NULL, 'Dinas Kesehatan, Pengendalian Penduduk dan Keluarga Berencana', 1, NULL, 1, NULL, NULL),
(5, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Ulunambo', 2, 4, 1, NULL, NULL),
(6, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Kaleroang', 2, 4, 1, NULL, NULL),
(7, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Lafeu', 2, 4, 1, NULL, NULL),
(8, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Bahodopi', 2, 4, 1, NULL, NULL),
(9, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Bahomotefe', 2, 4, 1, NULL, NULL),
(10, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Bungku', 2, 4, 1, NULL, NULL),
(11, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Wosu', 2, 4, 1, NULL, NULL),
(12, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Bahonsuai', 2, 4, 1, NULL, NULL),
(13, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Laantula Jaya', 2, 4, 1, NULL, NULL),
(14, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Tanjung Harapan', 2, 4, 1, NULL, NULL),
(15, 1, 2, 2, 14, NULL, NULL, 'Puskesmas Fonuasingko', 2, 4, 1, NULL, NULL),
(16, 1, 3, 0, 0, NULL, NULL, 'Dinas Pekerjaan Umum dan Penataan Ruang', 1, NULL, 1, NULL, NULL),
(17, 1, 4, 2, 10, NULL, NULL, 'Dinas Perumahan, Kawasan Pemukiman dan Pertanahan', 1, NULL, 1, NULL, NULL),
(18, 1, 5, 0, 0, NULL, NULL, 'Badan Penanggulangan Bencana Daerah', 1, NULL, 1, NULL, NULL),
(19, 1, 5, 0, 0, NULL, NULL, 'Satuan Polisi Pamongpraja', 1, NULL, 1, NULL, NULL),
(20, 1, 6, 0, 0, NULL, NULL, 'Dinas Sosial', 1, NULL, 1, NULL, NULL),
(21, 2, 7, 3, 32, NULL, NULL, 'Dinas Transmigrasi Dan Tenaga Kerja Daerah', 1, NULL, 1, NULL, NULL),
(22, 2, 9, 3, 27, NULL, NULL, 'Dinas Pertanian Dan Ketahanan Pangan', 1, NULL, 1, NULL, NULL),
(23, 2, 11, 0, 0, NULL, NULL, 'Dinas Lingkungan Hidup Daerah', 1, NULL, 1, NULL, NULL),
(24, 2, 12, 0, 0, NULL, NULL, 'Dinas Kependudukan dan Pencatatan Sipil Daerah', 1, NULL, 1, NULL, NULL),
(25, 2, 13, 2, 8, NULL, NULL, 'Dinas Pemberdayaan Masyarakat, Desa,Pemberdayaan Perempuan dan Perlindungan Anak', 1, NULL, 1, NULL, NULL),
(26, 2, 15, 0, 0, NULL, NULL, 'Dinas Perhubungan Daerah', 1, NULL, 1, NULL, NULL),
(27, 2, 16, 0, 0, NULL, NULL, 'Dinas Komunikasi dan Informatika', 1, NULL, 1, NULL, NULL),
(28, 2, 17, 0, 0, NULL, NULL, 'Dinas Koperasi, Usaha Kecil, dan Menengah', 1, NULL, 1, NULL, NULL),
(29, 2, 18, 0, 0, NULL, NULL, 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 1, NULL, 1, NULL, NULL),
(30, 2, 19, 3, 26, NULL, NULL, 'Dinas Kepemudaan, Olahraga dan Pariwisata', 1, NULL, 1, NULL, NULL),
(31, 2, 23, 2, 24, NULL, NULL, 'Dinas Perpustakaan Daerah', 1, NULL, 1, NULL, NULL),
(32, 3, 25, 0, 0, NULL, NULL, 'Dinas Perikanan Daerah', 1, NULL, 1, NULL, NULL),
(33, 3, 30, 3, 31, NULL, NULL, 'Dinas Perdagangan Dan Perindustrian', 1, NULL, 1, NULL, NULL),
(34, 4, 1, 0, 0, NULL, NULL, 'SEKRETARIAT DAERAH', 1, NULL, 1, NULL, NULL),
(35, 4, 1, 0, 0, NULL, NULL, 'Bagian Administrasi Pembangunan', 2, 34, 1, NULL, NULL),
(36, 4, 1, 0, 0, NULL, NULL, 'Bagian Ekonomi dan Sumber Daya Alam', 2, 34, 1, NULL, NULL),
(37, 4, 1, 0, 0, NULL, NULL, 'Bagian Hukum', 2, 34, 1, NULL, NULL),
(38, 4, 1, 0, 0, NULL, NULL, 'Bagian Kesejahteraan Rakyat', 2, 34, 1, NULL, NULL),
(39, 4, 1, 0, 0, NULL, NULL, 'Bagian Organisasi', 2, 34, 1, NULL, NULL),
(40, 4, 1, 0, 0, NULL, NULL, 'Bagian Pemerintahan', 2, 34, 1, NULL, NULL),
(41, 4, 1, 0, 0, NULL, NULL, 'Bagian Pengadaan Barang dan Jasa', 2, 34, 1, NULL, NULL),
(42, 4, 1, 0, 0, NULL, NULL, 'Bagian Protokoler dan Komunikasi Pimpinan', 2, 34, 1, NULL, NULL),
(43, 4, 1, 0, 0, NULL, NULL, 'Bagian Umum', 2, 34, 1, NULL, NULL),
(44, 4, 2, 0, 0, NULL, NULL, 'Sekretariat Dewan Perwakilan Rakyat Daerah', 1, NULL, 1, NULL, NULL),
(45, 5, 1, 5, 5, NULL, NULL, 'Badan Perencanaan, Penelitian, dan Pengembangan Daerah', 1, NULL, 1, NULL, NULL),
(46, 5, 2, 0, 0, NULL, NULL, 'Badan Pengelola Keuangan dan Aset Daerah', 1, NULL, 1, NULL, NULL),
(47, 5, 2, 0, 0, NULL, NULL, 'Badan Pengelola Pendapatan Daerah', 1, NULL, 1, NULL, NULL),
(48, 5, 3, 5, 4, NULL, NULL, 'Badan Kepegawaian Daerah dan Pengembangan Sumber Daya Manusia', 1, NULL, 1, NULL, NULL),
(49, 6, 1, 0, 0, NULL, NULL, 'Inspektorat Daerah', 1, NULL, 1, NULL, NULL),
(50, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bahodopi', 1, NULL, 1, NULL, NULL),
(51, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bumi Raya', 1, NULL, 1, NULL, NULL),
(52, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bungku Barat', 1, NULL, 1, NULL, NULL),
(53, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bungku Pesisir', 1, NULL, 1, NULL, NULL),
(54, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bungku Selatan', 1, NULL, 1, NULL, NULL),
(55, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bungku Tengah', 1, NULL, 1, NULL, NULL),
(56, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Bungi', 2, 55, 1, NULL, NULL),
(57, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Lamberea', 2, 55, 1, NULL, NULL),
(58, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Matano', 2, 55, 1, NULL, NULL),
(59, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Marsaole', 2, 55, 1, NULL, NULL),
(60, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Tofoiso', 2, 55, 1, NULL, NULL),
(61, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Mendui', 2, 55, 1, NULL, NULL),
(62, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Bungku Timur', 1, NULL, 1, NULL, NULL),
(63, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Menui Kepulauan', 1, NULL, 1, NULL, NULL),
(64, 7, 1, 0, 0, NULL, NULL, 'Kelurahan Ulunambo', 2, 63, 1, NULL, NULL),
(65, 7, 1, 0, 0, NULL, NULL, 'Kecamatan Wita Ponda', 1, NULL, 1, NULL, NULL),
(66, 8, 1, 0, 0, NULL, NULL, 'Badan Kesatuan Bangsa dan Politik Daerah', 1, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_program`
--

CREATE TABLE `ref_program` (
  `permen_ver` int(10) UNSIGNED NOT NULL,
  `urusan_kode` int(10) UNSIGNED NOT NULL,
  `bidang_kode` int(10) UNSIGNED NOT NULL,
  `program_kode` int(10) UNSIGNED NOT NULL,
  `program_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_program`
--

INSERT INTO `ref_program` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `program_nama`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN/KOTA', NULL, NULL),
(1, 1, 1, 2, 'PROGRAM PENGELOLAAN PENDIDIKAN', NULL, NULL),
(1, 1, 1, 3, 'PROGRAM PENGEMBANGAN KURIKULUM', NULL, NULL),
(1, 1, 1, 4, 'PROGRAM PENDIDIK DAN TENAGA KEPENDIDIKAN', NULL, NULL),
(1, 1, 1, 5, 'PROGRAM PENGENDALIAN PERIZINAN PENDIDIKAN', NULL, NULL),
(1, 1, 1, 6, 'PROGRAM PENGEMBANGAN BAHASA DAN SASTRA', NULL, NULL),
(1, 1, 2, 2, 'PROGRAM PEMENUHAN UPAYA KESEHATAN PERORANGAN DAN UPAYA KESEHATAN MASYARAKAT', NULL, NULL),
(1, 1, 2, 3, 'PROGRAM PENINGKATAN KAPASITAS SUMBER DAYA MANUSIA KESEHATAN', NULL, NULL),
(1, 1, 2, 4, 'PROGRAM SEDIAAN FARMASI, ALAT KESEHATAN DAN MAKANAN MINUMAN', NULL, NULL),
(1, 1, 2, 5, 'PROGRAM PEMBERDAYAAN MASYARAKAT BIDANG KESEHATAN', NULL, NULL),
(1, 1, 3, 2, 'PROGRAM PENGELOLAAN SUMBER DAYA AIR (SDA)', NULL, NULL),
(1, 1, 3, 3, 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM PENYEDIAAN AIR MINUM', NULL, NULL),
(1, 1, 3, 4, 'PROGRAM PENGEMBANGAN SISTEM DAN PENGELOLAAN PERSAMPAHAN REGIONAL', NULL, NULL),
(1, 1, 3, 5, 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM AIR LIMBAH', NULL, NULL),
(1, 1, 3, 6, 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM DRAINASE', NULL, NULL),
(1, 1, 3, 7, 'PROGRAM PENGEMBANGAN PERMUKIMAN', NULL, NULL),
(1, 1, 3, 8, 'PROGRAM PENATAAN BANGUNAN GEDUNG', NULL, NULL),
(1, 1, 3, 9, 'PROGRAM PENATAAN BANGUNAN DAN LINGKUNGANNYA', NULL, NULL),
(1, 1, 3, 10, 'PROGRAM PENYELENGGARAAN JALAN', NULL, NULL),
(1, 1, 3, 11, 'PROGRAM PENGEMBANGAN JASA KONSTRUKSI', NULL, NULL),
(1, 1, 3, 12, 'PROGRAM PENYELENGGARAAN PENATAAN RUANG', NULL, NULL),
(1, 1, 4, 2, 'PROGRAM PENGEMBANGAN PERUMAHAN', NULL, NULL),
(1, 1, 4, 3, 'PROGRAM KAWASAN PERMUKIMAN', NULL, NULL),
(1, 1, 4, 4, 'PROGRAM PERUMAHAN DAN KAWASAN PERMUKIMAN KUMUH', NULL, NULL),
(1, 1, 4, 5, 'PROGRAM PENINGKATAN PRASARANA, SARANA DAN UTILITAS UMUM (PSU)', NULL, NULL),
(1, 1, 4, 6, 'PROGRAM PENINGKATAN PELAYANAN SERTIFIKASI, KUALIFIKASI, KLASIFIKASI, DAN REGISTRASI BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', NULL, NULL),
(1, 1, 5, 2, 'PROGRAM PENINGKATAN KETENTERAMAN DAN KETERTIBAN UMUM', NULL, NULL),
(1, 1, 5, 3, 'PROGRAM PENANGGULANGAN BENCANA', NULL, NULL),
(1, 1, 5, 4, 'PROGRAM PENCEGAHAN, PENANGGULANGAN, PENYELAMATAN KEBAKARAN DAN PENYELAMATAN NON KEBAKARAN', NULL, NULL),
(1, 1, 6, 2, 'PROGRAM PEMBERDAYAAN SOSIAL', NULL, NULL),
(1, 1, 6, 3, 'PROGRAM PENANGANAN WARGA NEGARA MIGRAN KORBAN TINDAK KEKERASAN', NULL, NULL),
(1, 1, 6, 4, 'PROGRAM REHABILITASI SOSIAL', NULL, NULL),
(1, 1, 6, 5, 'PROGRAM PERLINDUNGAN DAN JAMINAN SOSIAL', NULL, NULL),
(1, 1, 6, 6, 'PROGRAM PENANGANAN BENCANA', NULL, NULL),
(1, 1, 6, 7, 'PROGRAM PENGELOLAAN TAMAN MAKAM PAHLAWAN', NULL, NULL),
(1, 2, 7, 2, 'PROGRAM PERENCANAAN TENAGA KERJA', NULL, NULL),
(1, 2, 7, 3, 'PROGRAM PELATIHAN KERJA DAN PRODUKTIVITAS TENAGA KERJA', NULL, NULL),
(1, 2, 7, 4, 'PROGRAM PENEMPATAN TENAGA KERJA', NULL, NULL),
(1, 2, 7, 5, 'PROGRAM HUBUNGAN INDUSTRIAL', NULL, NULL),
(1, 2, 8, 2, 'PROGRAM PENGARUSUTAMAAN GENDER DAN PEMBERDAYAAN PEREMPUAN', NULL, NULL),
(1, 2, 8, 3, 'PROGRAM PERLINDUNGAN PEREMPUAN', NULL, NULL),
(1, 2, 8, 4, 'PROGRAM PENINGKATAN KUALITAS KELUARGA', NULL, NULL),
(1, 2, 8, 5, 'PROGRAM PENGELOLAAN SISTEM DATA GENDER DAN ANAK', NULL, NULL),
(1, 2, 8, 6, 'PROGRAM PEMENUHAN HAK ANAK (PHA)', NULL, NULL),
(1, 2, 8, 7, 'PROGRAM PERLINDUNGAN KHUSUS ANAK', NULL, NULL),
(1, 2, 9, 2, 'PROGRAM PENGELOLAAN SUMBER DAYA EKONOMI UNTUK KEDAULATAN DAN KEMANDIRIAN PANGAN', NULL, NULL),
(1, 2, 9, 3, 'PROGRAM PENINGKATAN DIVERSIFIKASI DAN KETAHANAN PANGAN MASYARAKAT', NULL, NULL),
(1, 2, 9, 4, 'PROGRAM PENANGANAN KERAWANAN PANGAN', NULL, NULL),
(1, 2, 9, 5, 'PROGRAM PENGAWASAN KEAMANAN PANGAN', NULL, NULL),
(1, 2, 10, 2, 'PROGRAM PENGELOLAAN IZIN LOKASI', NULL, NULL),
(1, 2, 10, 4, 'PROGRAM PENYELESAIAN SENGKETA TANAH GARAPAN', NULL, NULL),
(1, 2, 10, 5, 'PROGRAM PENYELESAIAN GANTI KERUGIAN DAN SANTUNAN TANAH UNTUK PEMBANGUNAN', NULL, NULL),
(1, 2, 10, 6, 'PROGRAM REDISTRIBUSI TANAH, SERTA GANTI KERUGIAN PROGRAM TANAH KELEBIHAN MAKSIMUM DAN TANAH ABSENTEE', NULL, NULL),
(1, 2, 10, 7, 'PROGRAM PENETAPAN TANAH ULAYAT', NULL, NULL),
(1, 2, 10, 8, 'PROGRAM PENGELOLAAN TANAH KOSONG', NULL, NULL),
(1, 2, 10, 9, 'PROGRAM PENGELOLAAN IZIN MEMBUKA TANAH', NULL, NULL),
(1, 2, 10, 10, 'PROGRAM PENATAGUNAAN TANAH', NULL, NULL),
(1, 2, 11, 2, 'PROGRAM PERENCANAAN LINGKUNGAN HIDUP', NULL, NULL),
(1, 2, 11, 3, 'PROGRAM PENGENDALIAN PENCEMARAN DAN/ATAU KERUSAKAN LINGKUNGAN HIDUP', NULL, NULL),
(1, 2, 11, 4, 'PROGRAM PENGELOLAAN KEANEKARAGAMAN HAYATI (KEHATI)', NULL, NULL),
(1, 2, 11, 5, 'PROGRAM PENGENDALIAN BAHAN BERBAHAYA DAN BERACUN (B3) DAN LIMBAH BAHAN BERBAHAYA DAN BERACUN (LIMBAH B3)', NULL, NULL),
(1, 2, 11, 6, 'PROGRAM PEMBINAAN DAN PENGAWASAN TERHADAP IZIN LINGKUNGAN DAN IZIN PERLINDUNGAN DAN PENGELOLAAN LINGKUNGAN HIDUP (PPLH)', NULL, NULL),
(1, 2, 11, 7, 'PROGRAM PENGAKUAN KEBERADAAN MASYARAKAT HUKUM ADAT (MHA), KEARIFAN LOKAL DAN HAK MHA YANG TERKAIT DENGAN PPLH', NULL, NULL),
(1, 2, 11, 8, 'PROGRAM PENINGKATAN PENDIDIKAN, PELATIHAN DAN PENYULUHAN LINGKUNGAN HIDUP UNTUK MASYARAKAT', NULL, NULL),
(1, 2, 11, 9, 'PROGRAM PENGHARGAAN LINGKUNGAN HIDUP UNTUK MASYARAKAT', NULL, NULL),
(1, 2, 11, 10, 'PROGRAM PENANGANAN PENGADUAN LINGKUNGAN HIDUP', NULL, NULL),
(1, 2, 11, 11, 'PROGRAM PENGELOLAAN PERSAMPAHAN', NULL, NULL),
(1, 2, 12, 2, 'PROGRAM PENDAFTARAN PENDUDUK', NULL, NULL),
(1, 2, 12, 3, 'PROGRAM PENCATATAN SIPIL', NULL, NULL),
(1, 2, 12, 4, 'PROGRAM PENGELOLAAN INFORMASI ADMINISTRASI KEPENDUDUKAN', NULL, NULL),
(1, 2, 12, 5, 'PROGRAM PENGELOLAAN PROFIL KEPENDUDUKAN', NULL, NULL),
(1, 2, 13, 2, 'PROGRAM PENATAAN DESA', NULL, NULL),
(1, 2, 13, 3, 'PROGRAM PENINGKATAN KERJASAMA DESA', NULL, NULL),
(1, 2, 13, 4, 'PROGRAM ADMINISTRASI PEMERINTAHAN DESA', NULL, NULL),
(1, 2, 13, 5, 'PROGRAM PEMBERDAYAAN LEMBAGA KEMASYARAKATAN, LEMBAGA ADAT DAN MASYARAKAT HUKUM ADAT', NULL, NULL),
(1, 2, 14, 2, 'PROGRAM PENGENDALIAN PENDUDUK', NULL, NULL),
(1, 2, 14, 3, 'PROGRAM PEMBINAAN KELUARGA BERENCANA (KB)', NULL, NULL),
(1, 2, 14, 4, 'PROGRAM PEMBERDAYAAN DAN PENINGKATAN KELUARGA SEJAHTERA (KS)', NULL, NULL),
(1, 2, 15, 2, 'PROGRAM PENYELENGGARAAN LALU LINTAS DAN ANGKUTAN JALAN (LLAJ)', NULL, NULL),
(1, 2, 15, 3, 'PROGRAM PENGELOLAAN PELAYARAN', NULL, NULL),
(1, 2, 15, 4, 'PROGRAM PENGELOLAAN PENERBANGAN', NULL, NULL),
(1, 2, 15, 5, 'PROGRAM PENGELOLAAN PERKERETAAPIAN', NULL, NULL),
(1, 2, 16, 2, 'PROGRAM INFORMASI DAN KOMUNIKASI PUBLIK', NULL, NULL),
(1, 2, 16, 3, 'PROGRAM APLIKASI INFORMATIKA', NULL, NULL),
(1, 2, 17, 2, 'PROGRAM PELAYANAN IZIN USAHA SIMPAN PINJAM', NULL, NULL),
(1, 2, 17, 3, 'PROGRAM PENGAWASAN DAN PEMERIKSAAN KOPERASI', NULL, NULL),
(1, 2, 17, 4, 'PROGRAM PENILAIAN KESEHATAN KSP/USP KOPERASI', NULL, NULL),
(1, 2, 17, 5, 'PROGRAM PENDIDIKAN DAN LATIHAN PERKOPERASIAN', NULL, NULL),
(1, 2, 17, 6, 'PROGRAM PEMBERDAYAAN DAN PERLINDUNGAN KOPERASI', NULL, NULL),
(1, 2, 17, 7, 'PROGRAM PEMBERDAYAAN USAHA MENENGAH, USAHA KECIL, DAN USAHA MIKRO (UMKM)', NULL, NULL),
(1, 2, 17, 8, 'PROGRAM PENGEMBANGAN UMKM', NULL, NULL),
(1, 2, 18, 2, 'PROGRAM PENGEMBANGAN IKLIM PENANAMAN MODAL', NULL, NULL),
(1, 2, 18, 3, 'PROGRAM PROMOSI PENANAMAN MODAL', NULL, NULL),
(1, 2, 18, 4, 'PROGRAM PELAYANAN PENANAMAN MODAL', NULL, NULL),
(1, 2, 18, 5, 'PROGRAM PENGENDALIAN PELAKSANAAN PENANAMAN MODAL', NULL, NULL),
(1, 2, 18, 6, 'PROGRAM PENGELOLAAN DATA DAN SISTEM INFORMASI PENANAMAN MODAL', NULL, NULL),
(1, 2, 19, 2, 'PROGRAM PENGEMBANGAN KAPASITAS DAYA SAING KEPEMUDAAN', NULL, NULL),
(1, 2, 19, 3, 'PROGRAM PENGEMBANGAN KAPASITAS DAYA SAING KEOLAHRAGAAN', NULL, NULL),
(1, 2, 19, 4, 'PROGRAM PENGEMBANGAN KAPASITAS KEPRAMUKAAN', NULL, NULL),
(1, 2, 20, 2, 'PROGRAM PENYELENGGARAAN STATISTIK SEKTORAL', NULL, NULL),
(1, 2, 21, 2, 'PROGRAM PENYELENGGARAAN PERSANDIAN UNTUK PENGAMANAN INFORMASI', NULL, NULL),
(1, 2, 22, 2, 'PROGRAM PENGEMBANGAN KEBUDAYAAN', NULL, NULL),
(1, 2, 22, 3, 'PROGRAM PENGEMBANGAN KESENIAN TRADISIONAL', NULL, NULL),
(1, 2, 22, 4, 'PROGRAM PEMBINAAN SEJARAH', NULL, NULL),
(1, 2, 22, 5, 'PROGRAM PELESTARIAN DAN PENGELOLAAN CAGAR BUDAYA', NULL, NULL),
(1, 2, 22, 6, 'PROGRAM PENGELOLAAN PERMUSEUMAN', NULL, NULL),
(1, 2, 23, 2, 'PROGRAM PEMBINAAN PERPUSTAKAAN', NULL, NULL),
(1, 2, 23, 3, 'PROGRAM PELESTARIAN KOLEKSI NASIONAL DAN NASKAH KUNO', NULL, NULL),
(1, 2, 24, 2, 'PROGRAM PENGELOLAAN ARSIP', NULL, NULL),
(1, 2, 24, 3, 'PROGRAM PERLINDUNGAN DAN PENYELAMATAN ARSIP', NULL, NULL),
(1, 2, 24, 4, 'PROGRAM PERIZINAN PENGGUNAAN ARSIP', NULL, NULL),
(1, 3, 25, 3, 'PROGRAM PENGELOLAAN PERIKANAN TANGKAP', NULL, NULL),
(1, 3, 25, 4, 'PROGRAM PENGELOLAAN PERIKANAN BUDIDAYA', NULL, NULL),
(1, 3, 25, 5, 'PROGRAM PENGAWASAN SUMBER DAYA KELAUTAN DAN PERIKANAN', NULL, NULL),
(1, 3, 25, 6, 'PROGRAM PENGOLAHAN DAN PEMASARAN HASIL PERIKANAN', NULL, NULL),
(1, 3, 26, 2, 'PROGRAM PENINGKATAN DAYA TARIK DESTINASI PARIWISATA', NULL, NULL),
(1, 3, 26, 3, 'PROGRAM PEMASARAN PARIWISATA', NULL, NULL),
(1, 3, 26, 4, 'PROGRAM PENGEMBANGAN EKONOMI KREATIF MELALUI PEMANFAATAN DAN PERLINDUNGAN HAK KEKAYAAN INTELEKTUAL', NULL, NULL),
(1, 3, 26, 5, 'PROGRAM PENGEMBANGAN SUMBER DAYA PARIWISATA DAN EKONOMI KREATIF', NULL, NULL),
(1, 3, 27, 2, 'PROGRAM PENYEDIAAN DAN PENGEMBANGAN SARANA PERTANIAN', NULL, NULL),
(1, 3, 27, 3, 'PROGRAM PENYEDIAAN DAN PENGEMBANGAN PRASARANA PERTANIAN', NULL, NULL),
(1, 3, 27, 4, 'PROGRAM PENGENDALIAN KESEHATAN HEWAN DAN KESEHATAN MASYARAKAT VETERINER', NULL, NULL),
(1, 3, 27, 5, 'PROGRAM PENGENDALIAN DAN PENANGGULANGAN BENCANA PERTANIAN', NULL, NULL),
(1, 3, 27, 6, 'PROGRAM PERIZINAN USAHA PERTANIAN', NULL, NULL),
(1, 3, 27, 7, 'PROGRAM PENYULUHAN PERTANIAN', NULL, NULL),
(1, 3, 28, 4, 'PROGRAM KONSERVASI SUMBER DAYA ALAM HAYATI DAN EKOSISTEMNYA', NULL, NULL),
(1, 3, 29, 5, 'PROGRAM PENGELOLAAN ENERGI BARU TERBARUKAN', NULL, NULL),
(1, 3, 30, 2, 'PROGRAM PERIZINAN DAN PENDAFTARAN PERUSAHAAN', NULL, NULL),
(1, 3, 30, 3, 'PROGRAM PENINGKATAN SARANA DISTRIBUSI PERDAGANGAN', NULL, NULL),
(1, 3, 30, 4, 'PROGRAM STABILISASI HARGA BARANG KEBUTUHAN POKOK DAN BARANG PENTING', NULL, NULL),
(1, 3, 30, 5, 'PROGRAM PENGEMBANGAN EKSPOR', NULL, NULL),
(1, 3, 30, 6, 'PROGRAM STANDARDISASI DAN PERLINDUNGAN KONSUMEN', NULL, NULL),
(1, 3, 30, 7, 'PROGRAM PENGGUNAAN DAN PEMASARAN PRODUK DALAM NEGERI', NULL, NULL),
(1, 3, 31, 2, 'PROGRAM PERENCANAAN DAN PEMBANGUNAN INDUSTRI', NULL, NULL),
(1, 3, 31, 3, 'PROGRAM PENGENDALIAN IZIN USAHA INDUSTRI KABUPATEN/KOTA', NULL, NULL),
(1, 3, 31, 4, 'PROGRAM PENGELOLAAN SISTEM INFORMASI INDUSTRI NASIONAL', NULL, NULL),
(1, 3, 32, 2, 'PROGRAM PERENCANAAN KAWASAN TRANSMIGRASI', NULL, NULL),
(1, 3, 32, 3, 'PROGRAM PEMBANGUNAN KAWASAN TRANSMIGRASI', NULL, NULL),
(1, 3, 32, 4, 'PROGRAM PENGEMBANGAN KAWASAN TRANSMIGRASI', NULL, NULL),
(1, 4, 1, 2, 'PROGRAM PEMERINTAHAN DAN KESEJAHTERAAN RAKYAT', NULL, NULL),
(1, 4, 1, 3, 'PROGRAM PEREKONOMIAN DAN PEMBANGUNAN', NULL, NULL),
(1, 4, 2, 2, 'PROGRAM DUKUNGAN PELAKSANAAN TUGAS DAN FUNGSI DPRD', NULL, NULL),
(1, 5, 1, 2, 'PROGRAM PERENCANAAN, PENGENDALIAN DAN EVALUASI PEMBANGUNAN DAERAH', NULL, NULL),
(1, 5, 1, 3, 'PROGRAM KOORDINASI DAN SINKRONISASI PERENCANAAN PEMBANGUNAN DAERAH', NULL, NULL),
(1, 5, 2, 2, 'PROGRAM PENGELOLAAN KEUANGAN DAERAH', NULL, NULL),
(1, 5, 2, 3, 'PROGRAM PENGELOLAAN BARANG MILIK DAERAH', NULL, NULL),
(1, 5, 2, 4, 'PROGRAM PENGELOLAAN PENDAPATAN DAERAH', NULL, NULL),
(1, 5, 3, 2, 'PROGRAM KEPEGAWAIAN DAERAH', NULL, NULL),
(1, 5, 4, 2, 'PROGRAM PENGEMBANGAN SUMBER DAYA MANUSIA', NULL, NULL),
(1, 5, 5, 2, 'PROGRAM PENELITIAN DAN PENGEMBANGAN DAERAH', NULL, NULL),
(1, 5, 6, 2, 'PROGRAM PENGELOLAAN PERBATASAN', NULL, NULL),
(1, 6, 1, 2, 'PROGRAM PENYELENGGARAAN PENGAWASAN', NULL, NULL),
(1, 6, 1, 3, 'PROGRAM PERUMUSAN KEBIJAKAN, PENDAMPINGAN DAN ASISTENSI', NULL, NULL),
(1, 7, 1, 2, 'PROGRAM PENYELENGGARAAN PEMERINTAHAN DAN PELAYANAN PUBLIK', NULL, NULL),
(1, 7, 1, 3, 'PROGRAM PEMBERDAYAAN MASYARAKAT DESA DAN KELURAHAN', NULL, NULL),
(1, 7, 1, 4, 'PROGRAM KOORDINASI KETENTRAMAN DAN KETERTIBAN UMUM', NULL, NULL),
(1, 7, 1, 5, 'PROGRAM PENYELENGGARAAN URUSAN PEMERINTAHAN UMUM', NULL, NULL),
(1, 7, 1, 6, 'PROGRAM PEMBINAAN DAN PENGAWASAN PEMERINTAHAN DESA', NULL, NULL),
(1, 8, 1, 2, 'PROGRAM PENGUATAN IDEOLOGI PANCASILA DAN KARAKTER KEBANGSAAN', NULL, NULL),
(1, 8, 1, 3, 'PROGRAM PENINGKATAN PERAN PARTAI POLITIK DAN LEMBAGA PENDIDIKAN MELALUI PENDIDIKAN POLITIK DAN PENGEMBANGAN ETIKA SERTA BUDAYA POLITIK', NULL, NULL),
(1, 8, 1, 4, 'PROGRAM PEMBERDAYAAN DAN PENGAWASAN ORGANISASI KEMASYARAKATAN', NULL, NULL),
(1, 8, 1, 5, 'PROGRAM PEMBINAAN DAN PENGEMBANGAN KETAHANAN EKONOMI, SOSIAL, DAN BUDAYA', NULL, NULL),
(1, 8, 1, 6, 'PROGRAM PENINGKATAN KEWASPADAAN NASIONAL DAN PENINGKATAN KUALITAS DAN FASILITASI PENANGANAN KONFLIK SOSIAL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_kegiatan`
--

CREATE TABLE `ref_renstra_kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_program_id` bigint(20) UNSIGNED NOT NULL,
  `permen_ver` int(11) NOT NULL,
  `urusan_kode` int(11) NOT NULL,
  `bidang_kode` int(11) NOT NULL,
  `program_kode` int(11) NOT NULL,
  `kegiatan_kode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_sasaran`
--

CREATE TABLE `ref_renstra_sasaran` (
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_tujuan_kode` int(10) UNSIGNED NOT NULL,
  `renstra_sasaran_kode` int(10) UNSIGNED NOT NULL,
  `renstra_sasaran_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_sasaran_indikator`
--

CREATE TABLE `ref_renstra_sasaran_indikator` (
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_tujuan_kode` int(10) UNSIGNED NOT NULL,
  `renstra_sasaran_kode` int(10) UNSIGNED NOT NULL,
  `renstra_sasaran_indikator_kode` int(10) UNSIGNED NOT NULL,
  `renstra_sasaran_indikator_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sasaran_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sasaran_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `renstra_sasaran_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sasaran_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sasaran_indikator_th0_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_realisasi_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_capaian_target` double DEFAULT NULL,
  `renstra_sasaran_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_sub_kegiatan`
--

CREATE TABLE `ref_renstra_sub_kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renstra_kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `permen_ver` int(11) NOT NULL,
  `urusan_kode` int(11) NOT NULL,
  `bidang_kode` int(11) NOT NULL,
  `program_kode` int(11) NOT NULL,
  `kegiatan_kode` int(11) NOT NULL,
  `sub_kegiatan_kode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_tujuan`
--

CREATE TABLE `ref_renstra_tujuan` (
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_tujuan_kode` int(10) UNSIGNED NOT NULL,
  `renstra_tujuan_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_renstra_tujuan_indikator`
--

CREATE TABLE `ref_renstra_tujuan_indikator` (
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_tujuan_kode` int(10) UNSIGNED NOT NULL,
  `renstra_tujuan_indikator_kode` int(10) UNSIGNED NOT NULL,
  `renstra_tujuan_indikator_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_tujuan_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_tujuan_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `renstra_tujuan_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_tujuan_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_tujuan_indikator_th0_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_realisasi_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_capaian_target` double DEFAULT NULL,
  `renstra_tujuan_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_rkpd_sub_kegiatan`
--

CREATE TABLE `ref_rkpd_sub_kegiatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ke` int(11) NOT NULL,
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `permen_ver` int(11) NOT NULL,
  `urusan_kode` int(11) NOT NULL,
  `bidang_kode` int(11) NOT NULL,
  `program_kode` int(11) NOT NULL,
  `kegiatan_kode` int(11) NOT NULL,
  `sub_kegiatan_kode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_rkpd_sub_kegiatan_indikator`
--

CREATE TABLE `ref_rkpd_sub_kegiatan_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rkpd_sub_kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `rkpd_sub_kegiatan_indikator_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_lokasi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_latitude` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_longitude` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_target` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_target_jenis` tinyint(4) DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_target_pilihan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_pagu` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_pagu_perubahan` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw1_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw1_pagu` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw2_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw2_pagu` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw3_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw3_pagu` double DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw4_target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkpd_sub_kegiatan_indikator_tw4_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_rkpd_sub_kegiatan_triwulan`
--

CREATE TABLE `ref_rkpd_sub_kegiatan_triwulan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renstra_sub_kegiatan_indikator_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ke` int(11) NOT NULL,
  `triwulan_ke` tinyint(4) NOT NULL,
  `realisasi_target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `realisasi_pagu` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd`
--

CREATE TABLE `ref_rpjmd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_tahun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd`
--

INSERT INTO `ref_rpjmd` (`id`, `rpjmd_tahun`, `created_at`, `updated_at`) VALUES
(1, 2018, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd_misi`
--

CREATE TABLE `ref_rpjmd_misi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_visi_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_misi_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd_misi`
--

INSERT INTO `ref_rpjmd_misi` (`id`, `rpjmd_visi_id`, `rpjmd_misi_nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'MENCIPTAKAN PEMERINTAHAN YANG BAIK DAN BERSIH MELALUI PENINGKATAN KAPABILITAS, PROFESIONALITAS DAN KESEJAHTERAAN APARATUR PEMERINTAH DAERAH BERDASARKAN NILAI-NILAI  KEBENARAN DAN KEADILAN', NULL, NULL),
(2, 1, 'MENINGKATKAN PENGELOLAAN SUMBERDAYA ALAM (SDA), PENGEMBANGAN UMKM, IKM, KOPERASI DAN BUMDES UNTUK MENCAPAI KESAJAHTERAAN BERSAMA', NULL, NULL),
(3, 1, 'MEWUJUDKAN PELAYANAN PENDIDIKAN DAN KESEHATAN YANG BERKUALITAS MELALUI PEMBIAYAAN GRATIS, BERLANDASKAN KEHIDUPAN MASYARAKAT YANG BERIMAN DAN BERTAQWA, SEHINGGA TERCIPTA KERUKUNAN HIDUP ANTAR UMAT BERAGAMA.', NULL, NULL),
(4, 1, 'MENINGKATKAN KUALITAS HIDUP MASYARAKAT MELALUI PENINGKATAN INFRASTRUKTUR DAERAH, SEHINGGA MENGURANGI KESENJANGAN WILAYAH DAN TERCIPTANYA KEHIDUPAN MASYARAKAT YANG HARMONS DAN BAHAGIA', NULL, NULL),
(5, 1, 'MEWUJUDKAN LINGKUNGAN HIDUP BERKELANJUTAN, DAN MENINGKATKAN KETAHANAN MASYARAKAT MENGHADAPI PERUBAHAN IKLIM DAN BENCANA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd_program`
--

CREATE TABLE `ref_rpjmd_program` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_sasaran_id` bigint(20) UNSIGNED NOT NULL,
  `permen_ver` int(11) NOT NULL,
  `urusan_kode` int(11) NOT NULL,
  `bidang_kode` int(11) NOT NULL,
  `program_kode` int(11) NOT NULL,
  `opd_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_tujuan_kode` int(11) DEFAULT NULL,
  `renstra_sasaran_kode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd_program`
--

INSERT INTO `ref_rpjmd_program` (`id`, `rpjmd_sasaran_id`, `permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `opd_id`, `renstra_tujuan_kode`, `renstra_sasaran_kode`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 13, 4, 25, NULL, NULL, '2022-08-04 04:08:09', '2022-08-04 04:08:09'),
(2, 1, 1, 2, 13, 5, 25, NULL, NULL, '2022-08-04 04:11:33', '2022-08-04 04:11:33'),
(3, 1, 1, 7, 1, 3, 63, NULL, NULL, '2022-08-04 04:13:41', '2022-08-04 04:13:41'),
(4, 1, 1, 7, 1, 3, 54, NULL, NULL, '2022-08-04 04:15:14', '2022-08-04 04:15:14'),
(5, 1, 1, 7, 1, 3, 55, NULL, NULL, '2022-08-04 04:16:40', '2022-08-04 04:16:40'),
(6, 1, 1, 7, 1, 3, 52, NULL, NULL, '2022-08-04 04:20:53', '2022-08-04 04:22:12'),
(7, 1, 1, 7, 1, 3, 50, NULL, NULL, '2022-08-04 04:23:19', '2022-08-04 04:23:19'),
(8, 1, 1, 7, 1, 3, 51, NULL, NULL, '2022-08-04 04:24:30', '2022-08-04 04:24:30'),
(9, 1, 1, 7, 1, 3, 62, NULL, NULL, '2022-08-04 04:25:48', '2022-08-04 04:25:48'),
(10, 1, 1, 7, 1, 3, 53, NULL, NULL, '2022-08-04 04:27:00', '2022-08-04 04:27:00'),
(11, 1, 1, 7, 1, 3, 65, NULL, NULL, '2022-08-04 04:28:07', '2022-08-04 04:28:07'),
(12, 1, 1, 7, 1, 6, 63, NULL, NULL, '2022-08-04 07:42:31', '2022-08-04 07:42:31'),
(13, 1, 1, 7, 1, 6, 54, NULL, NULL, '2022-08-04 07:43:48', '2022-08-04 07:43:48'),
(14, 1, 1, 7, 1, 6, 55, NULL, NULL, '2022-08-04 07:45:11', '2022-08-04 07:45:11'),
(15, 1, 1, 7, 1, 6, 52, NULL, NULL, '2022-08-04 07:46:27', '2022-08-04 07:46:27'),
(16, 1, 1, 7, 1, 6, 50, NULL, NULL, '2022-08-04 07:48:08', '2022-08-04 07:48:08'),
(17, 1, 1, 7, 1, 6, 51, NULL, NULL, '2022-08-04 07:50:21', '2022-08-04 07:50:21'),
(18, 1, 1, 7, 1, 6, 65, NULL, NULL, '2022-08-04 07:51:29', '2022-08-04 07:51:29'),
(19, 1, 1, 7, 1, 6, 62, NULL, NULL, '2022-08-04 07:53:23', '2022-08-04 07:53:23'),
(20, 1, 1, 7, 1, 6, 53, NULL, NULL, '2022-08-04 07:54:27', '2022-08-04 07:54:27'),
(21, 1, 1, 2, 13, 2, 25, NULL, NULL, '2022-08-04 08:22:49', '2022-08-04 08:22:49'),
(22, 1, 1, 2, 13, 3, 25, NULL, NULL, '2022-08-04 08:29:57', '2022-08-04 08:29:57'),
(23, 2, 1, 5, 2, 3, 46, NULL, NULL, '2022-08-04 08:47:59', '2022-08-04 08:47:59'),
(24, 2, 1, 5, 2, 2, 46, NULL, NULL, '2022-08-04 08:49:49', '2022-08-04 08:49:49'),
(25, 2, 1, 5, 2, 4, 46, NULL, NULL, '2022-08-04 08:53:10', '2022-08-04 08:53:10'),
(26, 2, 1, 6, 1, 2, 49, NULL, NULL, '2022-08-04 08:55:13', '2022-08-04 08:55:13'),
(27, 3, 1, 4, 2, 2, 44, NULL, NULL, '2022-08-04 08:58:34', '2022-08-04 08:58:34'),
(28, 3, 1, 5, 3, 2, 48, NULL, NULL, '2022-08-04 09:01:18', '2022-08-04 09:01:18'),
(29, 3, 1, 5, 1, 3, 45, NULL, NULL, '2022-08-05 01:47:35', '2022-08-05 01:47:35'),
(30, 3, 1, 4, 1, 2, 34, NULL, NULL, '2022-08-05 01:52:40', '2022-08-05 01:52:40'),
(31, 3, 1, 5, 5, 2, 45, NULL, NULL, '2022-08-05 01:55:10', '2022-08-05 01:55:10'),
(32, 3, 1, 2, 24, 2, 31, NULL, NULL, '2022-08-05 01:56:26', '2022-08-05 01:56:26'),
(33, 3, 1, 5, 4, 2, 48, NULL, NULL, '2022-08-05 01:58:33', '2022-08-05 01:58:33'),
(34, 3, 1, 0, 0, 1, 1, NULL, NULL, '2022-08-05 02:10:25', '2022-08-05 02:10:25'),
(35, 3, 1, 0, 0, 1, 16, NULL, NULL, '2022-08-05 02:12:25', '2022-08-05 02:12:25'),
(36, 3, 1, 0, 0, 1, 17, NULL, NULL, '2022-08-05 02:17:04', '2022-08-05 02:17:04'),
(37, 3, 1, 0, 0, 1, 23, NULL, NULL, '2022-08-05 02:18:20', '2022-08-05 02:18:20'),
(38, 3, 1, 0, 0, 1, 32, NULL, NULL, '2022-08-05 02:19:20', '2022-08-05 02:19:20'),
(39, 3, 1, 0, 0, 1, 44, NULL, NULL, '2022-08-05 02:20:27', '2022-08-05 02:20:27'),
(40, 3, 1, 0, 0, 1, 47, NULL, NULL, '2022-08-05 02:21:32', '2022-08-05 02:21:32'),
(41, 3, 1, 0, 0, 1, 50, NULL, NULL, '2022-08-05 02:22:22', '2022-08-05 02:22:22'),
(42, 3, 1, 0, 0, 1, 65, NULL, NULL, '2022-08-05 02:23:32', '2022-08-05 02:23:32'),
(43, 3, 1, 0, 0, 1, 24, NULL, NULL, '2022-08-05 02:26:21', '2022-08-05 02:26:21'),
(44, 3, 1, 0, 0, 1, 4, NULL, NULL, '2022-08-05 02:27:38', '2022-08-05 02:27:38'),
(45, 3, 1, 0, 0, 1, 29, NULL, NULL, '2022-08-05 02:29:31', '2022-08-05 02:29:31'),
(46, 3, 1, 0, 0, 1, 46, NULL, NULL, '2022-08-05 02:31:07', '2022-08-05 02:31:07'),
(47, 3, 1, 0, 0, 1, 18, NULL, NULL, '2022-08-05 02:32:22', '2022-08-05 02:32:22'),
(48, 3, 1, 0, 0, 1, 19, NULL, NULL, '2022-08-05 02:35:14', '2022-08-05 02:35:14'),
(49, 3, 1, 0, 0, 1, 20, NULL, NULL, '2022-08-05 02:36:39', '2022-08-05 02:36:39'),
(50, 3, 1, 0, 0, 1, 21, NULL, NULL, '2022-08-05 02:37:59', '2022-08-05 02:37:59'),
(51, 3, 1, 0, 0, 1, 22, NULL, NULL, '2022-08-05 02:39:09', '2022-08-05 02:39:09'),
(52, 3, 1, 0, 0, 1, 25, NULL, NULL, '2022-08-05 03:48:03', '2022-08-05 03:48:03'),
(53, 3, 1, 0, 0, 1, 26, NULL, NULL, '2022-08-05 03:49:57', '2022-08-05 03:49:57'),
(54, 3, 1, 0, 0, 1, 27, NULL, NULL, '2022-08-05 03:52:52', '2022-08-05 03:52:52'),
(55, 3, 1, 0, 0, 1, 28, NULL, NULL, '2022-08-05 03:56:01', '2022-08-05 03:56:01'),
(56, 3, 1, 0, 0, 1, 30, NULL, NULL, '2022-08-05 04:02:34', '2022-08-05 04:02:34'),
(57, 3, 1, 2, 23, 2, 31, NULL, NULL, '2022-08-05 04:04:51', '2022-08-05 04:04:51'),
(58, 3, 1, 0, 0, 1, 33, NULL, NULL, '2022-08-05 04:08:52', '2022-08-05 04:08:52'),
(59, 3, 1, 0, 0, 1, 34, NULL, NULL, '2022-08-05 04:10:50', '2022-08-05 04:10:50'),
(60, 3, 1, 0, 0, 1, 45, NULL, NULL, '2022-08-05 04:13:52', '2022-08-05 04:13:52'),
(61, 3, 1, 0, 0, 1, 48, NULL, NULL, '2022-08-05 04:17:43', '2022-08-05 04:17:43'),
(62, 3, 1, 0, 0, 1, 49, NULL, NULL, '2022-08-05 06:45:45', '2022-08-05 06:45:45'),
(63, 3, 1, 0, 0, 1, 51, NULL, NULL, '2022-08-05 06:46:49', '2022-08-05 06:46:49'),
(64, 3, 1, 0, 0, 1, 52, NULL, NULL, '2022-08-05 06:47:49', '2022-08-05 06:47:49'),
(65, 3, 1, 0, 0, 1, 53, NULL, NULL, '2022-08-05 06:49:44', '2022-08-05 06:49:44'),
(66, 3, 1, 0, 0, 1, 54, NULL, NULL, '2022-08-05 06:50:42', '2022-08-05 06:50:42'),
(67, 3, 1, 0, 0, 1, 55, NULL, NULL, '2022-08-05 06:51:40', '2022-08-05 06:51:40'),
(68, 3, 1, 0, 0, 1, 62, NULL, NULL, '2022-08-05 06:52:34', '2022-08-05 06:52:34'),
(69, 3, 1, 0, 0, 1, 63, NULL, NULL, '2022-08-05 06:54:00', '2022-08-05 06:54:00'),
(70, 3, 1, 0, 0, 1, 66, NULL, NULL, '2022-08-05 06:55:27', '2022-08-05 06:55:27'),
(71, 3, 1, 4, 1, 3, 34, NULL, NULL, '2022-08-05 06:56:32', '2022-08-05 06:56:32'),
(72, 3, 1, 5, 1, 2, 45, NULL, NULL, '2022-08-05 06:59:01', '2022-08-05 06:59:01'),
(73, 3, 1, 2, 24, 4, 31, NULL, NULL, '2022-08-05 07:01:59', '2022-08-05 07:01:59'),
(74, 3, 1, 2, 24, 3, 31, NULL, NULL, '2022-08-05 07:09:15', '2022-08-05 07:09:15'),
(75, 3, 1, 6, 1, 3, 49, NULL, NULL, '2022-08-05 07:10:26', '2022-08-05 07:10:26'),
(76, 4, 1, 2, 16, 3, 27, NULL, NULL, '2022-08-05 07:15:04', '2022-08-05 07:15:04'),
(77, 4, 1, 2, 16, 2, 27, NULL, NULL, '2022-08-05 07:17:17', '2022-08-05 07:17:17'),
(78, 4, 1, 2, 18, 4, 29, NULL, NULL, '2022-08-05 07:19:56', '2022-08-05 07:19:56'),
(79, 4, 1, 2, 12, 3, 24, NULL, NULL, '2022-08-05 07:21:16', '2022-08-05 07:21:16'),
(80, 4, 1, 2, 12, 2, 24, NULL, NULL, '2022-08-05 07:30:19', '2022-08-05 07:30:19'),
(81, 4, 1, 2, 18, 6, 29, NULL, NULL, '2022-08-05 07:34:23', '2022-08-05 07:34:23'),
(82, 4, 1, 2, 12, 4, 24, NULL, NULL, '2022-08-05 07:36:20', '2022-08-05 07:36:20'),
(83, 4, 1, 2, 12, 5, 24, NULL, NULL, '2022-08-05 07:38:43', '2022-08-05 07:38:43'),
(84, 4, 1, 7, 1, 2, 63, NULL, NULL, '2022-08-05 07:59:57', '2022-08-05 07:59:57'),
(85, 4, 1, 7, 1, 2, 54, NULL, NULL, '2022-08-05 08:02:44', '2022-08-05 08:02:44'),
(86, 4, 1, 7, 1, 2, 55, NULL, NULL, '2022-08-05 08:04:17', '2022-08-05 08:04:17'),
(87, 4, 1, 7, 1, 2, 52, NULL, NULL, '2022-08-05 08:07:21', '2022-08-05 08:07:21'),
(88, 4, 1, 7, 1, 2, 52, NULL, NULL, '2022-08-05 08:08:05', '2022-08-05 08:08:05'),
(89, 4, 1, 7, 1, 2, 50, NULL, NULL, '2022-08-05 08:09:03', '2022-08-05 08:09:03'),
(90, 4, 1, 7, 1, 2, 51, NULL, NULL, '2022-08-05 08:10:27', '2022-08-05 08:10:27'),
(91, 4, 1, 7, 1, 2, 65, NULL, NULL, '2022-08-05 08:11:35', '2022-08-05 08:11:35'),
(93, 4, 1, 7, 1, 2, 62, NULL, NULL, '2022-08-05 08:15:24', '2022-08-05 08:15:24'),
(94, 4, 1, 7, 1, 2, 53, NULL, NULL, '2022-08-05 08:16:42', '2022-08-05 08:16:42'),
(95, 4, 1, 7, 1, 5, 63, NULL, NULL, '2022-08-05 08:19:46', '2022-08-05 08:19:46'),
(96, 4, 1, 7, 1, 5, 54, NULL, NULL, '2022-08-05 08:21:00', '2022-08-05 08:21:00'),
(97, 4, 1, 7, 1, 5, 55, NULL, NULL, '2022-08-05 08:22:38', '2022-08-05 08:22:38'),
(98, 4, 1, 7, 1, 5, 52, NULL, NULL, '2022-08-05 08:24:06', '2022-08-05 08:24:06'),
(99, 4, 1, 7, 1, 5, 50, NULL, NULL, '2022-08-05 08:25:30', '2022-08-05 08:25:30'),
(100, 4, 1, 7, 1, 5, 51, NULL, NULL, '2022-08-05 08:26:38', '2022-08-05 08:26:38'),
(101, 5, 1, 3, 25, 5, 32, NULL, NULL, '2022-08-08 01:53:45', '2022-08-08 01:53:45'),
(102, 5, 1, 3, 25, 4, 32, NULL, NULL, '2022-08-08 01:56:01', '2022-08-08 01:56:01'),
(103, 5, 1, 3, 25, 3, 32, NULL, NULL, '2022-08-08 01:57:17', '2022-08-08 01:57:17'),
(104, 5, 1, 3, 27, 5, 22, NULL, NULL, '2022-08-08 01:59:17', '2022-08-08 01:59:17'),
(105, 5, 1, 3, 27, 4, 22, NULL, NULL, '2022-08-08 02:02:34', '2022-08-08 02:02:34'),
(106, 5, 1, 3, 25, 6, 32, NULL, NULL, '2022-08-08 02:06:20', '2022-08-08 02:06:20'),
(107, 5, 1, 3, 27, 3, 22, NULL, NULL, '2022-08-08 02:08:20', '2022-08-08 02:08:20'),
(108, 5, 1, 3, 27, 2, 22, NULL, NULL, '2022-08-08 02:14:56', '2022-08-08 02:14:56'),
(109, 5, 1, 3, 27, 7, 22, NULL, NULL, '2022-08-08 02:20:10', '2022-08-08 02:20:10'),
(110, 5, 1, 3, 27, 6, 22, NULL, NULL, '2022-08-08 02:22:06', '2022-08-08 02:22:06'),
(111, 6, 1, 2, 9, 4, 22, NULL, NULL, '2022-08-08 02:30:32', '2022-08-08 02:30:32'),
(112, 6, 1, 2, 9, 5, 22, NULL, NULL, '2022-08-08 02:31:41', '2022-08-08 02:31:41'),
(113, 6, 1, 2, 9, 2, 22, NULL, NULL, '2022-08-08 02:38:35', '2022-08-08 02:38:35'),
(114, 6, 1, 2, 9, 3, 22, NULL, NULL, '2022-08-08 02:42:25', '2022-08-08 02:42:25'),
(115, 7, 1, 1, 6, 2, 20, NULL, NULL, '2022-08-08 02:46:30', '2022-08-08 02:46:30'),
(117, 7, 1, 1, 6, 6, 20, NULL, NULL, '2022-08-08 03:30:17', '2022-08-08 03:30:17'),
(118, 7, 1, 1, 6, 5, 20, NULL, NULL, '2022-08-08 03:31:31', '2022-08-08 03:31:31'),
(119, 7, 1, 1, 6, 4, 20, NULL, NULL, '2022-08-08 03:33:16', '2022-08-08 03:33:16'),
(120, 8, 1, 3, 31, 4, 33, NULL, NULL, '2022-08-08 03:36:36', '2022-08-08 03:36:36'),
(121, 8, 1, 3, 31, 3, 33, NULL, NULL, '2022-08-08 03:41:26', '2022-08-08 03:41:26'),
(122, 8, 1, 3, 31, 2, 33, NULL, NULL, '2022-08-08 03:42:36', '2022-08-08 03:42:36'),
(123, 9, 1, 3, 26, 3, 30, NULL, NULL, '2022-08-08 03:44:27', '2022-08-08 03:44:27'),
(124, 9, 1, 3, 30, 5, 33, NULL, NULL, '2022-08-08 03:46:46', '2022-08-08 03:46:46'),
(125, 9, 1, 3, 26, 5, 30, NULL, NULL, '2022-08-08 03:47:57', '2022-08-08 03:47:57'),
(126, 9, 1, 3, 30, 7, 33, NULL, NULL, '2022-08-08 03:50:04', '2022-08-08 03:50:04'),
(128, 9, 1, 3, 26, 2, 30, NULL, NULL, '2022-08-08 04:04:07', '2022-08-08 04:04:07'),
(129, 9, 1, 3, 30, 3, 33, NULL, NULL, '2022-08-08 04:06:28', '2022-08-08 04:06:28'),
(130, 9, 1, 3, 30, 2, 33, NULL, NULL, '2022-08-08 04:09:27', '2022-08-08 04:09:27'),
(131, 9, 1, 3, 30, 4, 33, NULL, NULL, '2022-08-08 04:10:39', '2022-08-08 04:10:39'),
(132, 9, 1, 3, 30, 6, 33, NULL, NULL, '2022-08-08 04:12:47', '2022-08-08 04:12:47'),
(133, 10, 1, 2, 7, 5, 21, NULL, NULL, '2022-08-08 04:15:04', '2022-08-08 04:15:04'),
(134, 10, 1, 2, 7, 3, 21, NULL, NULL, '2022-08-08 04:16:34', '2022-08-08 04:16:34'),
(135, 10, 1, 2, 7, 4, 21, NULL, NULL, '2022-08-08 04:18:42', '2022-08-08 04:18:42'),
(136, 10, 1, 2, 7, 2, 21, NULL, NULL, '2022-08-08 04:19:40', '2022-08-08 04:19:40'),
(137, 11, 1, 3, 32, 3, 21, NULL, NULL, '2022-08-08 04:23:34', '2022-08-08 04:23:34'),
(138, 11, 1, 2, 14, 4, 4, NULL, NULL, '2022-08-08 04:25:20', '2022-08-08 04:25:20'),
(139, 11, 1, 2, 14, 3, 4, NULL, NULL, '2022-08-08 04:26:40', '2022-08-08 04:26:40'),
(140, 11, 1, 2, 10, 7, 17, NULL, NULL, '2022-08-08 04:31:33', '2022-08-08 04:31:33'),
(141, 11, 1, 3, 32, 4, 21, NULL, NULL, '2022-08-08 04:33:29', '2022-08-08 04:33:29'),
(142, 11, 1, 2, 14, 2, 4, NULL, NULL, '2022-08-08 04:35:54', '2022-08-08 04:35:54'),
(143, 11, 1, 2, 10, 5, 17, NULL, NULL, '2022-08-08 04:37:58', '2022-08-08 04:37:58'),
(144, 11, 1, 3, 32, 2, 21, NULL, NULL, '2022-08-08 04:39:27', '2022-08-08 04:39:27'),
(145, 12, 1, 2, 17, 2, 28, NULL, NULL, '2022-08-08 04:41:15', '2022-08-08 04:41:15'),
(146, 12, 1, 2, 17, 6, 28, NULL, NULL, '2022-08-08 04:42:37', '2022-08-08 04:42:37'),
(147, 12, 1, 2, 17, 7, 28, NULL, NULL, '2022-08-08 04:45:01', '2022-08-08 04:45:01'),
(148, 12, 1, 2, 17, 5, 28, NULL, NULL, '2022-08-08 04:46:27', '2022-08-08 04:46:27'),
(149, 12, 1, 2, 17, 3, 28, NULL, NULL, '2022-08-08 04:47:55', '2022-08-08 04:47:55'),
(150, 12, 1, 2, 17, 8, 28, NULL, NULL, '2022-08-08 04:50:20', '2022-08-08 04:50:20'),
(151, 12, 1, 2, 17, 4, 28, NULL, NULL, '2022-08-08 04:51:57', '2022-08-08 04:51:57'),
(152, 13, 1, 2, 18, 2, 29, NULL, NULL, '2022-08-08 04:53:35', '2022-08-08 04:53:35'),
(153, 13, 1, 2, 18, 5, 29, NULL, NULL, '2022-08-08 04:55:21', '2022-08-08 04:55:21'),
(154, 13, 1, 2, 18, 3, 29, NULL, NULL, '2022-08-08 04:56:34', '2022-08-08 04:56:34'),
(169, 20, 1, 2, 13, 3, 25, NULL, NULL, '2022-08-08 06:13:51', '2022-08-08 06:13:51'),
(170, 21, 1, 1, 4, 3, 17, NULL, NULL, '2022-08-08 06:20:55', '2022-08-08 06:20:55'),
(171, 21, 1, 1, 3, 9, 16, NULL, NULL, '2022-08-08 06:21:25', '2022-08-08 06:21:25'),
(172, 21, 1, 1, 3, 8, 16, NULL, NULL, '2022-08-08 06:21:59', '2022-08-08 06:21:59'),
(173, 21, 1, 1, 3, 5, 16, NULL, NULL, '2022-08-08 06:22:32', '2022-08-08 06:22:32'),
(174, 21, 1, 1, 3, 6, 16, NULL, NULL, '2022-08-08 06:22:52', '2022-08-08 06:22:52'),
(175, 21, 1, 1, 3, 3, 16, NULL, NULL, '2022-08-08 06:23:11', '2022-08-08 06:23:11'),
(176, 21, 1, 2, 15, 3, 26, NULL, NULL, '2022-08-08 06:23:42', '2022-08-08 06:23:42'),
(177, 21, 1, 1, 3, 11, 16, NULL, NULL, '2022-08-08 06:24:08', '2022-08-08 06:24:08'),
(178, 21, 1, 1, 4, 2, 17, NULL, NULL, '2022-08-08 06:24:53', '2022-08-08 06:24:53'),
(179, 21, 1, 1, 4, 5, 17, NULL, NULL, '2022-08-08 06:25:11', '2022-08-08 06:25:11'),
(180, 21, 1, 1, 3, 10, 16, NULL, NULL, '2022-08-08 06:25:33', '2022-08-08 06:25:33'),
(181, 21, 1, 2, 15, 2, 26, NULL, NULL, '2022-08-08 06:25:56', '2022-08-08 06:25:56'),
(182, 21, 1, 1, 3, 12, 16, NULL, NULL, '2022-08-08 06:26:22', '2022-08-08 06:26:22'),
(183, 21, 1, 1, 4, 4, 17, NULL, NULL, '2022-08-08 06:26:47', '2022-08-08 06:26:47'),
(184, 22, 1, 2, 11, 6, 23, NULL, NULL, '2022-08-08 07:05:41', '2022-08-08 07:05:41'),
(185, 22, 1, 2, 11, 10, 23, NULL, NULL, '2022-08-08 07:11:02', '2022-08-08 07:11:02'),
(186, 22, 1, 1, 5, 3, 18, NULL, NULL, '2022-08-08 07:12:06', '2022-08-08 07:12:06'),
(187, 22, 1, 1, 3, 9, 16, NULL, NULL, '2022-08-08 07:15:08', '2022-08-08 07:15:08'),
(188, 22, 1, 1, 3, 8, 16, NULL, NULL, '2022-08-08 07:17:00', '2022-08-08 07:17:00'),
(189, 22, 1, 1, 3, 5, 16, NULL, NULL, '2022-08-08 07:19:22', '2022-08-08 07:19:22'),
(190, 22, 1, 2, 11, 4, 23, NULL, NULL, '2022-08-08 07:21:17', '2022-08-08 07:21:17'),
(191, 22, 1, 1, 3, 2, 16, NULL, NULL, '2022-08-08 07:23:33', '2022-08-08 07:23:33'),
(192, 22, 1, 2, 11, 5, 23, NULL, NULL, '2022-08-08 07:26:15', '2022-08-08 07:26:15'),
(193, 22, 1, 2, 11, 3, 23, NULL, NULL, '2022-08-08 07:27:54', '2022-08-08 07:27:54'),
(194, 22, 1, 2, 11, 9, 23, NULL, NULL, '2022-08-08 07:30:45', '2022-08-08 07:30:45'),
(195, 22, 1, 1, 3, 12, 16, NULL, NULL, '2022-08-08 07:33:20', '2022-08-08 07:33:20'),
(196, 22, 1, 2, 11, 2, 23, NULL, NULL, '2022-08-08 07:40:21', '2022-08-08 07:40:21'),
(197, 23, 1, 2, 11, 11, 23, NULL, NULL, '2022-08-08 07:43:11', '2022-08-08 07:43:11'),
(198, 23, 1, 1, 3, 4, 16, NULL, NULL, '2022-08-08 07:44:47', '2022-08-08 07:44:47'),
(199, 24, 1, 1, 5, 4, 19, NULL, NULL, '2022-08-08 07:50:11', '2022-08-08 07:50:11'),
(200, 25, 1, 7, 1, 4, 62, NULL, NULL, '2022-08-08 07:52:21', '2022-08-08 07:52:21'),
(201, 25, 1, 7, 1, 4, 63, NULL, NULL, '2022-08-08 07:53:34', '2022-08-08 07:53:34'),
(202, 25, 1, 7, 1, 4, 54, NULL, NULL, '2022-08-08 07:54:38', '2022-08-08 07:54:38'),
(203, 25, 1, 7, 1, 4, 55, NULL, NULL, '2022-08-08 07:55:33', '2022-08-08 07:55:33'),
(204, 25, 1, 7, 1, 4, 52, NULL, NULL, '2022-08-08 07:56:31', '2022-08-08 07:56:31'),
(205, 25, 1, 7, 1, 4, 50, NULL, NULL, '2022-08-08 07:57:32', '2022-08-08 07:57:32'),
(206, 25, 1, 7, 1, 4, 51, NULL, NULL, '2022-08-08 07:59:10', '2022-08-08 07:59:10'),
(207, 25, 1, 7, 1, 4, 65, NULL, NULL, '2022-08-08 08:00:30', '2022-08-08 08:00:30'),
(208, 25, 1, 7, 1, 4, 53, NULL, NULL, '2022-08-08 08:01:56', '2022-08-08 08:01:56'),
(209, 25, 1, 1, 5, 2, 19, NULL, NULL, '2022-08-08 08:03:41', '2022-08-08 08:03:41'),
(210, 18, 1, 1, 1, 2, 1, NULL, NULL, '2022-08-09 03:18:05', '2022-08-09 03:18:05'),
(211, 18, 1, 1, 1, 3, 1, NULL, NULL, '2022-08-09 03:22:02', '2022-08-09 03:22:02'),
(212, 18, 1, 1, 1, 4, 1, NULL, NULL, '2022-08-09 03:24:15', '2022-08-09 05:27:18'),
(213, 17, 1, 2, 22, 2, 1, NULL, NULL, '2022-08-09 03:29:53', '2022-08-09 03:29:53'),
(214, 17, 1, 2, 22, 5, 1, NULL, NULL, '2022-08-09 03:34:12', '2022-08-09 03:34:12'),
(215, 18, 1, 1, 2, 2, 4, NULL, NULL, '2022-08-09 03:38:21', '2022-08-09 03:38:21'),
(216, 18, 1, 1, 2, 3, 4, NULL, NULL, '2022-08-09 03:46:43', '2022-08-09 03:46:43'),
(217, 18, 1, 1, 2, 4, 4, NULL, NULL, '2022-08-09 03:51:54', '2022-08-09 03:51:54'),
(218, 18, 1, 1, 2, 5, 4, NULL, NULL, '2022-08-09 03:56:01', '2022-08-09 03:56:01'),
(219, 16, 1, 2, 8, 2, 25, NULL, NULL, '2022-08-09 03:59:15', '2022-08-09 03:59:15'),
(220, 16, 1, 2, 8, 3, 25, NULL, NULL, '2022-08-09 04:02:41', '2022-08-09 04:02:41'),
(221, 16, 1, 2, 8, 4, 25, NULL, NULL, '2022-08-09 04:04:20', '2022-08-09 04:04:20'),
(222, 16, 1, 2, 8, 6, 25, NULL, NULL, '2022-08-09 04:06:11', '2022-08-09 04:06:11'),
(223, 16, 1, 2, 8, 7, 25, NULL, NULL, '2022-08-09 04:07:40', '2022-08-09 04:07:40'),
(224, 15, 1, 2, 19, 2, 30, NULL, NULL, '2022-08-09 04:12:11', '2022-08-09 04:12:11'),
(225, 15, 1, 2, 19, 4, 30, NULL, NULL, '2022-08-09 04:14:37', '2022-08-09 04:14:37'),
(226, 15, 1, 2, 19, 3, 30, NULL, NULL, '2022-08-09 04:17:47', '2022-08-09 04:17:47'),
(227, 17, 1, 2, 23, 3, 31, NULL, NULL, '2022-08-09 04:19:37', '2022-08-09 04:19:37'),
(228, 3, 1, 0, 0, 1, 31, NULL, NULL, '2022-08-09 04:23:08', '2022-08-09 04:23:08'),
(229, 3, 1, 4, 2, 2, 44, NULL, NULL, '2022-08-09 04:25:57', '2022-08-09 04:25:57'),
(230, 2, 1, 5, 2, 4, 47, NULL, NULL, '2022-08-09 04:29:44', '2022-08-09 04:29:44'),
(231, 4, 1, 7, 1, 5, 65, NULL, NULL, '2022-08-09 04:34:13', '2022-08-09 04:34:13'),
(232, 4, 1, 7, 1, 5, 62, NULL, NULL, '2022-08-09 04:35:08', '2022-08-09 04:35:08'),
(233, 4, 1, 7, 1, 5, 53, NULL, NULL, '2022-08-09 04:36:16', '2022-08-09 04:36:16'),
(234, 14, 1, 8, 1, 2, 66, NULL, NULL, '2022-08-09 04:42:38', '2022-08-09 04:42:38'),
(235, 14, 1, 8, 1, 3, 66, NULL, NULL, '2022-08-09 04:45:03', '2022-08-09 04:45:03'),
(236, 14, 1, 8, 1, 4, 66, NULL, NULL, '2022-08-09 04:47:14', '2022-08-09 04:47:14'),
(237, 14, 1, 8, 1, 5, 66, NULL, NULL, '2022-08-09 04:48:43', '2022-08-09 04:48:43'),
(238, 14, 1, 8, 1, 6, 66, NULL, NULL, '2022-08-09 04:52:22', '2022-08-09 04:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd_sasaran`
--

CREATE TABLE `ref_rpjmd_sasaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_tujuan_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_sasaran_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd_sasaran`
--

INSERT INTO `ref_rpjmd_sasaran` (`id`, `rpjmd_tujuan_id`, `rpjmd_sasaran_nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'Meningkatkan Kualitas Pembangunan dan Pemberdayaan Desa', NULL, NULL),
(2, 1, 'Meningkatnya akuntabilitas pengelolaan keuangan daerah', NULL, NULL),
(3, 1, 'Meningkatnya akuntabilitas kinerja pemerintah daerah', NULL, NULL),
(4, 1, 'Meningkatnya Kinerja Pelayanan Publik', NULL, NULL),
(5, 2, 'Meningkatkan Kesejahteran Petani dan Nelayan', NULL, NULL),
(6, 2, 'Meningkatkan ketersedian pangan', NULL, NULL),
(7, 2, 'Meningkatnya Kesejahteraan Masyarakat', NULL, NULL),
(8, 2, 'Meningkatnya PDRB perkapita', NULL, NULL),
(9, 2, 'Meningktanya Pertumbuhan Ekonomi', NULL, NULL),
(10, 2, 'Menurunnya Jumlah Pengganguran', NULL, NULL),
(11, 2, 'Menurunnya Penduduk Miskin', NULL, NULL),
(12, 2, 'Rendahnya ketimpangan pendapatan antar masyarakat', NULL, NULL),
(13, 2, 'Tumbuhnya Investasi Daerah', NULL, NULL),
(14, 3, 'Meningkatkan keimanan dan ketakwaan umat beragama Kab Morowali', NULL, NULL),
(15, 3, 'Meningkatnya partisipasi organisasi kepemudaan dan Prestasi Olahraga Daerah', NULL, NULL),
(16, 3, 'Meningkatnya Partisipasi Perempuan dalam Pembagunan Daerah', NULL, NULL),
(17, 3, 'Meningkatnya Pelestrian seni dan Budaya Lokal', NULL, NULL),
(18, 3, 'Meningkatnya Standar Pelayanan Minimal (SPM) Pendidikan dalam menciptakan generasi muda yang Imtaq', NULL, NULL),
(19, 3, 'Terpenuhinya Standar Pelayanan Minimal (SPM) Bidang Kesehatan', NULL, NULL),
(20, 4, 'Meningkatnya Pemanfaatan teknologi informasi dan komunikasi', NULL, NULL),
(21, 4, 'Meningkatnya kualitas infrastruktur dasar daerah', NULL, NULL),
(22, 5, 'Meningkatnya Kualitas Lingkungan Hidup', NULL, NULL),
(23, 5, 'Meningkatnya layanan kebersihan dan penataan lingkungan Kota Bungku', NULL, NULL),
(24, 5, 'Meningkatnya respon dan layanan kebakaran kabupaten', NULL, NULL),
(25, 5, 'Menurunnya gangguan ketentraman dan ketertiban', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd_tujuan`
--

CREATE TABLE `ref_rpjmd_tujuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_misi_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_tujuan_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd_tujuan`
--

INSERT INTO `ref_rpjmd_tujuan` (`id`, `rpjmd_misi_id`, `rpjmd_tujuan_nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'Menciptakan pemerintahan yang baik dan bersih', NULL, NULL),
(2, 2, 'Meningkatkan skala ekonomi Daerah untuk Kesejahteraan bersama', NULL, NULL),
(3, 3, 'Meningkatkan Daya Saing Sumberdaya Manusia (SDM)', NULL, NULL),
(4, 4, 'Meningkatkan kualitas infrastruktur dasar', NULL, NULL),
(5, 5, 'Meningkatkan Daya Dukung dan Daya Tampung Lingkungan Hidup (DDDTLH) dan berkurangnya Resiko Bencana', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rpjmd_visi`
--

CREATE TABLE `ref_rpjmd_visi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_visi_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rpjmd_visi_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_rpjmd_visi`
--

INSERT INTO `ref_rpjmd_visi` (`id`, `rpjmd_id`, `rpjmd_visi_nama`, `rpjmd_visi_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'TERWUJUDNYA MASYARAKAT KABUPATEN MOROWALI YANG SEJAHTERA BERSAMA', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_sub_kegiatan`
--

CREATE TABLE `ref_sub_kegiatan` (
  `permen_ver` int(10) UNSIGNED NOT NULL,
  `urusan_kode` int(10) UNSIGNED NOT NULL,
  `bidang_kode` int(10) UNSIGNED NOT NULL,
  `program_kode` int(10) UNSIGNED NOT NULL,
  `kegiatan_kode` int(10) UNSIGNED NOT NULL,
  `sub_kegiatan_kode` int(10) UNSIGNED NOT NULL,
  `sub_kegiatan_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_sub_kegiatan`
--

INSERT INTO `ref_sub_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `sub_kegiatan_kode`, `sub_kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 1, 201, 1, 'Penyusunan Dokumen Perencanaan Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 201, 2, 'Koordinasi dan Penyusunan Dokumen RKA-SKPD', NULL, NULL),
(1, 0, 0, 1, 201, 3, 'Koordinasi dan Penyusunan Dokumen Perubahan RKA-SKPD', NULL, NULL),
(1, 0, 0, 1, 201, 4, 'Koordinasi dan Penyusunan DPA-SKPD', NULL, NULL),
(1, 0, 0, 1, 201, 5, 'Koordinasi dan Penyusunan Perubahan DPA-SKPD', NULL, NULL),
(1, 0, 0, 1, 201, 6, 'Koordinasi dan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD', NULL, NULL),
(1, 0, 0, 1, 201, 7, 'Evaluasi Kinerja Perangkat Daerah', NULL, NULL),
(1, 0, 0, 1, 202, 1, 'Penyediaan Gaji dan Tunjangan ASN', NULL, NULL),
(1, 0, 0, 1, 202, 2, 'Penyediaan Administrasi Pelaksanaan Tugas ASN', NULL, NULL),
(1, 0, 0, 1, 202, 3, 'Pelaksanaan Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD', NULL, NULL),
(1, 0, 0, 1, 202, 4, 'Koordinasi dan Pelaksanaan Akuntansi SKPD', NULL, NULL),
(1, 0, 0, 1, 202, 5, 'Koordinasi dan Penyusunan Laporan Keuangan Akhir Tahun SKPD', NULL, NULL),
(1, 0, 0, 1, 202, 6, 'Pengelolaan dan Penyiapan Bahan Tanggapan Pemeriksaan', NULL, NULL),
(1, 0, 0, 1, 202, 7, 'Koordinasi dan Penyusunan Laporan Keuangan Bulanan/Triwulanan/Semesteran SKPD', NULL, NULL),
(1, 0, 0, 1, 202, 8, 'Penyusunan Pelaporan dan Analisis Prognosis Realisasi Anggaran', NULL, NULL),
(1, 0, 0, 1, 203, 1, 'Penyusunan Perencanaan Kebutuhan Barang Milik Daerah SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 2, 'Pengamanan Barang Milik Daerah SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 3, 'Koordinasi dan Penilaian Barang Milik Daerah SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 4, 'Pembinaan, Pengawasan, dan Pengendalian Barang Milik Daerah pada SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 5, 'Rekonsiliasi dan Penyusunan Laporan Barang Milik Daerah pada SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 6, 'Penatausahaan Barang Milik Daerah pada SKPD', NULL, NULL),
(1, 0, 0, 1, 203, 7, 'Pemanfaatan Barang Milik Daerah SKPD', NULL, NULL),
(1, 0, 0, 1, 204, 1, 'Perencanaan Pengelolaan Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 2, 'Analisa dan Pengembangan Retribusi Daerah, serta Penyusunan Kebijakan Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 3, 'Penyuluhan dan Penyebarluasan Kebijakan Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 4, 'Pendataan dan Pendaftaran Objek Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 5, 'Pengolahan Data Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 6, 'Penetapan Wajib Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 204, 7, 'Pelaporan Pengelolaan Retribusi Daerah', NULL, NULL),
(1, 0, 0, 1, 205, 1, 'Peningkatan Sarana dan Prasarana Disiplin Pegawai', NULL, NULL),
(1, 0, 0, 1, 205, 2, 'Pengadaan Pakaian Dinas Beserta Atribut Kelengkapannya', NULL, NULL),
(1, 0, 0, 1, 205, 3, 'Pendataan dan Pengolahan Administrasi Kepegawaian', NULL, NULL),
(1, 0, 0, 1, 205, 4, 'Koordinasi dan Pelaksanaan Sistem Informasi Kepegawaian', NULL, NULL),
(1, 0, 0, 1, 205, 5, 'Monitoring, Evaluasi, dan Penilaian Kinerja Pegawai', NULL, NULL),
(1, 0, 0, 1, 205, 6, 'Pemulangan Pegawai yang Pensiun', NULL, NULL),
(1, 0, 0, 1, 205, 7, 'Pemulangan Pegawai yang Meninggal dalam Melaksanakan Tugas', NULL, NULL),
(1, 0, 0, 1, 205, 8, 'Pemindahan Tugas ASN', NULL, NULL),
(1, 0, 0, 1, 205, 9, 'Pendidikan dan Pelatihan Pegawai Berdasarkan Tugas dan Fungsi', NULL, NULL),
(1, 0, 0, 1, 205, 10, 'Sosialisasi Peraturan Perundang-Undangan', NULL, NULL),
(1, 0, 0, 1, 205, 11, 'Bimbingan Teknis Implementasi Peraturan Perundang-Undangan', NULL, NULL),
(1, 0, 0, 1, 206, 1, 'Penyediaan Komponen Instalasi Listrik/Penerangan Bangunan Kantor', NULL, NULL),
(1, 0, 0, 1, 206, 2, 'Penyediaan Peralatan dan Perlengkapan Kantor', NULL, NULL),
(1, 0, 0, 1, 206, 3, 'Penyediaan Peralatan Rumah Tangga', NULL, NULL),
(1, 0, 0, 1, 206, 4, 'Penyediaan Bahan Logistik Kantor', NULL, NULL),
(1, 0, 0, 1, 206, 5, 'Penyediaan Barang Cetakan dan Penggandaan', NULL, NULL),
(1, 0, 0, 1, 206, 6, 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', NULL, NULL),
(1, 0, 0, 1, 206, 7, 'Penyediaan Bahan/Material', NULL, NULL),
(1, 0, 0, 1, 206, 8, 'Fasilitasi Kunjungan Tamu', NULL, NULL),
(1, 0, 0, 1, 206, 9, 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', NULL, NULL),
(1, 0, 0, 1, 206, 10, 'Penatausahaan Arsip Dinamis pada SKPD', NULL, NULL),
(1, 0, 0, 1, 206, 11, 'Dukungan Pelaksanaan Sistem Pemerintahan Berbasis Elektronik pada SKPD', NULL, NULL),
(1, 0, 0, 1, 207, 1, 'Pengadaan Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', NULL, NULL),
(1, 0, 0, 1, 207, 2, 'Pengadaan Kendaraan Dinas Operasional atau Lapangan', NULL, NULL),
(1, 0, 0, 1, 207, 3, 'Pengadaan Alat Besar', NULL, NULL),
(1, 0, 0, 1, 207, 4, 'Pengadaan Alat Angkutan Darat Tak Bermotor', NULL, NULL),
(1, 0, 0, 1, 207, 5, 'Pengadaan Mebel', NULL, NULL),
(1, 0, 0, 1, 207, 6, 'Pengadaan Peralatan dan Mesin Lainnya', NULL, NULL),
(1, 0, 0, 1, 207, 7, 'Pengadaan Aset Tetap Lainnya', NULL, NULL),
(1, 0, 0, 1, 207, 8, 'Pengadaan Aset Tak Berwujud', NULL, NULL),
(1, 0, 0, 1, 207, 9, 'Pengadaan Gedung Kantor atau Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 207, 10, 'Pengadaan Sarana dan Prasarana Gedung Kantor atau Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 207, 11, 'Pengadaan Sarana dan Prasarana Pendukung Gedung Kantor atau Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 208, 1, 'Penyediaan Jasa Surat Menyurat', NULL, NULL),
(1, 0, 0, 1, 208, 2, 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', NULL, NULL),
(1, 0, 0, 1, 208, 3, 'Penyediaan Jasa Peralatan dan Perlengkapan Kantor', NULL, NULL),
(1, 0, 0, 1, 208, 4, 'Penyediaan Jasa Pelayanan Umum Kantor', NULL, NULL),
(1, 0, 0, 1, 209, 1, 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan dan Pajak Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', NULL, NULL),
(1, 0, 0, 1, 209, 2, 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, Pajak, dan Perizinan Kendaraan Dinas Operasional atau Lapangan', NULL, NULL),
(1, 0, 0, 1, 209, 3, 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan dan Perizinan Alat Besar', NULL, NULL),
(1, 0, 0, 1, 209, 4, 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan dan Perizinan Alat Angkutan Darat Tak Bermotor', NULL, NULL),
(1, 0, 0, 1, 209, 5, 'Pemeliharaan Mebel', NULL, NULL),
(1, 0, 0, 1, 209, 6, 'Pemeliharaan Peralatan dan Mesin Lainnya', NULL, NULL),
(1, 0, 0, 1, 209, 7, 'Pemeliharaan Aset Tetap Lainnya', NULL, NULL),
(1, 0, 0, 1, 209, 8, 'Pemeliharaan Aset Tak Berwujud', NULL, NULL),
(1, 0, 0, 1, 209, 9, 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 209, 10, 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Gedung Kantor atau Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 209, 11, 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Pendukung Gedung Kantor atau Bangunan Lainnya', NULL, NULL),
(1, 0, 0, 1, 209, 12, 'Pemeliharaan/Rehabilitasi Tanah', NULL, NULL),
(1, 0, 0, 1, 210, 1, 'Pelayanan dan Penunjang Pelayanan BLUD', NULL, NULL),
(1, 0, 0, 1, 211, 1, 'Penyediaan Gaji dan Tunjangan Kepala Daerah dan Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 211, 2, 'Penyediaan Pakaian Dinas dan Atribut Kelengkapan Kepala Daerah dan Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 211, 3, 'Pelaksanaan Medical Check Up Kepala Daerah dan Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 211, 4, 'Penyediaan Dana Penunjang Operasional Kepala Daerah dan Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 212, 1, 'Penyediaan Kebutuhan Rumah Tangga Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 212, 2, 'Penyediaan Kebutuhan Rumah Tangga Wakil Kepala Daerah', NULL, NULL),
(1, 0, 0, 1, 212, 3, 'Penyediaan Kebutuhan Rumah Tangga Sekretariat Daerah', NULL, NULL),
(1, 0, 0, 1, 213, 1, 'Pengelolaan Kelembagaan dan Analisis Jabatan', NULL, NULL),
(1, 0, 0, 1, 213, 2, 'Fasilitasi Pelayanan Publik dan Tata Laksana', NULL, NULL),
(1, 0, 0, 1, 213, 3, 'Peningkatan Kinerja dan Reformasi Birokrasi', NULL, NULL),
(1, 0, 0, 1, 213, 4, 'Monitoring, Evaluasi dan Pengendalian Kualitas Pelayanan Publik dan Tata Laksana', NULL, NULL),
(1, 0, 0, 1, 213, 5, 'Koordinasi dan Penyusunan Laporan Kinerja Pemerintah Daerah', NULL, NULL),
(1, 0, 0, 1, 214, 1, 'Fasilitasi Keprotokolan', NULL, NULL),
(1, 0, 0, 1, 214, 2, 'Fasilitasi Komunikasi Pimpinan', NULL, NULL),
(1, 0, 0, 1, 214, 3, 'Pendokumentasian Tugas Pimpinan', NULL, NULL),
(1, 0, 0, 1, 215, 1, 'Penyelenggaraan Administrasi Keuangan DPRD', NULL, NULL),
(1, 0, 0, 1, 215, 2, 'Penyediaan Pakaian Dinas dan Atribut DPRD', NULL, NULL),
(1, 0, 0, 1, 215, 3, 'Pelaksanaan Medical Check Up DPRD', NULL, NULL),
(1, 0, 0, 1, 216, 1, 'Penyelenggaraan Administrasi Keanggotaan DPRD', NULL, NULL),
(1, 0, 0, 1, 216, 2, 'Fasilitasi Fraksi DPRD', NULL, NULL),
(1, 0, 0, 1, 216, 3, 'Fasilitasi Rapat Koordinasi dan Konsultasi DPRD', NULL, NULL),
(1, 0, 0, 1, 216, 4, 'Penyediaan Kebutuhan Rumah Tangga DPRD', NULL, NULL),
(1, 1, 1, 2, 201, 1, 'Pembangunan Unit Sekolah Baru (USB)', NULL, NULL),
(1, 1, 1, 2, 201, 2, 'Penambahan Ruang Kelas Baru', NULL, NULL),
(1, 1, 1, 2, 201, 3, 'Pembangunan Ruang Guru/Kepala Sekolah/TU', NULL, NULL),
(1, 1, 1, 2, 201, 4, 'Pembangunan Ruang Unit Kesehatan Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 5, 'Pembangunan Perpustakaan Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 6, 'Pembangunan Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 7, 'Pembangunan Rumah Dinas Kepala Sekolah/Guru/Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 8, 'Rehabilitasi Sedang/Berat Ruang Kelas', NULL, NULL),
(1, 1, 1, 2, 201, 9, 'Rehabilitasi Sedang/Berat Ruang Guru/Kepala Sekolah/TU', NULL, NULL),
(1, 1, 1, 2, 201, 10, 'Rehabilitasi Sedang/Berat Ruang Unit Kesehatan Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 11, 'Rehabilitasi Sedang/Berat Perpustakaan Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 12, 'Rehabilitasi Sedang/Berat Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 13, 'Rehabilitasi Sedang/Berat Rumah Dinas Kepala Sekolah/Guru/Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 14, 'Pengadaan Mebel Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 15, 'Pengadaan Alat Rumah Tangga Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 16, 'Pengadaan Perlengkapan Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 17, 'Pengadaan Perlengkapan Siswa', NULL, NULL),
(1, 1, 1, 2, 201, 18, 'Pemeliharaan Rutin Bangunan Gedung dan Ruangan', NULL, NULL),
(1, 1, 1, 2, 201, 19, 'Pemeliharaan Rutin Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 20, 'Pemeliharaan Rutin Rumah Dinas Kepala Sekolah/Guru/Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 21, 'Penyediaan Biaya Personil Peserta Didik Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 22, 'Pengadaan Alat Praktik dan Peraga Siswa', NULL, NULL),
(1, 1, 1, 2, 201, 23, 'Penyelengaraan Proses Belajar dan Ujian bagi Peserta Didik', NULL, NULL),
(1, 1, 1, 2, 201, 24, 'Penyiapan dan Tindak Lanjut Evaluasi Satuan Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 25, 'Pembinaan Minat, Bakat dan Kreativitas Siswa', NULL, NULL),
(1, 1, 1, 2, 201, 26, 'Penyediaan Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 27, 'Pengembangan Karir Pendidik dan Tenaga Kependidikan pada Satuan Pendidikan Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 28, 'Pembinaan Kelembagaan dan Manajemen Sekolah', NULL, NULL),
(1, 1, 1, 2, 201, 29, 'Pengelolaan Dana BOS Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 30, 'Peningkatan Kapasitas Pengelolaan Dana BOS Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 31, 'Pembangunan Laboratorium Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 32, 'Rehabilitasi Sedang/ Berat Laboratorium Sekolah Dasar', NULL, NULL),
(1, 1, 1, 2, 201, 33, 'Pemeliharaan Mebel Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 1, 'Pembangunan Unit Sekolah Baru (USB)', NULL, NULL),
(1, 1, 1, 2, 202, 2, 'Penambahan Ruang Kelas Baru', NULL, NULL),
(1, 1, 1, 2, 202, 3, 'Pembangunan Ruang Guru/Kepala Sekolah/TU', NULL, NULL),
(1, 1, 1, 2, 202, 4, 'Pembangunan Ruang Unit Kesehatan Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 5, 'Pembangunan Perpustakaan Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 6, 'Pembangunan Laboratorium', NULL, NULL),
(1, 1, 1, 2, 202, 7, 'Pembangunan Ruang Serba Guna/Aula', NULL, NULL),
(1, 1, 1, 2, 202, 8, 'Pembangunan Asrama Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 9, 'Pembangunan Rumah Dinas Kepala Sekolah/Guru/Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 10, 'Pembangunan Fasilitas Parkir', NULL, NULL),
(1, 1, 1, 2, 202, 11, 'Pembangunan Kantin Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 12, 'Pembangunan Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 13, 'Rehabilitasi Sedang/Berat Gedung Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 14, 'Rehabilitasi Sedang/Berat Ruang Kelas Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 15, 'Rehabilitasi Sedang/Berat Ruang Guru Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 16, 'Rehabilitasi Sedang/Berat Ruang Unit Kesehatan Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 17, 'Rehabilitasi Sedang/Berat Perpustakaan Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 18, 'Rehabilitasi Sedang/Berat Laboratorium', NULL, NULL),
(1, 1, 1, 2, 202, 19, 'Rehabilitasi Sedang/Berat Ruang Serba Guna/Aula', NULL, NULL),
(1, 1, 1, 2, 202, 20, 'Rehabilitasi Sedang/Berat Asrama', NULL, NULL),
(1, 1, 1, 2, 202, 21, 'Rehabilitasi Sedang/Berat Rumah Dinas Kepala Sekolah/Guru/Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 22, 'Rehabilitasi Sedang/Berat Fasilitas Parkir', NULL, NULL),
(1, 1, 1, 2, 202, 23, 'Rehabilitasi Sedang/Berat Kantin Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 24, 'Rehabilitasi Sedang/Berat Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 25, 'Pengadaan Mebel Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 26, 'Pengadaan Alat Rumah Tangga Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 27, 'Pengadaan Perlengkapan Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 28, 'Pengadaan Perlengkapan Siswa', NULL, NULL),
(1, 1, 1, 2, 202, 29, 'Pemeliharaan Rutin Bangunan Gedung dan Ruangan', NULL, NULL),
(1, 1, 1, 2, 202, 30, 'Pemeliharaan Rutin Sarana, Prasarana dan Utilitas Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 31, 'Pemeliharaan Rutin Rumah Dinas Kepala Sekolah, Guru, Penjaga Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 32, 'Penyediaan Biaya Personil Peserta Didik Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 33, 'Perlengkapan Dasar Buku Teks Peserta Didik', NULL, NULL),
(1, 1, 1, 2, 202, 34, 'Perlengkapan Belajar Peserta Didik', NULL, NULL),
(1, 1, 1, 2, 202, 35, 'Pengadaan Alat Praktik dan Peraga Siswa', NULL, NULL),
(1, 1, 1, 2, 202, 36, 'Penyelengaraan Proses Belajar dan Ujian bagi Peserta Didik', NULL, NULL),
(1, 1, 1, 2, 202, 37, 'Penyiapan dan Tindak Lanjut Evaluasi Satuan Pendidikan Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 38, 'Pembinaan Minat, Bakat dan Kreativitas Siswa', NULL, NULL),
(1, 1, 1, 2, 202, 39, 'Penyediaan Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 40, 'Pengembangan Karir Pendidik dan Tenaga Kependidikan pada Satuan Pendidikan Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 41, 'Pembinaan Kelembagaan dan Manajemen Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 42, 'Pengelolaan Dana BOS Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 43, 'Peningkatan Kapasitas Pengelolaan Dana BOS Sekolah Menengah Pertama', NULL, NULL),
(1, 1, 1, 2, 202, 44, 'Rehabilitasi Sedang/Berat Ruang TU', NULL, NULL),
(1, 1, 1, 2, 202, 45, 'Rehabilitasi Sedang/Berat Ruang Kepala Sekolah', NULL, NULL),
(1, 1, 1, 2, 202, 46, 'Pemeliharaan Mebel Sekolah', NULL, NULL),
(1, 1, 1, 2, 203, 1, 'Pembangunan Gedung/Ruang Kelas/Ruang Guru PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 2, 'Pembangunan Sarana, Prasarana dan Utilitas PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 3, 'Rehabilitasi Sedang/Berat Gedung/Ruang Kelas/Ruang Guru PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 4, 'Rehabilitasi Sedang/Berat Pembangunan Sarana, Prasarana dan Utilitas PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 5, 'Pemeliharaan Rutin Gedung/Ruang Kelas/Ruang Guru PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 6, 'Pemeliharaan Rutin Sarana, Prasarana dan Utilitas PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 7, 'Pengadaan Mebel PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 8, 'Pengadaan Alat Rumah Tangga PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 9, 'Pengadaan Perlengkapan PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 10, 'Pengadaan Perlengkapan Siswa PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 11, 'Penyediaan Biaya Personil Peserta Didik PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 12, 'Pengadaan Alat Praktik dan Peraga Siswa PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 13, 'Penyelenggaraan Proses Belajar PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 14, 'Penyiapan dan Tindak Lanjut Evaluasi Satuan PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 15, 'Penyediaan Pendidik dan Tenaga Kependidikan bagi Satuan PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 16, 'Pengembangan Karir Pendidik dan Tenaga Kependidikan pada Satuan Pendidikan PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 17, 'Pembinaan Kelembagaan dan Manajemen PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 18, 'Pengelolaan Dana BOP PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 19, 'Peningkatan Kapasitas Pengelolaan Dana BOP PAUD', NULL, NULL),
(1, 1, 1, 2, 203, 20, 'Pemeliharaan Mebel Sekolah', NULL, NULL),
(1, 1, 1, 2, 204, 1, 'Pembangunan Gedung/Ruang Kelas/Ruang Guru Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 2, 'Pembangunan Sarana, Prasarana dan Utilitas Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 3, 'Rehabilitasi Sedang/Berat Gedung/Ruang Kelas/Ruang Guru Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 4, 'Rehabilitasi Sedang/Berat Pembangunan Sarana, Prasarana dan Utilitas Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 5, 'Pemeliharaan Rutin Gedung/Ruang Kelas/Ruang Guru Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 6, 'Pemeliharaan Rutin Sarana, Prasarana dan Utilitas Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 7, 'Pengadaan Mebel Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 8, 'Pengadaan Alat Rumah Tangga Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 9, 'Pengadaan Perlengkapan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 10, 'Penyediaan Biaya Personil Peserta Didik Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 11, 'Pengadaan Alat Praktik dan Peraga Siswa Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 12, 'Penyelenggaraan Proses Belajar Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 13, 'Penyiapan dan Tindak Lanjut Evaluasi Satuan Pendidikan di Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 14, 'Penyediaan Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 15, 'Pengembangan Karir Pendidik dan Tenaga Kependidikan pada Satuan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 16, 'Pembinaan Kelembagaan dan Manajemen Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 17, 'Pengelolaan Dana BOP Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 18, 'Peningkatan Kapasitas Pengelolaan Dana BOP Sekolah Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 19, 'Pembangunan Laboratorium', NULL, NULL),
(1, 1, 1, 2, 204, 20, 'Rehabilitasi Sedang/Berat Laboratorium', NULL, NULL),
(1, 1, 1, 2, 204, 21, 'Pemeliharaan Mebel Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 2, 204, 22, 'Penyelenggaraan Ujian Bagi Peserta Didik Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 3, 201, 1, 'Penyusunan Kompetensi Dasar Muatan Lokal Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 3, 201, 2, 'Penyusunan Silabus Muatan Lokal Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 3, 201, 3, 'Penyediaan Buku Teks Pelajaran Muatan Lokal Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 3, 201, 4, 'Pelatihan Penyusunan Kurikulum Muatan Lokal Pendidikan Dasar', NULL, NULL),
(1, 1, 1, 3, 202, 1, 'Penyusunan Kompetensi Dasar Muatan Lokal Pendidikan Anak Usia Dini dan Pendidikan Nonformal', NULL, NULL),
(1, 1, 1, 3, 202, 2, 'Penyusunan Silabus Muatan Lokal Pendidikan Anak Usia Dini dan Pendidikan Nonformal', NULL, NULL),
(1, 1, 1, 3, 202, 3, 'Penyediaan Buku Teks Pelajaran Muatan Lokal Pendidikan Anak Usia Dini dan Pendidikan Nonformal', NULL, NULL),
(1, 1, 1, 4, 201, 1, 'Perhitungan dan Pemetaan Pendidik dan Tenaga Kependidikan Satuan Pendidikan Dasar, PAUD, dan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 4, 201, 2, 'Penataan Pendistribusian Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Dasar, PAUD, dan Pendidikan Nonformal/Kesetaraan', NULL, NULL),
(1, 1, 1, 5, 201, 1, 'Penilaian Kelayakan Usul Perizinan Pendidikan Dasar yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 5, 201, 2, 'Pengendalian dan Pengawasan Perizinan Pendidikan Dasar yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 5, 202, 1, 'Penilaian Kelayakan Usul Perizinan PAUD dan Pendidikan Nonformal yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 5, 202, 2, 'Pengendalian dan Pengawasan Perizinan PAUD dan Pendidikan Nonformal yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 5, 202, 3, 'Pembinaan PAUD dan Pendidikan Nonformal yang Diselenggarakan oleh Masyarakat', NULL, NULL),
(1, 1, 1, 6, 201, 1, 'Penyusunan Kamus Bahasa Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 2, 'Vitalitas, Konservasi dan Revitalisasi Bahasa dan Sastra Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 3, 'Publikasi Bahasa dan Sastra Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 4, 'Penghargaan Tokoh Kebahasaan dan Kesastraan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 5, 'Penyediaan dan Pendistribusian Buku Cerita Rakyat Daerah Penunjang Literasi Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 6, 'Peningkatan Apresiasi Siswa Terhadap Bahasa dan Sastra Daerah Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 1, 6, 201, 7, 'Penyusunan Modul dan Bahan Ajar Bahasa Daerah Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 201, 1, 'Pembangunan Rumah Sakit beserta Sarana dan Prasarana Pendukungnya', NULL, NULL),
(1, 1, 2, 2, 201, 2, 'Pembangunan Puskesmas', NULL, NULL),
(1, 1, 2, 2, 201, 3, 'Pembangunan Fasilitas Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 201, 4, 'Pembangunan Rumah Dinas Tenaga Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 5, 'Pengembangan Rumah Sakit', NULL, NULL),
(1, 1, 2, 2, 201, 6, 'Pengembangan Puskesmas', NULL, NULL),
(1, 1, 2, 2, 201, 7, 'Pengembangan Fasilitas Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 201, 8, 'Rehabilitasi dan Pemeliharaan Rumah Sakit', NULL, NULL),
(1, 1, 2, 2, 201, 9, 'Rehabilitasi dan Pemeliharaan Puskesmas', NULL, NULL),
(1, 1, 2, 2, 201, 10, 'Rehabilitasi dan Pemeliharaan Fasilitas Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 201, 11, 'Rehabilitasi dan Pemeliharaan Rumah Dinas Tenaga Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 12, 'Pengadaan Sarana Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 13, 'Pengadaan Prasarana dan Pendukung Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 14, 'Pengadaan Alat Kesehatan/Alat Penunjang Medik Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 15, 'Pengadaan dan Pemeliharaan Alat Kalibrasi', NULL, NULL),
(1, 1, 2, 2, 201, 16, 'Pengadaan Obat, Vaksin', NULL, NULL),
(1, 1, 2, 2, 201, 17, 'Pengadaan Bahan Habis Pakai', NULL, NULL),
(1, 1, 2, 2, 201, 18, 'Pemeliharaan Sarana Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 19, 'Pemeliharaan Prasarana dan Pendukung Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 20, 'Pemeliharaan Rutin dan Berkala Alat Kesehatan/Alat Penunjang Medik Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 201, 21, 'Distribusi Alat Kesehatan, Obat, Vaksin, Bahan Medis Habis Pakai (BMHP), Makanan dan Minuman ke Puskesmas serta Fasilitas Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 202, 1, 'Pengelolaan Pelayanan Kesehatan Ibu Hamil', NULL, NULL),
(1, 1, 2, 2, 202, 2, 'Pengelolaan Pelayanan Kesehatan Ibu Bersalin', NULL, NULL),
(1, 1, 2, 2, 202, 3, 'Pengelolaan Pelayanan Kesehatan Bayi Baru Lahir', NULL, NULL),
(1, 1, 2, 2, 202, 4, 'Pengelolaan Pelayanan Kesehatan Balita', NULL, NULL),
(1, 1, 2, 2, 202, 5, 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', NULL, NULL),
(1, 1, 2, 2, 202, 6, 'Pengelolaan Pelayanan Kesehatan pada Usia Produktif', NULL, NULL),
(1, 1, 2, 2, 202, 7, 'Pengelolaan Pelayanan Kesehatan pada Usia Lanjut', NULL, NULL),
(1, 1, 2, 2, 202, 8, 'Pengelolaan Pelayanan Kesehatan Penderita Hipertensi', NULL, NULL),
(1, 1, 2, 2, 202, 9, 'Pengelolaan Pelayanan Kesehatan Penderita Diabetes Melitus', NULL, NULL),
(1, 1, 2, 2, 202, 10, 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', NULL, NULL),
(1, 1, 2, 2, 202, 11, 'Pengelolaan Pelayanan Kesehatan Orang Terduga Tuberkulosis', NULL, NULL),
(1, 1, 2, 2, 202, 12, 'Pengelolaan Pelayanan Kesehatan Orang dengan Risiko Terinfeksi HIV', NULL, NULL),
(1, 1, 2, 2, 202, 13, 'Pengelolaan Pelayanan Kesehatan bagi Penduduk pada Kondisi Kejadian Luar Biasa (KLB)', NULL, NULL),
(1, 1, 2, 2, 202, 14, 'Pengelolaan Pelayanan Kesehatan bagi Penduduk Terdampak Krisis Kesehatan Akibat Bencana dan/atau Berpotensi Bencana', NULL, NULL),
(1, 1, 2, 2, 202, 15, 'Pengelolaan Pelayanan Kesehatan Gizi Masyarakat', NULL, NULL),
(1, 1, 2, 2, 202, 16, 'Pengelolaan Pelayanan Kesehatan Kerja dan Olahraga', NULL, NULL),
(1, 1, 2, 2, 202, 17, 'Pengelolaan Pelayanan Kesehatan Lingkungan', NULL, NULL),
(1, 1, 2, 2, 202, 18, 'Pengelolaan Pelayanan Promosi Kesehatan', NULL, NULL),
(1, 1, 2, 2, 202, 19, 'Pengelolaan Pelayanan Kesehatan Tradisional, Akupuntur, Asuhan Mandiri, dan Tradisional Lainnya', NULL, NULL),
(1, 1, 2, 2, 202, 20, 'Pengelolaan Surveilans Kesehatan', NULL, NULL),
(1, 1, 2, 2, 202, 21, 'Pengelolaan Pelayanan Kesehatan Orang dengan Masalah Kesehatan Jiwa (ODMK)', NULL, NULL),
(1, 1, 2, 2, 202, 22, 'Pengelolaan Pelayanan Kesehatan Jiwa dan NAPZA', NULL, NULL),
(1, 1, 2, 2, 202, 23, 'Pengelolaan Upaya Kesehatan Khusus', NULL, NULL),
(1, 1, 2, 2, 202, 24, 'Pengelolaan Upaya Pengurangan Risiko Krisis Kesehatan dan Pasca Krisis Kesehatan', NULL, NULL),
(1, 1, 2, 2, 202, 25, 'Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', NULL, NULL),
(1, 1, 2, 2, 202, 26, 'Pengelolaan Jaminan Kesehatan Masyarakat', NULL, NULL),
(1, 1, 2, 2, 202, 27, 'Deteksi Dini Penyalahgunaan NAPZA di Fasyankes dan Sekolah', NULL, NULL),
(1, 1, 2, 2, 202, 28, 'Pengambilan dan Pengiriman Spesimen Penyakit Potensial KLB ke Laboratorium Rujukan/Nasional', NULL, NULL),
(1, 1, 2, 2, 202, 29, 'Penyelenggaraan Kabupaten/Kota Sehat', NULL, NULL),
(1, 1, 2, 2, 202, 30, 'Penyediaan Telemedicine di Fasilitas Pelayanan Kesehatan', NULL, NULL),
(1, 1, 2, 2, 202, 31, 'Pengelolaan Penelitian Kesehatan', NULL, NULL),
(1, 1, 2, 2, 202, 32, 'Operasional Pelayanan Rumah Sakit', NULL, NULL),
(1, 1, 2, 2, 202, 33, 'Operasional Pelayanan Puskesmas', NULL, NULL),
(1, 1, 2, 2, 202, 34, 'Operasional Pelayanan Fasilitas Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 202, 35, 'Pelaksanaan Akreditasi Fasilitas Kesehatan di Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 202, 36, 'Investigasi Awal Kejadian Tidak Diharapkan (Kejadian Ikutan Pasca Imunisasi dan Pemberian Obat Massal)', NULL, NULL),
(1, 1, 2, 2, 202, 37, 'Pelaksanaan Kewaspadaan Dini dan Respon Wabah', NULL, NULL),
(1, 1, 2, 2, 202, 38, 'Penyediaan dan Pengelolaan Sistem Penanganan Gawat Darurat Terpadu (SPGDT)', NULL, NULL),
(1, 1, 2, 2, 202, 39, 'Pengelolaan Pelayanan Kesehatan Dasar Melalui Pendekatan Keluarga', NULL, NULL),
(1, 1, 2, 2, 203, 1, 'Pengelolaan Data dan Informasi Kesehatan', NULL, NULL),
(1, 1, 2, 2, 203, 2, 'Pengelolaan Sistem Informasi Kesehatan', NULL, NULL),
(1, 1, 2, 2, 203, 3, 'Pengadaan Alat/Perangkat Sistem Informasi Kesehatan dan Jaringan Internet', NULL, NULL),
(1, 1, 2, 2, 204, 1, 'Pengendalian dan Pengawasan serta Tindak Lanjut Pengawasan Perizinan Rumah Sakit Kelas C, D dan Fasilitas Pelayanan Kesehatan Lainnya', NULL, NULL),
(1, 1, 2, 2, 204, 2, 'Peningkatan Tata Kelola Rumah Sakit dan Fasilitas Pelayanan Kesehatan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 2, 204, 3, 'Peningkatan Mutu Pelayanan Fasilitas Kesehatan', NULL, NULL),
(1, 1, 2, 2, 204, 4, 'Penyiapan Perumusan dan Pelaksanaan Pelayanan Kesehatan Rujukan', NULL, NULL),
(1, 1, 2, 3, 201, 1, 'Pengendalian Perizinan Praktik Tenaga Kesehatan', NULL, NULL),
(1, 1, 2, 3, 201, 2, 'Pembinaan dan Pengawasan Tenaga Kesehatan serta Tindak Lanjut Perizinan Praktik Tenaga Kesehatan', NULL, NULL),
(1, 1, 2, 3, 202, 1, 'Perencanaan dan Distribusi serta Pemerataan Sumber Daya Manusia Kesehatan', NULL, NULL),
(1, 1, 2, 3, 202, 2, 'Pemenuhan Kebutuhan Sumber Daya Manusia Kesehatan sesuai Standar', NULL, NULL),
(1, 1, 2, 3, 202, 3, 'Pembinaan dan Pengawasan Sumber Daya Manusia Kesehatan', NULL, NULL),
(1, 1, 2, 3, 203, 1, 'Pengembangan Mutu dan Peningkatan Kompetensi Teknis Sumber Daya Manusia Kesehatan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 2, 4, 201, 1, 'Pengendalian dan Pengawasan serta Tindak Lanjut Pengawasan Perizinan Apotek, Toko Obat, Toko Alat Kesehatan, dan Optikal, Usaha Mikro Obat Tradisional (UMOT)', NULL, NULL),
(1, 1, 2, 4, 201, 2, 'Penyediaan dan Pengelolaan Data Perizinan dan Tindak Lanjut Pengawasan Izin Apotek, Toko Obat, Toko Alat Kesehatan, dan Optikal, Usaha Mikro Obat Tradisional (UMOT)', NULL, NULL),
(1, 1, 2, 4, 201, 3, 'Fasilitasi Pemenuhan Komitmen Izin Apotek, Toko Obat, Toko Alat Kesehatan, dan Optikal, Usaha Mikro Obat Tradisional (UMOT)', NULL, NULL),
(1, 1, 2, 4, 202, 1, 'Pengendalian dan Pengawasan serta tindak lanjut Pengawasan Sertifikat Produksi Alat Kesehatan Kelas 1 Tertentu dan PKRT Kelas 1 Tertentu Perusahaan Rumah Tangga', NULL, NULL),
(1, 1, 2, 4, 202, 2, 'Pengendalian dan Pengawasan serta Tindak Lanjut Pengawasan Perbekalan Kesehatan Rumah Tangga Kelas 1 Tertentu Perusahaan Rumah Tangga', NULL, NULL),
(1, 1, 2, 4, 203, 1, 'Pengendalian dan Pengawasan serta Tindak Lanjut Pengawasan Sertifikat Produksi Pangan Industri Rumah Tangga dan Nomor P-IRT sebagai Izin Produksi, untuk Produk Makanan Minuman Tertentu yang dapat Diproduksi oleh Industri Rumah Tangga', NULL, NULL),
(1, 1, 2, 4, 204, 1, 'Pengendalian dan Pengawasan serta Tindak Lanjut Pengawasan Penerbitan Sertifikat Laik Higiene Sanitasi Tempat Pengelolaan Makanan (TPM) antara lain Jasa Boga, Rumah Makan/Restoran dan Depot Air Minum (DAM)', NULL, NULL),
(1, 1, 2, 4, 205, 1, 'Pengendalian dan Pengawasan serta tindak lanjut Penerbitan Stiker Pembinaan pada Makanan Jajanan dan Sentra Makanan Jajanan', NULL, NULL),
(1, 1, 2, 4, 206, 1, 'Pemeriksaan Post Market pada Produk Makanan-Minuman Industri Rumah Tangga yang Beredar dan Pengawasan serta Tindak Lanjut Pengawasan', NULL, NULL),
(1, 1, 2, 4, 206, 2, 'Penyediaan dan Pengelolaan Data Tindak Lanjut Pengawasan Perizinan Industri Rumah Tangga', NULL, NULL),
(1, 1, 2, 5, 201, 1, 'Peningkatan Upaya Promosi Kesehatan, Advokasi, Kemitraan dan Pemberdayaan Masyarakat', NULL, NULL),
(1, 1, 2, 5, 202, 1, 'Penyelenggaraan Promosi Kesehatan dan Gerakan Hidup Bersih dan Sehat', NULL, NULL),
(1, 1, 2, 5, 203, 1, 'Bimbingan Teknis dan Supervisi Pengembangan dan Pelaksanaan Upaya Kesehatan Bersumber Daya Masyarakat (UKBM)', NULL, NULL),
(1, 1, 3, 2, 201, 1, 'Penyusunan Rencana Teknis dan Dokumen Lingkungan Hidup untuk Konstruksi Bendungan, Embung, dan Bangunan Penampung Air Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 2, 'Penyusunan Rencana Teknis dan Dokumen Lingkungan Hidup untuk Konstruksi Air Tanah dan Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 3, 'Penyusunan Rencana Teknis dan Dokumen Lingkungan Hidup untuk Konstruksi Pengendali Banjir, Lahar, Drainase Utama Perkotaan dan Pengaman Pantai', NULL, NULL),
(1, 1, 3, 2, 201, 4, 'Penyusunan Pola dan Rencana Pengelolaan SDA WS Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 5, 'Pembangunan Bendungan', NULL, NULL),
(1, 1, 3, 2, 201, 6, 'Pembangunan Embung dan Penampung Air Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 7, 'Pembangunan Sumur Air Tanah untuk Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 8, 'Pembangunan Unit Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 9, 'Pembangunan Tanggul Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 10, 'Pembangunan Bangunan Perkuatan Tebing', NULL, NULL),
(1, 1, 3, 2, 201, 11, 'Pembangunan Pintu Air/Bendung Pengendali Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 12, 'Pembangunan Kanal Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 13, 'Pembangunan Stasiun Pompa Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 14, 'Pembangunan Polder/Kolam Retensi', NULL, NULL),
(1, 1, 3, 2, 201, 15, 'Pembangunan Bangunan Sabo', NULL, NULL),
(1, 1, 3, 2, 201, 16, 'Pembangunan Check Dam', NULL, NULL),
(1, 1, 3, 2, 201, 17, 'Pembangunan Breakwater', NULL, NULL),
(1, 1, 3, 2, 201, 18, 'Pembangunan Seawall dan Bangunan Pengaman Pantai Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 19, 'Pembangunan Flood Forecasting And Warning System (FFWS)', NULL, NULL),
(1, 1, 3, 2, 201, 20, 'Rehabilitasi Bendungan', NULL, NULL),
(1, 1, 3, 2, 201, 21, 'Rehabilitasi Embung dan Penampungan Air Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 22, 'Rehabilitasi Sumur Air Tanah untuk Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 23, 'Rehabilitasi Unit Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 24, 'Rehabilitasi Tanggul Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 25, 'Rehabilitasi Bangunan Perkuatan Tebing', NULL, NULL),
(1, 1, 3, 2, 201, 26, 'Rehabilitasi Pintu Air/Bendung Pengendali Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 27, 'Rehabilitasi Kanal Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 28, 'Rehabilitasi Stasiun Pompa Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 29, 'Rehabilitasi Polder/Kolam Retensi', NULL, NULL),
(1, 1, 3, 2, 201, 30, 'Rehabilitasi Bangunan Sabo', NULL, NULL),
(1, 1, 3, 2, 201, 31, 'Rehabilitasi Check Dam', NULL, NULL),
(1, 1, 3, 2, 201, 32, 'Rehabilitasi Breakwater', NULL, NULL),
(1, 1, 3, 2, 201, 33, 'Rehabilitasi Seawall dan Bangunan Pengaman Pantai Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 34, 'Peningkatan Tanggul Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 35, 'Peningkatan Bangunan Perkuatan Tebing', NULL, NULL),
(1, 1, 3, 2, 201, 36, 'Peningkatan Pintu Air/Bendung Pengendali Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 37, 'Peningkatan Kanal Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 38, 'Peningkatan Stasiun Pompa Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 39, 'Peningkatan Polder/Kolam Retensi', NULL, NULL),
(1, 1, 3, 2, 201, 40, 'Peningkatan Bangunan Sabo', NULL, NULL),
(1, 1, 3, 2, 201, 41, 'Peningkatan Check Dam', NULL, NULL),
(1, 1, 3, 2, 201, 42, 'Peningkatan Breakwater', NULL, NULL),
(1, 1, 3, 2, 201, 43, 'Peningkatan Seawall dan Bangunan Pengaman Pantai Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 44, 'Peningkatan Flood Forecasting And Warning System (FFWS)', NULL, NULL),
(1, 1, 3, 2, 201, 45, 'Revitalisasi Danau', NULL, NULL),
(1, 1, 3, 2, 201, 46, 'Normalisasi/Restorasi Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 47, 'Pembangunan Infrastruktur untuk Melindungi Mata Air', NULL, NULL),
(1, 1, 3, 2, 201, 48, 'Operasi dan Pemeliharaan Bendungan', NULL, NULL),
(1, 1, 3, 2, 201, 49, 'Operasi dan Pemeliharaan Embung dan Penampung Air Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 50, 'Operasi dan Pemeliharaan Sumur Air Tanah untuk Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 51, 'Operasi dan Pemeliharaan Embung Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 52, 'Operasi dan Pemeliharaan Unit Air Baku', NULL, NULL),
(1, 1, 3, 2, 201, 53, 'Operasi dan Pemeliharaan Tanggul dan Tebing Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 54, 'Operasi dan Pemeliharaan Kanal Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 55, 'Operasi dan Pemeliharaan Stasiun Pompa Banjir', NULL, NULL),
(1, 1, 3, 2, 201, 56, 'Operasi dan Pemeliharaan Polder/Kolam Retensi', NULL, NULL),
(1, 1, 3, 2, 201, 57, 'Operasi dan Pemeliharaan Bangunan Sabo', NULL, NULL),
(1, 1, 3, 2, 201, 58, 'Operasi dan Pemeliharaan Check Dam', NULL, NULL),
(1, 1, 3, 2, 201, 59, 'Operasi dan Pemeliharaan Breakwater/Seawall dan Bangunan Pengaman Pantai Lainnya', NULL, NULL),
(1, 1, 3, 2, 201, 60, 'Pengelolaan Hidrologi dan Kualitas Air WS Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 61, 'Pembinaan dan Pemberdayaan Kelembagaan Pengelolaan SDA Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 62, 'Evaluasi dan Rekomendasi Teknis (Rekomtek) Pemanfaatan SDA WS Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 63, 'Koordinasi dan Sinkronisasi Peningkatan Kapasitas Kelembagaan Pengelolaan SDA Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 2, 201, 64, 'Operasi dan Pemeliharaan Danau', NULL, NULL),
(1, 1, 3, 2, 201, 65, 'Operasi dan Pemeliharaan Sungai', NULL, NULL),
(1, 1, 3, 2, 201, 66, 'Operasi dan Pemeliharaan Infrastruktur untuk Melindungi Mata Air', NULL, NULL),
(1, 1, 3, 2, 202, 1, 'Penyusunan Rencana Teknis dan Dokumen Lingkungan Hidup untuk Konstruksi Irigasi dan Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 2, 'Pembangunan Jaringan Irigasi Permukaan', NULL, NULL),
(1, 1, 3, 2, 202, 3, 'Pembangunan Bendung Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 4, 'Pembangunan Jaringan Irigasi Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 5, 'Pembangunan Jaringan Irigasi Tambak', NULL, NULL),
(1, 1, 3, 2, 202, 6, 'Pembangunan Sumur Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 7, 'Pembangunan Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 8, 'Peningkatan Jaringan Irigasi Permukaan', NULL, NULL),
(1, 1, 3, 2, 202, 9, 'Peningkatan Bendung Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 10, 'Peningkatan Jaringan Irigasi Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 11, 'Peningkatan Jaringan Irigasi Tambak', NULL, NULL),
(1, 1, 3, 2, 202, 12, 'Peningkatan Sumur Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 13, 'Peningkatan Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 14, 'Rehabilitasi Jaringan Irigasi Permukaan', NULL, NULL),
(1, 1, 3, 2, 202, 15, 'Rehabilitasi Bendung Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 16, 'Rehabilitasi Jaringan Irigasi Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 17, 'Rehabilitasi Jaringan Irigasi Tambak', NULL, NULL),
(1, 1, 3, 2, 202, 18, 'Rehabilitasi Sumur Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 19, 'Rehabilitasi Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 20, 'Koordinasi, Sinkronisasi dan Pelaksanaan Konservasi Kawasan Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 21, 'Operasi dan Pemeliharaan Jaringan Irigasi Permukaan', NULL, NULL),
(1, 1, 3, 2, 202, 22, 'Operasi dan Pemeliharaan Bendung Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 23, 'Operasi dan Pemeliharaan Jaringan Irigasi Rawa', NULL, NULL),
(1, 1, 3, 2, 202, 24, 'Operasi dan Pemeliharaan Jaringan Irigasi Tambak', NULL, NULL),
(1, 1, 3, 2, 202, 25, 'Operasi dan Pemeliharaan Sumur Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 26, 'Operasi dan Pemeliharaan Jaringan Irigasi Air Tanah', NULL, NULL),
(1, 1, 3, 2, 202, 27, 'Operasional Unit Pengelola Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 28, 'Pengelolaan dan Pengawasan Alokasi Air Irigasi', NULL, NULL),
(1, 1, 3, 2, 202, 29, 'Koordinasi, Sinkronisasi dan Pelaksanaan Pemeliharaan Kawasan Rawa', NULL, NULL),
(1, 1, 3, 3, 201, 1, 'Penyusunan Rencana, Kebijakan, Strategi dan Teknis SPAM', NULL, NULL),
(1, 1, 3, 3, 201, 2, 'Supervisi Pembangunan/Peningkatan/ Perluasan/Perbaikan SPAM', NULL, NULL),
(1, 1, 3, 3, 201, 3, 'Pembangunan SPAM Jaringan Perpipaan di Kawasan Perkotaan', NULL, NULL),
(1, 1, 3, 3, 201, 4, 'Pembangunan SPAM Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 5, 'Peningkatan SPAM Jaringan Perpipaan di Kawasan Perkotaan', NULL, NULL),
(1, 1, 3, 3, 201, 6, 'Peningkatan SPAM Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 7, 'Perluasan SPAM Jaringan Perpipaan di Kawasan Perkotaan', NULL, NULL),
(1, 1, 3, 3, 201, 8, 'Perbaikan SPAM Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 9, 'Pembinaan dan Pengawasan Terhadap Tarif Air Minum', NULL, NULL),
(1, 1, 3, 3, 201, 10, 'Pembinaan dan Pengawasan Terhadap Penyelenggaraan SPAM oleh Badan Usaha Untuk Kebutuhan Sendiri', NULL, NULL),
(1, 1, 3, 3, 201, 11, 'Pembinaan dan Pengawasan Terhadap Penyelenggaraan SPAM oleh Pemerintah Desa dan Kelompok Masyarakat', NULL, NULL),
(1, 1, 3, 3, 201, 12, 'Fasilitasi Penyiapan Kerja Sama SPAM', NULL, NULL),
(1, 1, 3, 3, 201, 13, 'Pembinaan dan Pengawasan Terhadap Pelaksanaan Kerjasama SPAM', NULL, NULL),
(1, 1, 3, 3, 201, 14, 'Pengembangan SDM dan Kelembagaan Pengelolaan SPAM', NULL, NULL),
(1, 1, 3, 3, 201, 15, 'Operasi dan Pemeliharaan SPAM di Kawasan Perkotaan', NULL, NULL),
(1, 1, 3, 3, 201, 16, 'Operasi dan Pemeliharaan SPAM di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 17, 'Pembangunan Baru SPAM Bukan Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 18, 'Peningkatan SPAM Bukan Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 19, 'Perluasan SPAM Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 3, 201, 20, 'Perbaikan SPAM Jaringan Perpipaan di Kawasan Perkotaan', NULL, NULL),
(1, 1, 3, 3, 201, 21, 'Perbaikan SPAM Bukan Jaringan Perpipaan di Kawasan Perdesaan', NULL, NULL),
(1, 1, 3, 4, 201, 1, 'Penyusunan Rencana, Kebijakan, Strategi, dan Teknis Sistem Pengelolaan Persampahan TPA/TPST/SPA/TPS-3R/TPS Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 4, 201, 2, 'Supervisi Pembangunan/Rehabilitasi/ Peningkatan TPA/TPST/SPA/TPS-3R/TPS Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 4, 201, 3, 'Pembangunan TPA/TPST/SPA/TPS-3R/TPS', NULL, NULL),
(1, 1, 3, 4, 201, 4, 'Rehabilitasi TPA/TPST/SPA/TPS-3R/TPS', NULL, NULL),
(1, 1, 3, 4, 201, 5, 'Peningkatan TPA/TPST/SPA/TPS-3R/TPS', NULL, NULL),
(1, 1, 3, 4, 201, 6, 'Penyediaan Sarana Persampahan', NULL, NULL),
(1, 1, 3, 4, 201, 7, 'Pembinaan Teknik Pengelolaan Infrastruktur Persampahan', NULL, NULL),
(1, 1, 3, 4, 201, 8, 'Sosialisasi dan Pemberdayaan Masyarakat dalam rangka Penyediaan Sarana TPA/TPST/SPA/TPS-3R/TPS', NULL, NULL),
(1, 1, 3, 5, 201, 1, 'Penyusunan Rencana, Kebijakan, Strategi dan Teknis Sistem Pengelolaan Air Limbah Domestik dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 5, 201, 2, 'Supervisi Pembangunan/Rehabilitasi/ Peningkatan/Perluasan Sistem Pengelolaan Air Limbah Domestik Terpusat Skala Kota', NULL, NULL),
(1, 1, 3, 5, 201, 3, 'Pembangunan/Penyediaan Sistem Pengelolaan Air Limbah Terpusat Skala Kota', NULL, NULL),
(1, 1, 3, 5, 201, 4, 'Rehabilitasi/Peningkatan/Perluasan Sistem Pengelolaan Air Limbah Domestik Terpusat Skala Kota', NULL, NULL),
(1, 1, 3, 5, 201, 5, 'Rehabilitasi/Peningkatan/Perluasan Sistem Pengelolaan Air Limbah Domestik Terpusat Skala Permukiman', NULL, NULL),
(1, 1, 3, 5, 201, 6, 'Pembangunan/Penyediaan Sub Sistem Pengolahan Setempat', NULL, NULL),
(1, 1, 3, 5, 201, 7, 'Pembinaan Teknik Pengelolaan Air Limbah Domestik', NULL, NULL),
(1, 1, 3, 5, 201, 8, 'Sosialisasi dan Pemberdayaan Masyarakat terkait Penyediaan Sistem Pengelolaan Air Limbah Domestik', NULL, NULL),
(1, 1, 3, 5, 201, 9, 'Pengembangan SDM dan Kelembagaan Pengelolaan Air Limbah Domestik', NULL, NULL),
(1, 1, 3, 5, 201, 10, 'Operasi dan Pemeliharaan Sistem Pengelolaan Air Limbah Domestik', NULL, NULL),
(1, 1, 3, 5, 201, 11, 'Supervisi Pembangunan/Rehabilitasi /Peningkatan/Perluasan Sistem Pengelolaan Air Limbah Domestik Terpusat Skala Permukiman', NULL, NULL),
(1, 1, 3, 5, 201, 12, 'Pembangunan/Penyediaan Sistem Pengelolaan Air Limbah Terpusat Skala Permukiman', NULL, NULL),
(1, 1, 3, 5, 201, 13, 'Penyediaan Sarana Pengangkutan Lumpur Tinja', NULL, NULL),
(1, 1, 3, 5, 201, 14, 'Penyediaan Jasa Penyedotan Lumpur Tinja', NULL, NULL),
(1, 1, 3, 5, 201, 15, 'Pembangunan/Penyediaan Sarana dan Prasarana IPLT', NULL, NULL),
(1, 1, 3, 5, 201, 16, 'Rehabilitasi/Peningkatan/Perluasan Sarana dan Prasarana IPLT', NULL, NULL),
(1, 1, 3, 5, 201, 17, 'Supervisi Pembangunan/Rehabilitasi/ Peningkatan/Perluasan Sarana dan Prasarana IPLT', NULL, NULL),
(1, 1, 3, 6, 201, 1, 'Penyusunan Rencana, Kebijakan, Strategi dan Teknis Sistem Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 2, 'Penyusunan Outline Plan pada Kawasan Genangan', NULL, NULL),
(1, 1, 3, 6, 201, 3, 'Supervisi Pembangunan/Peningkatan/ Rehabilitasi Sistem Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 4, 'Pembinaan Teknik Sistem Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 5, 'Pembangunan Sistem Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 6, 'Peningkatan Saluran Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 7, 'Rehabilitasi Saluran Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 8, 'Penyediaan Sarana Sistem Drainase Perkotaan', NULL, NULL),
(1, 1, 3, 6, 201, 9, 'Operasi dan Pemeliharaan Sistem Drainase', NULL, NULL),
(1, 1, 3, 6, 201, 10, 'Supervisi Pembangunan/Peningkatan/ Rehabilitasi Sistem Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 11, 'Pembinaan Teknik Sistem Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 12, 'Pembangunan Sistem Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 13, 'Peningkatan Saluran Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 14, 'Rehabilitasi Saluran Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 15, 'Penyediaan Sarana Sistem Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 6, 201, 16, 'Penyusunan Rencana, Kebijakan, Strategi dan Teknis Sistem Drainase Lingkungan', NULL, NULL),
(1, 1, 3, 7, 201, 1, 'Pembangunan dan Pengembangan Infrastruktur Kawasan Permukiman di Kawasan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 7, 201, 2, 'Pemanfaatan dan Pemeliharaan Infrastruktur Kawasan Permukiman di Kawasan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 7, 201, 3, 'Pengawasan dan Pengendalian Infrastruktur Kawasan Permukiman di Kawasan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 7, 201, 4, 'Pembinaan Penyelenggaraan Infrastruktur Kawasan Permukiman di Kawasan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 1, 'Penyelenggaraan Penerbitan Izin Mendirikan Bangunan (IMB), Sertifikat Laik Fungsi (SLF), peran Tenaga Ahli Bangunan Gedung (TABG), Pendataan Bangunan Gedung, serta Implementasi SIMBG', NULL, NULL),
(1, 1, 3, 8, 201, 2, 'Perencanaan, Pembangunan, Pengawasan, dan Pemanfaatan Bangunan Gedung Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 3, 'Penyusunan Regulasi terkait Bangunan Gedung Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 4, 'Bantuan Teknis Pembangunan Bangunan Gedung Negara Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 5, 'Monitoring dan Evaluasi Penyelenggaraan Bangunan Gedung Negara Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 6, 'Identifikasi, Penetapan, Penyelenggaraan Bangunan Gedung Cagar Budaya yang Dilestarikan Milik Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 7, 'Bantuan Teknis bagi Masyarakat Pemilik Bangunan Gedung Cagar Budaya yang Ditetapkan Tingkat Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 8, 'Pemberian Kompensasi, Insentif dan Disinsentif kepada Pemilik, Pengguna, dan/atau Pengelola Bangunan Gedung Cagar Budaya Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 9, 'Penilikan terhadap Penyelenggaraan Bangunan Gedung oleh Penilik Bangunan', NULL, NULL),
(1, 1, 3, 8, 201, 10, 'Pendaftaran Huruf Daftar Nomor (HDNo) Bangunan Gedung Negara', NULL, NULL),
(1, 1, 3, 8, 201, 11, 'Pemeriksaan Kelaikan Fungsi Rumah Tinggal Tunggal dan Rumah Deret dalam rangka Penerbitan Sertifikat Laik Fungsi', NULL, NULL),
(1, 1, 3, 8, 201, 12, 'Rehabilitasi, Renovasi dan Ubahsuai Bangunan Gedung untuk Kepentingan Strategis Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 8, 201, 13, 'Pemeliharaan dan Perawatan Bangunan Gedung Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 9, 201, 1, 'Penyusunan Rencana, Kebijakan, Strategi dan Teknis Sistem Penataan Bangunan dan Lingkungan di Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 9, 201, 2, 'Supervisi Penataan/Pemeliharaan Bangunan dan Lingkungan', NULL, NULL),
(1, 1, 3, 9, 201, 3, 'Penataan Bangunan dan Lingkungan', NULL, NULL),
(1, 1, 3, 9, 201, 4, 'Pemeliharaan Bangunan dan Lingkungan', NULL, NULL),
(1, 1, 3, 9, 201, 5, 'Pemberdayaan Masyarakat dalam Penataan Bangunan dan Lingkungan', NULL, NULL),
(1, 1, 3, 9, 201, 6, 'Monitoring Penataan/Pemeliharaan Bangunan dan Lingkungan', NULL, NULL),
(1, 1, 3, 10, 201, 1, 'Penyusunan Rencana, Kebijakan, dan Strategi Pengembangan Jaringan Jalan Serta Perencanaan Teknis Penyelenggaraan Jalan dan Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 2, 'Pembebasan Lahan/Tanah untuk Penyelenggaraan Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 3, 'Pengelolaan Leger Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 4, 'Survey Kondisi Jalan/Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 5, 'Pembangunan Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 6, 'Pelebaran Jalan Menuju Standar', NULL, NULL),
(1, 1, 3, 10, 201, 7, 'Pelebaran Jalan Menambah Lajur', NULL, NULL),
(1, 1, 3, 10, 201, 8, 'Rekonstruksi Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 9, 'Rehabilitasi Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 10, 'Pemeliharaan Berkala Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 11, 'Pemeliharaan Rutin Jalan', NULL, NULL),
(1, 1, 3, 10, 201, 12, 'Pembangunan Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 13, 'Pembangunan Flyover', NULL, NULL),
(1, 1, 3, 10, 201, 14, 'Pembangunan Underpass', NULL, NULL),
(1, 1, 3, 10, 201, 15, 'Pembangunan Terowongan/Tunnel', NULL, NULL),
(1, 1, 3, 10, 201, 16, 'Penggantian Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 17, 'Pelebaran Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 18, 'Rehabilitasi Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 19, 'Pemeliharaan Rutin Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 20, 'Pemeliharaan Berkala Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 21, 'Penanggulangan Bencana/Tanggap Darurat', NULL, NULL),
(1, 1, 3, 10, 201, 22, 'Pemantauan dan Evaluasi Penyelenggaraan Jalan/Jembatan', NULL, NULL),
(1, 1, 3, 10, 201, 23, 'Pengawasan Teknis Penyelenggaraan Jalan/Jembatan', NULL, NULL),
(1, 1, 3, 11, 201, 1, 'Penyiapan Training Need Assessment (TNA) Pelatihan Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 2, 'Penyiapan Instruktur/Asesor/Penyelenggara Pelatihan', NULL, NULL),
(1, 1, 3, 11, 201, 3, 'Penyiapan SOP Penyelenggaraan Pelatihan Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 4, 'Pelaksanaan Pelatihan Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 5, 'Identifikasi Potensi Kerjasama dan Pemberdayaan Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 6, 'Fasilitasi Sertifikasi Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 7, 'Pembinaan dan Peningkatan Kapasitas Kelembagaan Konstruksi', NULL, NULL),
(1, 1, 3, 11, 201, 8, 'Pemantauan dan Evaluasi Kegiatan Pelatihan Tenaga Terampil Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 1, 'Pengelolaan Operasional Layanan Informasi Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 2, 'Penyediaan Perangkat Pendukung Layanan Informasi Jasa Konstruksi', NULL, NULL);
INSERT INTO `ref_sub_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `sub_kegiatan_kode`, `sub_kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 11, 202, 3, 'Penyelenggaraan Pelatihan untuk Peningkatan Kapasitas Administrator SIPJAKI', NULL, NULL),
(1, 1, 3, 11, 202, 4, 'Penyusunan Data dan Informasi Proyek Bidang PUPR yang dapat Dilaksanakan dengan Skema KPDBU', NULL, NULL),
(1, 1, 3, 11, 202, 5, 'Penyusunan Data dan Informasi Potensi Risiko Investasi Infrastruktur', NULL, NULL),
(1, 1, 3, 11, 202, 6, 'Penyusunan Data dan Informasi Tenaga Kerja dan Badan Usaha', NULL, NULL),
(1, 1, 3, 11, 202, 7, 'Penyusunan Data dan Informasi Ketersediaan/Penggunaan Material dan Peralatan', NULL, NULL),
(1, 1, 3, 11, 202, 8, 'Penyusunan Data dan Informasi Profil Pekerjaan Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 9, 'Penyusunan Data dan Informasi Tertib Penyelenggaraan Pekerjaan Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 10, 'Penyusunan Data dan Informasi Kecelakaan Kerja Proyek Konstruksi', NULL, NULL),
(1, 1, 3, 11, 202, 11, 'Penyusunan Data dan Informasi Kegagalan Bangunan/Konstruksi', NULL, NULL),
(1, 1, 3, 11, 203, 1, 'Penyusunan Peraturan di Daerah dan SOP terkait Penyelenggaraan IUJK Nasional di Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 11, 203, 2, 'Dukungan/Fasilitasi Penyelenggaraan Penerbitan Rekomendasi Teknis IUJK Nasional', NULL, NULL),
(1, 1, 3, 11, 203, 3, 'Pembinaan dan Peningkatan Kapasitas Badan Usaha Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 11, 203, 4, 'Pembinaan dan Peningkatan Kapasitas Lembaga Sertifikasi Badan Usaha Pemantauan dan Evaluasi Terkait IUJK Nasional', NULL, NULL),
(1, 1, 3, 11, 203, 5, 'Pemantauan dan Evaluasi IUJK Nasional yang telah Diterbitkan', NULL, NULL),
(1, 1, 3, 11, 204, 1, 'Penyusunan SOP/Pedoman Tertib Usaha, Tertib Penyelenggaraan, dan Tertib Pemanfaatan Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 11, 204, 2, 'Bimbingan Teknis tentang Tertib Usaha, Tertib Penyelenggaraan, dan Tertib Pemanfaatan Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 11, 204, 3, 'Pengawasan dan Evaluasi Tertib Usaha, Tertib Penyelenggaraan, dan Tertib Pemanfaatan Jasa Konstruksi', NULL, NULL),
(1, 1, 3, 12, 201, 1, 'Pelaksanaan Persetujuan Substansi, Evaluasi, Konsultasi Evaluasi dan Penetapan RTRW Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 201, 2, 'Pelaksanaan Persetujuan Substansi, Evaluasi, Konsultasi Evaluasi dan Penetapan RRTR Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 201, 3, 'Penetapan Kebijakan dalam rangka Pelaksanaan Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 201, 4, 'Sosialisasi Kebijakan dan Peraturan Perundang-undangan Bidang Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 202, 1, 'Koordinasi dan Sinkronisasi Penyusunan RTRW Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 202, 2, 'Koordinasi dan Sinkronisasi Penyusunan RRTR Kabupaten/Kota', NULL, NULL),
(1, 1, 3, 12, 202, 3, 'Peningkatan Peran Masyarakat dalam Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 203, 1, 'Koordinasi dan Sinkronisasi Pemanfaatan Ruang untuk Investasi dan Pembangunan Daerah', NULL, NULL),
(1, 1, 3, 12, 203, 2, 'Sistem Informasi Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 204, 1, 'Koordinasi dan Sinkronisasi Pemberian Insentif dan Disinsentif Bidang Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 204, 2, 'Koordinasi dan Sinkronisasi Penertiban dan Penegakan Hukum Bidang Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 204, 3, 'Operasionalisasi Tugas dan Fungsi Penyidik Pegawai Negeri Sipil (PPNS) Bidang Penataan Ruang', NULL, NULL),
(1, 1, 3, 12, 204, 4, 'Koordinasi Pelaksanaan Penataan Ruang', NULL, NULL),
(1, 1, 4, 2, 201, 1, 'Identifikasi Perumahan di Lokasi Rawan Bencana atau Terkena Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 201, 2, 'Identifikasi Lahan-Lahan Potensial sebagai Lokasi Relokasi Perumahan', NULL, NULL),
(1, 1, 4, 2, 201, 3, 'Pengumpulan Data Rumah Korban Bencana Kejadian Sebelumnya yang Belum Tertangani', NULL, NULL),
(1, 1, 4, 2, 201, 4, 'Pendataan Tingkat Kerusakan Rumah Akibat Bencana', NULL, NULL),
(1, 1, 4, 2, 201, 5, 'Pendataan dan Verifikasi Penerima Rumah bagi Korban Bencana Alam atau Terkena Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 201, 6, 'Pendataan Rumah Sewa Milik Masyarakat, Rumah Susun dan Rumah Khusus', NULL, NULL),
(1, 1, 4, 2, 202, 1, 'Sosialisasi Standar Teknis Penyediaan dan Rehabilitasi Rumah kepada Masyarakat/Sukarelawan Tanggap Bencana', NULL, NULL),
(1, 1, 4, 2, 202, 2, 'Sosialisasi tentang Mekanisme Penggantian Hak atas Tanah dan Bangunan', NULL, NULL),
(1, 1, 4, 2, 202, 3, 'Sosialisasi Pengembangan Perumahan Baru dan Mekanisme Akses Perumahan KPR-FLPP', NULL, NULL),
(1, 1, 4, 2, 202, 4, 'Pembentukan dan Pelatihan Tim Satgas, Tim Pendamping dan Fasilitator', NULL, NULL),
(1, 1, 4, 2, 202, 5, 'Rembug Warga untuk Menentukan Calon Penerima Rumah bagi Korban Bencana', NULL, NULL),
(1, 1, 4, 2, 202, 6, 'Koordinasi untuk Menyepakati Penerima dan Jenis Pelayanan', NULL, NULL),
(1, 1, 4, 2, 203, 1, 'Rehabilitasi Rumah bagi Korban Bencana', NULL, NULL),
(1, 1, 4, 2, 203, 2, 'Penyusunan Site Plan dan/atau Detail Engineering Design (DED) bagi Rumah Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 203, 3, 'Pengadaan Lahan untuk Pembangunan Rumah bagi Korban Bencana', NULL, NULL),
(1, 1, 4, 2, 203, 4, 'Pembangunan Rumah bagi Korban Bencana', NULL, NULL),
(1, 1, 4, 2, 203, 5, 'Pembangunan Rumah Khusus beserta PSU bagi Korban Bencana atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 203, 6, 'Operasional dan Pemeliharaan Lingkungan Perumahan pada Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 204, 1, 'Pelaksanaan Pembagian Rumah bagi Korban Bencana Kabupaten/Kota atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 204, 2, 'Penatausahaan Serah Terima Rumah bagi Korban Bencana Kabupaten/Kota atau Relokasi Program Kabupaten/Kota', NULL, NULL),
(1, 1, 4, 2, 205, 1, 'Fasilitasi Pengelolaan Kelembagaan dan Pemilik/Penghuni Rumah Susun', NULL, NULL),
(1, 1, 4, 2, 205, 2, 'Penatausahaan Pemanfaatan Rumah Susun Umum dan/atau Rumah Khusus', NULL, NULL),
(1, 1, 4, 2, 206, 1, 'Fasilitasi Pemenuhan Komitmen Penerbitan Izin Pembangunan dan Pengembangan Perumahan Terintegrasi secara Elektronik', NULL, NULL),
(1, 1, 4, 2, 206, 2, 'Penguatan dan Pembinaan kepada BLU/BUMD untuk Penyelenggaraan Rumah Sederhana', NULL, NULL),
(1, 1, 4, 2, 206, 3, 'Koordinasi dan Sinkronisasi Pengendalian Pembangunan dan Pengembangan Perumahan', NULL, NULL),
(1, 1, 4, 2, 206, 4, 'Koordinasi dan Sinkronisasi Kerjasama Pemerintah Daerah dengan Badan Usaha (KPDBU) Perumahan Umum/Rumah Susun Umum', NULL, NULL),
(1, 1, 4, 2, 207, 1, 'Koordinasi dan Sinkronisasi Penerbitan Sertifikat Kepemilikan Bangunan Gedung (SKGB)', NULL, NULL),
(1, 1, 4, 3, 201, 1, 'Fasilitasi Pemenuhan Komitmen Penerbitan Izin Pembangunan dan Pengembangan Kawasan Permukiman Terintegrasi Secara Elektronik', NULL, NULL),
(1, 1, 4, 3, 201, 2, 'Penyusunan dan/atau Review serta Legalisasi Rencana Pembangunan dan Pengembangan Kawasan Permukiman dan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 201, 3, 'Koordinasi dan Sinkronisasi Pengendalian Pembangunan dan Pengembangan Kawasan Permukiman dan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 1, 'Survei dan Penetapan Lokasi Perumahan dan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 2, 'Penyusunan Rencana Pencegahan dan Peningkatan Kualitas Perumahan Kumuh dan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 3, 'Pembentukan/Pembinaan Kelompok Swadaya Masyarakat di Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 4, 'Penyadaran Publik Pencegahan Tumbuh dan Berkembangnya Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 5, 'Koordinasi dan Sinkronisasi Pengendalian Penataan Pemugaran/Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 6, 'Pelaksanaan Pembagian Rumah Bagi Masyarakat Terdampak Program Pemugaran/Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 7, 'Penatausahaan Serah Terima Rumah bagi Masyarakat Terdampak Program Pemugaran/Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 202, 8, 'Penyusunan/Review/Legalisasi Kebijakan Bidang PKP', NULL, NULL),
(1, 1, 4, 3, 203, 1, 'Penyusunan Rencana Tapak (Site Plan) dan Detail Engineering Design (DED) Peremajaan/Pemugaran Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 203, 2, 'Perbaikan Rumah Tidak Layak Huni', NULL, NULL),
(1, 1, 4, 3, 203, 3, 'Kerja Sama Perbaikan Rumah Tidak Layak Huni Beserta PSU', NULL, NULL),
(1, 1, 4, 3, 203, 4, 'Koordinasi dan Sinkronisasi Pengendalian Penyelenggaraan Pemugaran/Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 203, 5, 'Pemberian Bantuan Uang Sewa Rumah Tinggal Sementara Bagi Masyarakat yang Terkena Program Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 203, 6, 'Pelaksanaan Pembangunan Pemugaran/ Peremajaan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 203, 7, 'Pendataan dan Verifikasi Penyelenggaraan Kawasan Permukiman Kumuh', NULL, NULL),
(1, 1, 4, 3, 203, 8, 'Pembangunan Rumah Baru Layak Huni', NULL, NULL),
(1, 1, 4, 4, 201, 1, 'Perbaikan Rumah Tidak Layak Huni untuk Pencegahan terhadap Tumbuh dan Berkembangnya Permukiman Kumuh diluar Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, NULL),
(1, 1, 4, 4, 201, 2, 'Kerja Sama Perbaikan Rumah Tidak Layak Huni Beserta PSU diluar Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, NULL),
(1, 1, 4, 4, 201, 3, 'Pemberian Bantuan Uang Sewa Rumah Tinggal Sementara bagi Masyarakat yang Terkena Program Peremajaan Permukiman Kumuh diluar Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, NULL),
(1, 1, 4, 5, 201, 1, 'Perencanaan Penyediaan PSU Perumahan', NULL, NULL),
(1, 1, 4, 5, 201, 2, 'Penyediaan Prasarana, Sarana, dan Utilitas Umum di Perumahan untuk Menunjang Fungsi Hunian', NULL, NULL),
(1, 1, 4, 5, 201, 3, 'Koordinasi dan Sinkronisasi dalam rangka Penyediaan Prasarana, Sarana, dan Utilitas Umum Perumahan', NULL, NULL),
(1, 1, 4, 5, 201, 4, 'Verifikasi dan Penyerahan PSU Permukiman dari Pengembang', NULL, NULL),
(1, 1, 4, 5, 201, 5, 'Kerja Sama Penyediaan/Pengelolaan PSU Permukiman', NULL, NULL),
(1, 1, 4, 5, 201, 7, 'Pembangunan Rumah Khusus*)', NULL, NULL),
(1, 1, 4, 6, 201, 1, 'Koordinasi dan Sinkronisasi Penerbitan Sertifikasi dan Registrasi Pengembang Perumahan dengan Kualifikasi Kecil', NULL, NULL),
(1, 1, 5, 2, 201, 1, 'Pencegahan Gangguan Ketenteraman dan Ketertiban Umum melalui Deteksi Dini dan Cegah Dini, Pembinaan dan Penyuluhan, Pelaksanaan Patroli, Pengamanan, dan Pengawalan', NULL, NULL),
(1, 1, 5, 2, 201, 2, 'Penindakan atas Gangguan Ketenteraman dan Ketertiban Umum Berdasarkan Perda dan Perkada melalui Penertiban dan Penanganan Unjuk Rasa dan Kerusuhan Massa', NULL, NULL),
(1, 1, 5, 2, 201, 3, 'Koordinasi Penyelenggaraan Ketentraman dan Ketertiban Umum serta Perlindungan Masyarakat Tingkat Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 2, 201, 4, 'Pemberdayaan Perlindungan Masyarakat dalam rangka Ketentraman dan Ketertiban Umum', NULL, NULL),
(1, 1, 5, 2, 201, 5, 'Peningkatan Kapasitas SDM Satuan Polisi Pamongpraja dan Satuan Perlindungan Masyarakat termasuk dalam Pelaksanaan Tugas yang Bernuansa Hak Asasi Manusia', NULL, NULL),
(1, 1, 5, 2, 201, 7, 'Kerjasama antar Lembaga dan Kemitraan dalam Teknik Pencegahan dan Penanganan Gangguan Ketentraman dan Ketertiban Umum', NULL, NULL),
(1, 1, 5, 2, 201, 8, 'Pengadaan dan Pemeliharaan Sarana dan Prasarana Ketentraman dan Ketertiban Umum', NULL, NULL),
(1, 1, 5, 2, 201, 9, 'Penyusunan SOP Ketertiban Umum dan Ketenteraman Masyarakat', NULL, NULL),
(1, 1, 5, 2, 201, 10, 'Penyediaan Layanan dalam rangka Dampak Penegakan Peraturan Daerah dan Perkada', NULL, NULL),
(1, 1, 5, 2, 202, 1, 'Sosialisasi Penegakan Peraturan Daerah dan Peraturan Bupati/Wali Kota', NULL, NULL),
(1, 1, 5, 2, 202, 2, 'Pengawasan atas Kepatuhan terhadap Pelaksanaan Peraturan Daerah dan Peraturan Bupati/Wali Kota', NULL, NULL),
(1, 1, 5, 2, 202, 3, 'Penanganan atas Pelanggaran Peraturan Daerah dan Peraturan Bupati/Wali Kota', NULL, NULL),
(1, 1, 5, 2, 203, 1, 'Pengembangan Kapasitas dan Karier PPNS', NULL, NULL),
(1, 1, 5, 3, 201, 1, 'Penyusunan Kajian Risiko Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 201, 2, 'Sosialisasi, Komunikasi, Informasi dan Edukasi (KIE) Rawan Bencana Kabupaten/Kota (Per Jenis Bencana)', NULL, NULL),
(1, 1, 5, 3, 202, 1, 'Penyusunan Rencana Penanggulangan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 2, 'Pelatihan Pencegahan dan Mitigasi Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 3, 'Pengendalian Operasi dan Penyediaan Sarana Prasarana Kesiapsiagaan Terhadap Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 4, 'Penyediaan Peralatan Perlindungan dan Kesiapsiagaan terhadap Bencana', NULL, NULL),
(1, 1, 5, 3, 202, 5, 'Pengelolaan Risiko Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 6, 'Penguatan Kapasitas Kawasan untuk Pencegahan dan Kesiapsiagaan', NULL, NULL),
(1, 1, 5, 3, 202, 7, 'Penanganan Pascabencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 8, 'Pengembangan Kapasitas Tim Reaksi Cepat (TRC) Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 202, 9, 'Penyusunan Rencana Kontijensi', NULL, NULL),
(1, 1, 5, 3, 202, 10, 'Gladi Kesiapsiagaan Terhadap Bencana', NULL, NULL),
(1, 1, 5, 3, 202, 11, 'Penyusunan Rencana Penanggulangan Kedaruratan Bencana', NULL, NULL),
(1, 1, 5, 3, 203, 1, 'Respon Cepat Kejadian Luar Biasa Penyakit/Wabah Zoonosis Prioritas', NULL, NULL),
(1, 1, 5, 3, 203, 2, 'Respon Cepat Darurat Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 203, 3, 'Pencarian, Pertolongan dan Evakuasi Korban Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 203, 4, 'Penyediaan Logistik Penyelamatan dan Evakuasi Korban Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 203, 5, 'Aktivasi Sistem Komando Penanganan Darurat Bencana', NULL, NULL),
(1, 1, 5, 3, 203, 6, 'Respon Cepat Bencana Non Alam Epidemi/Wabah Penyakit', NULL, NULL),
(1, 1, 5, 3, 204, 1, 'Penyusunan Regulasi Penanggulangan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 204, 2, 'Penguatan Kelembagaan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 204, 3, 'Kerjasama antar Lembaga dan Kemitraan dalam Penanggulangan Bencana Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 3, 204, 4, 'Pengelolaan dan Pemanfaatan Sistem Informasi Kebencanaan', NULL, NULL),
(1, 1, 5, 3, 204, 5, 'Pembinaan dan Pengawasan Penyelenggaraan Penanggulangan Bencana', NULL, NULL),
(1, 1, 5, 4, 201, 1, 'Pencegahan Kebakaran dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 4, 201, 2, 'Pemadaman dan Pengendalian Kebakaran dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 4, 201, 3, 'Penyelamatan dan Evakuasi Korban Kebakaran dan Non Kebakaran', NULL, NULL),
(1, 1, 5, 4, 201, 4, 'Penanganan Bahan Berbahaya dan Beracun Kebakaran dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 5, 4, 201, 5, 'Standarisasi Sarana dan Prasarana Pencegahan, Penanggulangan Kebakaran dan Alat Pelindung Diri', NULL, NULL),
(1, 1, 5, 4, 201, 6, 'Pengadaan Sarana dan Prasarana Pencegahan, Penanggulangan Kebakaran dan Alat Pelindung Diri', NULL, NULL),
(1, 1, 5, 4, 201, 7, 'Pembinaan Aparatur Pemadam Kebakaran', NULL, NULL),
(1, 1, 5, 4, 201, 8, 'Pengelolaan Sistem Komunikasi dan Informasi Kebakaran dan Penyelamatan (SKIK)', NULL, NULL),
(1, 1, 5, 4, 201, 9, 'Penyelenggaraan Kerjasama dan Koordinasi antar Daerah Berbatasan, antar Lembaga, dan Kemitraan dalam Pencegahan, Penanggulangan, Penyelamatan Kebakaran dan Penyelamatan Non Kebakaran', NULL, NULL),
(1, 1, 5, 4, 202, 1, 'Pendataan Sarana Prasarana Proteksi Kebakaran', NULL, NULL),
(1, 1, 5, 4, 202, 2, 'Penilaian Sarana Prasarana Proteksi Kebakaran', NULL, NULL),
(1, 1, 5, 4, 203, 1, 'Investigasi Kejadian Kebakaran, meliputi Penelitian dan Pengujian Penyebab Kejadian Kebakaran', NULL, NULL),
(1, 1, 5, 4, 204, 1, 'Pemberdayaan Masyarakat dalam Pencegahan dan Penanggulangan Kebakaran melalui Sosialisasi dan Edukasi Masyarakat', NULL, NULL),
(1, 1, 5, 4, 204, 2, 'Pembentukan dan Pembinaan Relawan Pemadam Kebakaran', NULL, NULL),
(1, 1, 5, 4, 204, 3, 'Dukungan Pemberdayaan Masyarakat/Relawan Pemadam Kebakaran melalui Penyediaan Sarana dan Prasarana', NULL, NULL),
(1, 1, 5, 4, 205, 1, 'Penyelenggaraan Operasi Pencarian dan Pertolongan pada Peristiwa yang Menimpa, Membahayakan, dan/atau Mengancam Keselamatan Manusia', NULL, NULL),
(1, 1, 5, 4, 205, 2, 'Standarisasi Sarana dan Prasarana Pencarian dan Pertolongan terhadap Kondisi Membahayakan Manusia/Penyelamatan dan Evakuasi', NULL, NULL),
(1, 1, 5, 4, 205, 3, 'Pengadaan Sarana dan Prasarana Pencarian dan Pertolongan terhadap Kondisi Membahayakan Manusia/Penyelamatan dan Evakuasi', NULL, NULL),
(1, 1, 5, 4, 205, 4, 'Pembinaan Aparatur Pencarian dan Pertolongan terhadap Kondisi Membahayakan Manusia/Penyelamatan dan Evakuasi', NULL, NULL),
(1, 1, 6, 2, 201, 1, 'Fasilitasi Pemberdayaan Sosial KAT', NULL, NULL),
(1, 1, 6, 2, 201, 2, 'Peningkatan Kapasitas dan Pendampingan KAT', NULL, NULL),
(1, 1, 6, 2, 202, 1, 'Koordinasi dan Sinkronisasi Penerbitan Izin Undian Gratis Berhadiah dan Pengumpulan Uang atau Barang', NULL, NULL),
(1, 1, 6, 2, 203, 1, 'Peningkatan Kemampuan Potensi Pekerja Sosial Masyarakat Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 2, 203, 2, 'Peningkatan Kemampuan Potensi Tenaga Kesejahteraan Sosial Kecamatan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 2, 203, 3, 'Peningkatan Kemampuan Potensi Sumber Kesejahteraan Sosial Keluarga Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 2, 203, 4, 'Peningkatan Kemampuan Potensi Sumber Kesejahteraan Sosial Kelembagaan Masyarakat Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 2, 203, 5, 'Peningkatan Kemampuan Sumber Daya Manusia dan Penguatan Lembaga Konsultasi Kesejahteraan Keluarga (LK3)', NULL, NULL),
(1, 1, 6, 3, 201, 1, 'Fasilitasi Pemulangan Warga Negara Migran Korban Tindak Kekerasan dari Titik Debarkasi di Daerah Kabupaten/Kota untuk dipulangkan ke Desa/Kelurahan Asal', NULL, NULL),
(1, 1, 6, 4, 201, 1, 'Penyediaan Permakanan', NULL, NULL),
(1, 1, 6, 4, 201, 2, 'Penyediaan Sandang', NULL, NULL),
(1, 1, 6, 4, 201, 3, 'Penyediaan Alat Bantu', NULL, NULL),
(1, 1, 6, 4, 201, 4, 'Pemberian Pelayanan Reunifikasi Keluarga', NULL, NULL),
(1, 1, 6, 4, 201, 5, 'Pemberian Bimbingan Fisik, Mental, Spiritual, dan Sosial', NULL, NULL),
(1, 1, 6, 4, 201, 6, 'Pemberian Bimbingan Sosial kepada Keluarga Penyandang Disabilitas Terlantar, Anak Terlantar, Lanjut Usia Terlantar, serta Gelandangan Pengemis dan Masyarakat', NULL, NULL),
(1, 1, 6, 4, 201, 7, 'Fasilitasi Pembuatan Nomor Induk Kependudukan, Akta Kelahiran, Surat Nikah, dan Kartu Identitas Anak', NULL, NULL),
(1, 1, 6, 4, 201, 8, 'Pemberian Akses ke Layanan Pendidikan dan Kesehatan Dasar', NULL, NULL),
(1, 1, 6, 4, 201, 9, 'Pemberian Layanan Data dan Pengaduan', NULL, NULL),
(1, 1, 6, 4, 201, 10, 'Pemberian Layanan Kedaruratan', NULL, NULL),
(1, 1, 6, 4, 201, 11, 'Pemberian Pelayanan Penelusuran Keluarga', NULL, NULL),
(1, 1, 6, 4, 201, 12, 'Pemberian Layanan Rujukan', NULL, NULL),
(1, 1, 6, 4, 202, 1, 'Pemberian Layanan Data dan Pengaduan', NULL, NULL),
(1, 1, 6, 4, 202, 2, 'Pemberian Layanan Kedaruratan', NULL, NULL),
(1, 1, 6, 4, 202, 3, 'Penyediaan Permakanan', NULL, NULL),
(1, 1, 6, 4, 202, 4, 'Penyediaan Sandang', NULL, NULL),
(1, 1, 6, 4, 202, 5, 'Penyediaan Alat Bantu', NULL, NULL),
(1, 1, 6, 4, 202, 6, 'Penyediaan Perbekalan Kesehatan di Luar Panti', NULL, NULL),
(1, 1, 6, 4, 202, 7, 'Pemberian Bimbingan Fisik, Mental, Spiritual, dan Sosial', NULL, NULL),
(1, 1, 6, 4, 202, 8, 'Pemberian Bimbingan Sosial kepada Keluarga Penyandang Masalah Kesejahteraan Sosial (PMKS) Lainnya Bukan Korban HIV/AIDS dan NAPZA', NULL, NULL),
(1, 1, 6, 4, 202, 9, 'Fasilitasi Pembuatan Nomor Induk Kependudukan, Akta Kelahiran, Surat Nikah, dan Kartu Identitas Anak', NULL, NULL),
(1, 1, 6, 4, 202, 10, 'Pemberian Akses ke Layanan Pendidikan dan Kesehatan Dasar', NULL, NULL),
(1, 1, 6, 4, 202, 11, 'Pemberian Pelayanan Penelusuran Keluarga', NULL, NULL),
(1, 1, 6, 4, 202, 12, 'Pemberian Pelayanan Reunifikasi Keluarga', NULL, NULL),
(1, 1, 6, 4, 202, 13, 'Pemberian Layanan Rujukan', NULL, NULL),
(1, 1, 6, 4, 202, 14, 'Kerjasama antar Lembaga dan Kemitraan dalam Pelaksanaan Rehabilitasi Sosial Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 5, 201, 1, 'Penjangkauan Anak-Anak Terlantar', NULL, NULL),
(1, 1, 6, 5, 201, 2, 'Rujukan Anak-Anak Terlantar', NULL, NULL),
(1, 1, 6, 5, 201, 3, 'Pemantauan terhadap Pelaksanaan Pemeliharaan Anak Terlantar', NULL, NULL),
(1, 1, 6, 5, 202, 1, 'Pendataan Fakir Miskin Cakupan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 5, 202, 2, 'Pengelolaan Data Fakir Miskin Cakupan Daerah Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 5, 202, 3, 'Fasilitasi Bantuan Sosial Kesejahteraan Keluarga ', NULL, NULL),
(1, 1, 6, 5, 202, 4, 'Fasilitasi Bantuan Pengembangan Ekonomi Masyarakat', NULL, NULL),
(1, 1, 6, 6, 201, 1, 'Penyediaan Makanan', NULL, NULL),
(1, 1, 6, 6, 201, 2, 'Penyediaan Sandang', NULL, NULL),
(1, 1, 6, 6, 201, 3, 'Penyediaan Tempat Penampungan Pengungsi', NULL, NULL),
(1, 1, 6, 6, 201, 4, 'Penanganan Khusus bagi Kelompok Rentan', NULL, NULL),
(1, 1, 6, 6, 201, 5, 'Pelayanan Dukungan Psikososial', NULL, NULL),
(1, 1, 6, 6, 202, 1, 'Koordinasi, Sosialisasi dan Pelaksanaan Kampung Siaga Bencana', NULL, NULL),
(1, 1, 6, 6, 202, 2, 'Koordinasi, Sosialisasi dan Pelaksanaan Taruna Siaga Bencana', NULL, NULL),
(1, 1, 6, 7, 201, 1, 'Rehabilitasi Sarana dan Prasarana Taman Makam Pahlawan Nasional Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 7, 201, 2, 'Pemeliharaan Taman Makam Pahlawan Nasional Kabupaten/Kota', NULL, NULL),
(1, 1, 6, 7, 201, 3, 'Pengamanan Taman Makam Pahlawan Nasional Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 2, 201, 1, 'Penyusunan Rencana Tenaga Kerja Makro', NULL, NULL),
(1, 2, 7, 2, 201, 2, 'Penyusunan Rencana Tenaga Kerja Mikro', NULL, NULL),
(1, 2, 7, 3, 201, 1, 'Proses Pelaksanaan Pendidikan dan Pelatihan Keterampilan bagi Pencari Kerja berdasarkan Klaster Kompetensi', NULL, NULL),
(1, 2, 7, 3, 201, 2, 'Koordinasi Lintas Lembaga dan Kerja Sama dengan Sektor Swasta untuk Penyediaan Instruktur serta Sarana dan Prasarana Lembaga Pelatihan Kerja', NULL, NULL),
(1, 2, 7, 3, 201, 3, 'Pengadaan Sarana Pelatihan Kerja Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 3, 202, 1, 'Pembinaan Lembaga Pelatihan Kerja Swasta', NULL, NULL),
(1, 2, 7, 3, 203, 1, 'Penyediaan Sumber Daya Perizinan Lembaga Pelatihan Kerja secara Terintegrasi', NULL, NULL),
(1, 2, 7, 3, 204, 1, 'Pelaksanaan Konsultasi Produktivitas kepada Perusahaan Kecil', NULL, NULL),
(1, 2, 7, 3, 205, 1, 'Pengukuran Kompetensi dan Produktivitas Tenaga Kerja', NULL, NULL),
(1, 2, 7, 4, 201, 1, 'Penyediaan Sumber Daya Pelayanan antar Kerja', NULL, NULL),
(1, 2, 7, 4, 201, 2, 'Pelayanan antar Kerja', NULL, NULL),
(1, 2, 7, 4, 201, 3, 'Penyuluhan dan Bimbingan Jabatan bagi Pencari Kerja', NULL, NULL),
(1, 2, 7, 4, 201, 4, 'Penyelenggaraan Unit Layanan Disabilitas Ketenagakerjaan', NULL, NULL),
(1, 2, 7, 4, 201, 5, 'Perluasan Kesempatan Kerja', NULL, NULL),
(1, 2, 7, 4, 202, 1, 'Penyediaan Sumber Daya Perizinan LPTKS secara Terintegrasi', NULL, NULL),
(1, 2, 7, 4, 202, 2, 'Pengawasan dan Pengendalian LPTKS', NULL, NULL),
(1, 2, 7, 4, 203, 1, 'Pemeliharaan dan Operasional Aplikasi Informasi Pasar Kerja Online', NULL, NULL),
(1, 2, 7, 4, 203, 2, 'Pelayanan dan Penyediaan Informasi Pasar Kerja Online', NULL, NULL),
(1, 2, 7, 4, 203, 3, 'Job Fair/Bursa Kerja', NULL, NULL),
(1, 2, 7, 4, 204, 1, 'Peningkatan Pelindungan dan Kompetensi Calon Pekerja Migran Indonesia (PMI)/Pekerja Migran Indonesia (PMI)', NULL, NULL),
(1, 2, 7, 4, 204, 2, 'Penyediaan Layanan Terpadu pada Calon Pekerja Migran', NULL, NULL),
(1, 2, 7, 4, 204, 3, 'Pemberdayaan Pekerja Migran Indonesia Purna Penempatan', NULL, NULL),
(1, 2, 7, 4, 205, 1, 'Koordinasi dan Sinkronisasi Perpanjangan IMTA yang Lokasi Kerja dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 201, 1, 'Pengesahan Peraturan Perusahaan bagi Perusahaan', NULL, NULL),
(1, 2, 7, 5, 201, 2, 'Pendaftaran Perjanjian Kerjasama bagi Perusahaan', NULL, NULL),
(1, 2, 7, 5, 201, 3, 'Penyelenggaraan Pendataan dan Informasi Sarana Hubungan Industrial dan Jaminan Sosial Tenaga Kerja serta Pengupahan', NULL, NULL),
(1, 2, 7, 5, 202, 1, 'Pencegahan Perselisihan Hubungan Industrial, Mogok Kerja, dan Penutupan Perusahaan yang Berakibat/Berdampak pada Kepentingan di 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 202, 2, 'Penyelesaian Perselisihan Hubungan Industrial, Mogok Kerja, dan Penutupan Perusahaan yang Berakibat/Berdampak pada Kepentingan di 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 202, 3, 'Penyelenggaraan Verifikasi dan Rekapitulasi Keanggotaan pada Organisasi Pengusaha, Federasi dan Konfederasi Serikat Pekerja/Serikat Buruh serta Non Afiliasi', NULL, NULL),
(1, 2, 7, 5, 202, 4, 'Pelaksanaan Operasional Lembaga Kerjasama Tripartit Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 7, 5, 202, 5, 'Pengembangan Pelaksanaan Jaminan Sosial Tenaga Kerja dan Fasilitas Kesejahteraan Pekerja', NULL, NULL),
(1, 2, 8, 2, 201, 1, 'Koordinasi dan Sinkronisasi Perumusan Kebijakan Pelaksanaan PUG', NULL, NULL),
(1, 2, 8, 2, 201, 2, 'Koordinasi dan Sinkronisasi Pelaksanaan PUG Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 201, 3, 'Advokasi Kebijakan dan Pendampingan Pelaksanaan PUG termasuk PPRG', NULL, NULL),
(1, 2, 8, 2, 201, 4, 'Sosialisasi kebijakan Pelaksanaan PUG termasuk PPRG', NULL, NULL),
(1, 2, 8, 2, 202, 1, 'Sosialisasi Peningkatan Partisipasi Perempuan di Bidang Politik, Hukum, Sosial dan Ekonomi', NULL, NULL),
(1, 2, 8, 2, 202, 2, 'Advokasi Kebijakan dan Pendampingan Peningkatan Partisipasi Perempuan dan Politik, Hukum, Sosial dan Ekonomi', NULL, NULL),
(1, 2, 8, 2, 203, 1, 'Advokasi Kebijakan dan Pendampingan kepada Lembaga Penyedia Layanan Pemberdayaan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 203, 2, 'Peningkatan Kapasitas Sumber Daya Lembaga Penyedia Layanan Pemberdayaan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 2, 203, 3, 'Pengembangan Komunikasi, Informasi dan Edukasi (KIE) Pemberdayaan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 201, 1, 'Koordinasi dan Sinkronisasi Pelaksanaan Kebijakan, Program dan Kegiatan Pencegahan Kekerasan terhadap Perempuan Lingkup Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 201, 2, 'Advokasi Kebijakan dan Pendampingan Layanan Perlindungan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 202, 1, 'Penyediaan Layanan Pengaduan Masyarakat bagi Perempuan Korban Kekerasan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 202, 2, 'Koordinasi dan Sinkronisasi Pelaksanaan Penyediaan Layanan Rujukan Lanjutan bagi Perempuan Korban Kekerasan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 203, 1, 'Advokasi Kebijakan dan Pendampingan Penyediaan Sarana Prasarana Layanan bagi Perempuan Korban Kekerasan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 203, 2, 'Peningkatan Kapasitas Sumber Daya Lembaga Penyedia Layanan Penanganan bagi Perempuan Korban Kekerasan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 203, 3, 'Penyediaan Kebutuhan Spesifik bagi Perempuan dalam Situasi Darurat dan Kondisi Khusus Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 3, 203, 4, 'Penguatan Jejaring antar Lembaga Penyedia Layanan Perlindungan Perempuan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 201, 1, 'Advokasi Kebijakan dan Pendampingan untuk Mewujudkan KG dan Perlindungan Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 201, 2, 'Pelaksanaan Komunikasi, Informasi dan Edukasi KG dan Perlindungan Anak bagi Keluarga Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 201, 3, 'Pengembangan Kegiatan Masyarakat untuk Peningkatan Kualitas Keluarga Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 202, 1, 'Advokasi Kebijakan dan Pendampingan Pengembangan Lembaga Penyedia Layanan Peningkatan Kualitas Keluarga Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 202, 2, 'Peningkatan Kapasitas Sumber Daya Lembaga Penyedia Layanan Peningkatan Kualitas Keluarga Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 202, 3, 'Penguatan Jejaring antar Lembaga Penyedia Layanan Peningkatan Kualitas Keluarga Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 4, 203, 1, 'Pelaksanaan Penyediaan Layanan Komprehensif bagi Keluarga dalam Mewujudkan KG dan Perlindungan Anak yang Wilayah Kerjanya dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 5, 201, 1, 'Penyediaan Data Gender dan Anak di Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 5, 201, 2, 'Penyajian dan Pemanfaatan Data Gender dan Anak dalam Kelembagaan Data di Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 201, 1, 'Advokasi Kebijakan dan Pendampingan Pemenuhan Hak Anak pada Lembaga Pemerintah, Non Pemerintah, Media dan Dunia Usaha Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 201, 2, 'Koordinasi dan Sinkronisasi Pelembagaan Pemenuhan Hak Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 202, 1, 'Penyediaan Layanan Peningkatan Kualitas Hidup Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 202, 2, 'Koordinasi dan Sinkronisasi Pelaksanaan Pendampingan Peningkatan Kualitas Hidup Anak Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 202, 3, 'Pengembangan Komunikasi, Informasi dan Edukasi Pemenuhan Hak Anak bagi Lembaga Penyedia Layanan Peningkatan Kualitas Hidup Anak Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 6, 202, 4, 'Penguatan Jejaring antar Lembaga Penyedia Layanan Peningkatan Kualitas Hidup Anak Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 201, 1, 'Advokasi Kebijakan dan Pendampingan Pelaksanaan Kebijakan, Program dan Kegiatan Pencegahan Kekerasan terhadap Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 201, 2, 'Koordinasi dan Sinkronisasi Pencegahan Kekerasan terhadap Anak Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 202, 1, 'Penyediaan Layanan Pengaduan Masyarakat bagi Anak yang Memerlukan Perlindungan Khusus Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 202, 2, 'Koordinasi dan Sinkronisasi Pelaksanaan Pendampingan Anak yang Memerlukan Perlindungan Khusus Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 202, 3, 'Pengembangan Komunikasi, Informasi dan Edukasi Anak yang Memerlukan Perlindungan Khusus Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 202, 4, 'Penguatan Jejaring antar Lembaga Penyedia Layanan Anak yang Memerlukan Perlindungan Khusus Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 203, 1, 'Koordinasi dan Sinkronisasi Penyediaan Sarana Prasarana Layanan bagi Anak yang Memerlukan Perlindungan Khusus Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 203, 2, 'Koordinasi dan Sinkronisasi Peningkatan Kapasitas Sumber Daya Lembaga Penyedia Layanan Anak yang Memerlukan Perlindungan Khusus Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 8, 7, 203, 3, 'Koordinasi dan Sinkronisasi Penguatan Jejaring antar Lembaga Penyedia Layanan Anak yang Memerlukan Perlindungan Khusus Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 2, 201, 1, 'Penyediaan Infrastruktur Lumbung Pangan', NULL, NULL),
(1, 2, 9, 2, 201, 2, 'Penyediaan Infrastruktur Lantai Jemur', NULL, NULL),
(1, 2, 9, 2, 201, 3, 'Penyediaan Infrastruktur Pendukung Kemandirian Pangan Lainnya', NULL, NULL),
(1, 2, 9, 2, 201, 4, 'Koordinasi dan Sinkronisasi Penyediaan Infrastruktur Logistik', NULL, NULL),
(1, 2, 9, 2, 201, 5, 'Penyusunan Rencana dan Peta Jalan Kebutuhan Infrastruktur Pendukung Kemandirian Pangan', NULL, NULL),
(1, 2, 9, 3, 201, 1, 'Penyediaan Informasi Harga Pangan dan Neraca Bahan Makanan', NULL, NULL),
(1, 2, 9, 3, 201, 2, 'Penyediaan Pangan Berbasis Sumber Daya Lokal', NULL, NULL),
(1, 2, 9, 3, 201, 3, 'Koordinasi, Sinkronisasi dan Pelaksanaan Distribusi Pangan Pokok dan Pangan Lainnya', NULL, NULL),
(1, 2, 9, 3, 201, 4, 'Pemantauan Stok, Pasokan dan Harga Pangan', NULL, NULL),
(1, 2, 9, 3, 201, 5, 'Pengembangan Kelembagaan dan Jaringan Distribusi Pangan', NULL, NULL),
(1, 2, 9, 3, 201, 6, 'Pengembangan Kelembagaan Usaha Pangan Masyarakat dan Toko Tani Indonesia', NULL, NULL),
(1, 2, 9, 3, 202, 1, 'Koordinasi dan Sinkronisasi Pengendalian Cadangan Pangan Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 3, 202, 2, 'Penyusunan Rencana Kebutuhan Pangan Lokal', NULL, NULL),
(1, 2, 9, 3, 202, 3, 'Pengadaan Cadangan Pangan Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 3, 202, 4, 'Pemeliharaan Cadangan Pangan Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 3, 203, 1, 'Koordinasi dan Sinkronisasi Penentuan Harga Minimum Pangan Pokok Lokal', NULL, NULL),
(1, 2, 9, 3, 204, 1, 'Penyusunan dan Penetapan Target Konsumsi Pangan per Kapita per Tahun', NULL, NULL),
(1, 2, 9, 3, 204, 2, 'Pemberdayaan Masyarakat dalam Penganekaragaman Konsumsi Pangan Berbasis Sumber Daya Lokal', NULL, NULL),
(1, 2, 9, 3, 204, 3, 'Koordinasi dan Sinkronisasi Pemantauan dan Evaluasi Konsumsi per Kapita per Tahun', NULL, NULL),
(1, 2, 9, 4, 201, 1, 'Penyusunan, Pemutakhiran dan Analisis Peta Ketahanan dan Kerentanan Pangan', NULL, NULL),
(1, 2, 9, 4, 202, 1, 'Koordinasi dan Sinkronisasi Penanganan Kerawanan Pangan Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 4, 202, 2, 'Pelaksanaan Pengadaan, Pengelolaan, dan Penyaluran Cadangan Pangan pada Kerawanan Pangan yang Mencakup dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 1, 'Penguatan Kelembagaan Keamanan Pangan Segar Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 2, 'Sertifikasi Keamanan Pangan Segar Asal Tumbuhan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 3, 'Registrasi Keamanan Pangan Segar Asal Tumbuhan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 4, 'Rekomendasi Keamanan Pangan Segar Asal Tumbuhan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 9, 5, 201, 5, 'Penyediaan Sarana dan Prasarana Pengujian Mutu dan Keamanan Pangan Segar Asal Tumbuhan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 2, 201, 1, 'Koordinasi dan Sinkronisasi Pemberian Izin Lokasi Penanaman Modal dan Kemudahan Berusaha', NULL, NULL),
(1, 2, 10, 4, 201, 1, 'Inventarisasi Sengketa, Konflik, dan Perkara Pertanahan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 4, 201, 2, 'Mediasi Penyelesaian Sengketa Tanah Garapan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 5, 201, 1, 'Penetapan Daftar Masyarakat Penerima Santunan Tanah dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 5, 201, 2, 'Koordinasi dan Sinkronisasi Penyelesaian Masalah Ganti Kerugian dan Santunan Tanah untuk Pembangunan oleh Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 201, 1, 'Inventarisasi Subjek dan Objek Redistribusi Tanah', NULL, NULL),
(1, 2, 10, 6, 201, 2, 'Inventarisasi dan Rekomendasi Objek Redistribusi Tanah', NULL, NULL),
(1, 2, 10, 6, 201, 3, 'Koordinasi Penyelenggaraan Redistribusi Tanah Objek Reforma Agraria dalam 1 (satu) Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 201, 4, 'Koordinasi dan Sinkronisasi Penataan Akses dalam Pemanfaatan Redistribusi Tanah dalam 1 (satu) Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 202, 1, 'Inventarisasi Tanah Kelebihan Maksimum dan Tanah Absentee dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 6, 202, 2, 'Koordinasi Penetapan Ganti Kerugian Tanah Kelebihan Maksimum dan Tanah Absentee dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 7, 201, 1, 'Koordinasi dan Sinkronisasi Survei dan Pemetaan Batas Tanah Ulayat dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 7, 201, 2, 'Koordinasi dan Sinkronisasi Pengakuan dan Pengukuhan Masyarakat Hukum Adat dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 7, 201, 3, 'Penetapan Tanah Ulayat dalam 1 (satu) Daerah Kabupaten/Kota sesuai dengan Ketentuan Peraturan Perundang-Undangan yang Berlaku', NULL, NULL),
(1, 2, 10, 8, 201, 1, 'Koordinasi dan Sinkronisasi Penyelesaian Tanah Kosong di dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 8, 202, 1, 'Pelaksanaan Inventarisasi Tanah Kosong', NULL, NULL),
(1, 2, 10, 8, 202, 2, 'Pemanfaatan Tanah Kosong', NULL, NULL),
(1, 2, 10, 9, 201, 1, 'Koordinasi dan Sinkronisasi Pemberian Izin Membuka Tanah', NULL, NULL),
(1, 2, 10, 9, 201, 2, 'Pengendalian Pemanfaatan Tanah Negara', NULL, NULL),
(1, 2, 10, 10, 201, 1, 'Koordinasi dan Sinkronisasi Perencanaan Penggunaan Tanah', NULL, NULL),
(1, 2, 10, 10, 201, 2, 'Koordinasi Pemetaan Zona Nilai Tanah Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 10, 10, 201, 3, 'Koordinasi dan Sinkronisasi Pelaksanaan Konsolidasi Tanah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 2, 201, 1, 'Penyusunan dan Penetapan RPPLH Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 2, 201, 2, 'Pengendalian Pelaksanaan RPPLH Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 2, 202, 1, 'Pembuatan dan Pelaksanaan KLHS Rencana Tata Ruang', NULL, NULL),
(1, 2, 11, 2, 202, 2, 'Pembuatan dan Pelaksanaan KLHS RPJPD/RPJMD', NULL, NULL),
(1, 2, 11, 2, 202, 3, 'Pembuatan dan Pelaksanaan KLHS untuk KRP yang Berpotensi Menimbulkan Dampak/Resiko Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 3, 201, 1, 'Koordinasi, Sinkronisasi, dan Pelaksanaan Pencegahan Pencemaran Lingkungan Hidup Dilaksanakan terhadap Media Tanah, Air, Udara, dan Laut', NULL, NULL),
(1, 2, 11, 3, 201, 2, 'Koordinasi, Sinkronisasi dan Pelaksanaan Pengendalian Emisi Gas Rumah Kaca, Mitigasi dan Adaptasi Perubahan Iklim', NULL, NULL),
(1, 2, 11, 3, 201, 3, 'Pengelolaan Laboratorium Lingkungan Hidup Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 3, 202, 1, 'Pemberian Informasi Peringatan Pencemaran dan/atau Kerusakan Lingkungan Hidup pada Masyarakat', NULL, NULL),
(1, 2, 11, 3, 202, 2, 'Pengisolasian Pencemaran dan/atau Kerusakan Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 3, 202, 3, 'Penghentian Pencemaran dan/atau Kerusakan Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 3, 203, 1, 'Koordinasi dan Sinkronisasi Penghentian Sumber Pencemaran', NULL, NULL),
(1, 2, 11, 3, 203, 2, 'Koordinasi dan Sinkronisasi Pembersihan Unsur Pencemar', NULL, NULL),
(1, 2, 11, 3, 203, 3, 'Koordinasi, Sinkronisasi dan Pelaksanaan Remediasi', NULL, NULL),
(1, 2, 11, 3, 203, 4, 'Koordinasi, Sinkronisasi dan Pelaksanaan Rehabilitasi', NULL, NULL),
(1, 2, 11, 3, 203, 5, 'Koordinasi, Sinkronisasi dan Pelaksanaan Restorasi', NULL, NULL),
(1, 2, 11, 4, 201, 1, 'Penyusunan dan Penetapan Rencana Pengelolaan Keanekaragaman Hayati', NULL, NULL),
(1, 2, 11, 4, 201, 2, 'Pengelolaan Taman Keanekaragaman Hayati di Luar Kawasan Hutan', NULL, NULL),
(1, 2, 11, 4, 201, 3, 'Pengelolaan Kebun Raya', NULL, NULL),
(1, 2, 11, 4, 201, 4, 'Pengelolaan Ruang Terbuka Hijau (RTH)', NULL, NULL),
(1, 2, 11, 4, 201, 5, 'Pengelolaan Taman Keanekaragaman Hayati Lainnya', NULL, NULL),
(1, 2, 11, 4, 201, 6, 'Pengembangan Kapasitas Kelembagaan dan SDM dalam Pengelolaan Keanekaragaman Hayati', NULL, NULL),
(1, 2, 11, 4, 201, 7, 'Pengelolaan Sarana dan Prasarana Keanekaragaman Hayati', NULL, NULL),
(1, 2, 11, 5, 201, 1, 'Fasilitasi Pemenuhan Komitmen Izin Penyimpanan Sementara Limbah B3 Dilaksanakan melalui Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 11, 5, 201, 2, 'Verifikasi Lapangan untuk Memastikan Pemenuhan Persyaratan Administrasi dan Teknis Penyimpanan Sementara Limbah B3', NULL, NULL),
(1, 2, 11, 5, 202, 1, 'Fasilitasi Pemenuhan Komitmen Izin Pengumpulan Limbah B3 Dilaksanakan melalui Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 11, 5, 202, 2, 'Koordinasi dan Sinkronisasi Pengelolaan Limbah B3 dengan Pemerintah Provinsi dalam Rangka Pengangkutan, Pemanfaatan, Pengolahan, dan/atau Penimbunan', NULL, NULL),
(1, 2, 11, 6, 201, 1, 'Fasilitasi Pemenuhan Ketentuan dan Kewajiban Izin Lingkungan dan/atau Izin PPLH', NULL, NULL),
(1, 2, 11, 6, 201, 2, 'Pengembangan Kapasitas Pejabat Pengawas Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 6, 201, 3, 'Pengawasan Usaha dan/atau Kegiatan yang Izin Lingkungan Hidup, Izin PPLH yang Diterbitkan oleh Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 6, 201, 4, 'Koordinasi dan Sinkronisasi Pengawasan dan Penerapan Sanksi Upaya dan Rencana PPLH', NULL, NULL),
(1, 2, 11, 7, 201, 1, 'Koordinasi, Sinkronisasi, Penyediaan Data, dan Informasi Pengakuan Keberadaan MHA Kearifan Lokal atau Pengetahuan Tradisional dan Hak Kearifan Lokal atau Pengetahuan Tradisional dan Hak MHA terkait dengan PPLH', NULL, NULL),
(1, 2, 11, 7, 202, 1, 'Pemberdayaan, Kemitraan, Pendampingan, dan Penguatan Kelembagaan MHA, Kearifan Lokal, Pengetahuan Tradisional, dan Hak MHA terkait dengan PPLH', NULL, NULL),
(1, 2, 11, 8, 201, 1, 'Peningkatan Kapasitas dan Kompetensi Sumber Daya Manusia Bidang Lingkungan Hidup untuk Lembaga Kemasyarakatan', NULL, NULL),
(1, 2, 11, 8, 201, 2, 'Pendampingan Gerakan Peduli Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 8, 201, 3, 'Penyelenggaraan Penyuluhan dan Kampanye Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 9, 201, 1, 'Penilaian Kinerja Masyarakat/Lembaga Masyarakat/Dunia Usaha/Dunia Pendidikan/ Filantropi dalam Perlindungan dan Pengelolaan Lingkungan Hidup', NULL, NULL),
(1, 2, 11, 10, 201, 1, 'Pengelolaan Pengaduan Masyarakat terhadap PPLH Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 10, 201, 2, 'Koordinasi dan Sinkronisasi Penerapan Sanksi Administrasi, Penyelesaian Sengketa, dan/atau Penyidikan Lingkungan Hidup di Luar Pengadilan atau melalui Pengadilan', NULL, NULL),
(1, 2, 11, 11, 201, 1, 'Penyusunan Kebijakan dan Strategi Daerah Pengelolaan Sampah Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 11, 201, 2, 'Pengurangan Sampah dengan melakukan Pembatasan, Pendauran Ulang dan Pemanfaatan Kembali', NULL, NULL),
(1, 2, 11, 11, 201, 3, 'Penanganan Sampah dengan melakukan Pemilahan, Pengumpulan, Pengangkutan, Pengolahan, dan Pemrosesan Akhir Sampah di TPA/TPST/SPA Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 11, 201, 4, 'Peningkatan Peran serta Masyarakat dalam Pengelolaan Persampahan', NULL, NULL),
(1, 2, 11, 11, 201, 5, 'Koordinasi dan Sinkronisasi Penyediaan Sarana dan Prasarana Pengelolaan Persampahan', NULL, NULL),
(1, 2, 11, 11, 201, 6, 'Penyusunan Kebijakan Kerjasama Pengelolaan Persampahan', NULL, NULL),
(1, 2, 11, 11, 201, 7, 'Penyediaan Sarana dan Prasarana Pengelolaan Persampahan di TPA/TPST/SPA Kabupaten/Kota', NULL, NULL),
(1, 2, 11, 11, 202, 1, 'Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 11, 11, 203, 1, 'Fasilitasi Pemenuhan Ketentuan terkait Izin Usaha dan Standar Teknis Pengelolaan Sampah', NULL, NULL),
(1, 2, 11, 11, 203, 2, 'Penyusunan dan Pelaksanaan Penilaian Kinerja Pengelolaan Sampah', NULL, NULL),
(1, 2, 11, 11, 203, 3, 'Monitoring dan Evaluasi Pemenuhan Target dan Standar Pelayanan Pengelolaan Sampah', NULL, NULL),
(1, 2, 12, 2, 201, 1, 'Pendataan Penduduk Non Permanen dan Rentan Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 2, 201, 2, 'Pencatatan, Penatausahaan dan Penerbitan Dokumen atas Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 201, 3, 'Penyelesaian Masalah Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 201, 4, 'Peningkatan Pelayanan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 201, 5, 'Pencatatan, Penatausahaan dan Penerbitan Dokumen atas Pelaporan Peristiwa Kependudukan', NULL, NULL),
(1, 2, 12, 2, 201, 6, 'Pencatatan atas Pelaporan Peristiwa Kependudukan', NULL, NULL),
(1, 2, 12, 2, 201, 7, 'Penerbitan Dokumen atas Hasil Pelaporan Peristiwa Kependudukan', NULL, NULL),
(1, 2, 12, 2, 201, 8, 'Pengumpulan, Analisis, dan Diseminasi Data terkait Pendaftaran dan Perkembangan Penduduk', NULL, NULL),
(1, 2, 12, 2, 202, 1, 'Penyusunan Tata Cara Perencanaan, Pelaksanaan, Pemantauan, Evaluasi, Pengendalian, dan Pelaporan Penyelenggaraan Adminduk Terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 202, 2, 'Pengadaan Dokumen Kependudukan selain Blangko KTP-El, Formulir, dan Buku terkait Pendaftaran Penduduk sesuai dengan Kebutuhan', NULL, NULL),
(1, 2, 12, 2, 203, 1, 'Koordinasi Antar Lembaga Pemerintah dan Lembaga Non-Pemerintah di Kabupaten/Kota dalam Penertiban Pelayanan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 2, 'Pelayanan secara Aktif Pendaftaran Peristiwa Kependudukan dan Pencatatan Peristiwa Penting Terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 3, 'Fasilitasi Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 4, 'Penyelenggaraan Pemanfaatan Data Kependudukan Terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 5, 'Sosialisasi Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 6, 'Kerja Sama dengan Organisasi Kemasyarakatan dan Perguruan Tinggi terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 7, 'Komunikasi, Informasi, dan Edukasi Kepada Pemangku Kepentingan dan Masyarakat terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 203, 8, 'Penyajian Data Kependudukan yang Akurat dan dapat Dipertanggungjawabkan Terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 204, 1, 'Pengelolaan dan Pelaporan Penggunaan Blangko Dokumen Kependudukan, Formulir, dan Buku untuk Pelayanan Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 204, 2, 'Pembinaan dan Pengawasan terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 2, 204, 3, 'Bimbingan Teknis terkait Pendaftaran Penduduk', NULL, NULL),
(1, 2, 12, 3, 201, 1, 'Pencatatan, Penatausahaan dan Penerbitan Dokumen atas Pelaporan Peristiwa Penting', NULL, NULL),
(1, 2, 12, 3, 201, 2, 'Peningkatan dalam Pelayanan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 201, 3, 'Pengumpulan, Analisis, dan Diseminasi Data Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 201, 4, 'Penyusunan Tata Cara Perencanaan, Pelaksanaan, Pemantauan, Evaluasi, Pengendalian dan Pelaporan Penyelenggaraan Adminduk terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 201, 5, 'Pengadaan Dokumen Kependudukan selain Blangko KTP-El, Formulir, dan Buku terkait Pencatatan Sipil sesuai dengan Kebutuhan', NULL, NULL),
(1, 2, 12, 3, 202, 1, 'Koordinasi dengan Kantor Kementerian yang Menyelenggarakan Urusan Pemerintahan di Bidang Agama Kabupaten/Kota dan Pengadilan Agama yang Berkaitan dengan Pencatatan Nikah, Talak, Cerai, dan Rujuk bagi Penduduk yang Beragama Islam', NULL, NULL),
(1, 2, 12, 3, 202, 2, 'Koordinasi dengan Kantor Kementerian yang Menyelenggarakan Urusan Pemerintahan di Bidang Agama Kabupaten/Kota dalam Memelihara Hubungan Timbal Balik melalui Pembinaan Masing-Masing kepada Instansi Vertikal dan UPT Dinas Kependudukan dan Pencatatan Sipil Kabupaten/Kota', NULL, NULL),
(1, 2, 12, 3, 202, 3, 'Koordinasi Antar Lembaga Pemerintah dan Lembaga Non-Pemerintah di Kabupaten/Kota dalam Penertiban Pelayanan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 4, 'Pelayanan Secara Aktif Pendaftaran Peristiwa Kependudukan dan Pencatatan Peristiwa Penting terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 5, 'Penerimaan dan Permintaan Data Kependudukan dari Perwakilan Republik Indonesia Melalui Menteri Terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 6, 'Fasilitasi terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 7, 'Penyelenggaraan Pemanfaatan Data Kependudukan terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 8, 'Sosialisasi terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 9, 'Kerja Sama dengan Organisasi Kemasyarakatan dan Perguruan Tinggi terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 10, 'Komunikasi, Informasi, dan Edukasi kepada Pemangku Kepentingan dan Masyarakat terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 202, 11, 'Penyajian Data Kependudukan yang Akurat dan dapat Dipertanggungjawabkan terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 203, 1, 'Pengelolaan dan Pelaporan Penggunaan Blangko Dokumen Kependudukan, Formulir, dan Buku untuk Pelayanan Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 203, 2, 'Pembinaan dan Pengawasan terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 203, 3, 'Supervisi Bersama dengan Kantor Kementerian yang Menyelenggarakan Urusan Pemerintahan di Bidang Agama Kabupaten/Kota dan Pengadilan Agama mengenai Pelaporan Pencatatan Nikah, Talak, Cerai, dan Rujuk bagi Penduduk yang Beragama Islam dalam rangka Pembangunan Basis Data Kependudukan terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 3, 203, 4, 'Bimbingan Teknis terkait Pencatatan Sipil', NULL, NULL),
(1, 2, 12, 4, 201, 1, 'Pengolahan dan Penyajian Data Kependudukan', NULL, NULL),
(1, 2, 12, 4, 201, 2, 'Kerjasama Pemanfaatan Data Kependudukan', NULL, NULL),
(1, 2, 12, 4, 201, 3, 'Inventarisasi Data untuk Kepentingan Pembangunan Daerah', NULL, NULL),
(1, 2, 12, 4, 202, 1, 'Penyusunan Tata Cara Perencanaan, Pelaksanaan, Pemantauan, Evaluasi, Pengendalian, dan Pelaporan Penyelenggaraan Adminduk terkait Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 1, 'Koordinasi Antar Lembaga Pemerintah dan Lembaga Non-Pemerintah di Kabupaten/Kota dalam Penertiban Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 2, 'Penerimaan dan Permintaan Data Kependudukan dari Perwakilan Republik Indonesia melalui Menteri', NULL, NULL),
(1, 2, 12, 4, 203, 3, 'Fasilitasi terkait Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 4, 'Penyelenggaraan Pemanfaatan Data Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 5, 'Sosialisasi terkait Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 203, 6, 'Kerja Sama dengan Organisasi Kemasyarakatan dan Perguruan Tinggi', NULL, NULL),
(1, 2, 12, 4, 203, 7, 'Komunikasi, Informasi, dan Edukasi Kepada Pemangku Kepentingan dan Masyarakat', NULL, NULL),
(1, 2, 12, 4, 203, 8, 'Penyajian Data Kependudukan Yang Akurat dan dapat Dipertanggungjawabkan', NULL, NULL),
(1, 2, 12, 4, 204, 1, 'Pembinaan dan Pengawasan terkait Pengelolaan Informasi Administrasi Kependudukan', NULL, NULL),
(1, 2, 12, 4, 204, 2, 'Supervisi Bersama dengan Kantor Kementerian yang Menyelenggarakan Urusan Pemerintahan di Bidang Agama Kabupaten/Kota dan Pengadilan Agama mengenai Pelaporan Pencatatan Nikah, Talak, Cerai, dan Rujuk bagi Penduduk yang Beragama Islam dalam rangka Pembangunan Basis Data Kependudukan', NULL, NULL),
(1, 2, 12, 4, 204, 3, 'Bimbingan Teknis terkait Pengelolaan Informasi Administrasi Kependudukan dan Pendayagunaan Data Kependudukan', NULL, NULL),
(1, 2, 12, 5, 201, 1, 'Penyediaan Data Kependudukan Kabupaten/Kota', NULL, NULL),
(1, 2, 12, 5, 201, 2, 'Penyusunan Profil Data Perkembangan dan Proyeksi Kependudukan serta Kebutuhan yang lain', NULL, NULL),
(1, 2, 13, 2, 201, 1, 'Pembentukan, Penghapusan, Penggabungan, dan Perubahan Status Desa', NULL, NULL),
(1, 2, 13, 2, 201, 2, 'Fasilitasi Tata Wilayah Desa', NULL, NULL),
(1, 2, 13, 2, 201, 3, 'Fasilitasi Penataan Kewenangan Desa', NULL, NULL),
(1, 2, 13, 2, 201, 4, 'Fasilitasi Penamaan dan Kode Desa', NULL, NULL);
INSERT INTO `ref_sub_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `sub_kegiatan_kode`, `sub_kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 2, 201, 5, 'Fasilitasi Penetapan Kesatuan Masyarakat Hukum Adat dan Desa Adat Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 13, 2, 201, 6, 'Fasilitasi Sarana dan Prasarana Desa', NULL, NULL),
(1, 2, 13, 3, 201, 1, 'Fasilitasi Kerja Sama Antar Desa dalam Kabupaten/Kota', NULL, NULL),
(1, 2, 13, 3, 201, 2, 'Fasilitasi Kerja Sama Antar Desa dengan Pihak Ketiga dalam Kabupaten/Kota', NULL, NULL),
(1, 2, 13, 3, 201, 3, 'Fasilitasi Pembangunan Kawasan Perdesaan', NULL, NULL),
(1, 2, 13, 4, 201, 1, 'Fasilitasi Penyelenggaraan Administrasi Pemerintahan Desa', NULL, NULL),
(1, 2, 13, 4, 201, 2, 'Fasilitasi Penyusunan Produk Hukum Desa', NULL, NULL),
(1, 2, 13, 4, 201, 3, 'Fasilitasi Penyusunan Perencanaan Pembangunan Desa', NULL, NULL),
(1, 2, 13, 4, 201, 4, 'Fasilitasi Pengelolaan Keuangan Desa', NULL, NULL),
(1, 2, 13, 4, 201, 5, 'Pembinaan Peningkatan Kapasitas Aparatur Pemerintah Desa', NULL, NULL),
(1, 2, 13, 4, 201, 6, 'Fasilitasi Penyelenggaraan Musyawarah Desa', NULL, NULL),
(1, 2, 13, 4, 201, 7, 'Evaluasi dan Pengawasan Peraturan Desa', NULL, NULL),
(1, 2, 13, 4, 201, 8, 'Pembinaan dan Pemberdayaan BUM Desa dan Lembaga Kerja sama antar Desa', NULL, NULL),
(1, 2, 13, 4, 201, 9, 'Penyelenggaraan Pemilihan, Pengangkatan dan Pemberhentian Kepala Desa', NULL, NULL),
(1, 2, 13, 4, 201, 10, 'Fasilitasi Pengangkatan dan Pemberhentian Perangkat Desa', NULL, NULL),
(1, 2, 13, 4, 201, 11, 'Fasilitasi Penyusunan Profil Desa', NULL, NULL),
(1, 2, 13, 4, 201, 12, 'Fasilitasi Manajemen Pemerintahan Desa', NULL, NULL),
(1, 2, 13, 4, 201, 13, 'Fasilitasi Pengelolaan Aset Desa', NULL, NULL),
(1, 2, 13, 4, 201, 14, 'Pembinaan Peningkatan Kapasitas Anggota BPD', NULL, NULL),
(1, 2, 13, 4, 201, 15, 'Fasilitasi Penetapan dan Penegasan Batas Desa', NULL, NULL),
(1, 2, 13, 4, 201, 16, 'Fasilitasi Pembinaan Laporan Kepala Desa', NULL, NULL),
(1, 2, 13, 4, 201, 17, 'Pelaksanaan Penugasan Urusan/Kewenangan Kabupaten/Kota yang Dilaksanakan oleh Desa', NULL, NULL),
(1, 2, 13, 4, 201, 18, 'Fasilitasi Evaluasi Perkembangan Desa serta Lomba Desa dan Kelurahan', NULL, NULL),
(1, 2, 13, 5, 201, 1, 'Identifikasi dan Inventarisasi Masyarakat Hukum Adat', NULL, NULL),
(1, 2, 13, 5, 201, 2, 'Fasilitasi Penataan, Pemberdayaan dan Pendayagunaan Kelembagaan Lembaga Kemasyarakatan Desa/Kelurahan (RT, RW, PKK, Posyandu, LPM, dan Karang Taruna), Lembaga Adat Desa/Kelurahan dan Masyarakat Hukum Adat', NULL, NULL),
(1, 2, 13, 5, 201, 3, 'Peningkatan Kapasitas Kelembagaan Lembaga Kemasyarakatan Desa/Kelurahan (RT, RW, PKK, Posyandu, LPM, dan Karang Taruna), Lembaga Adat Desa/Kelurahan dan Masyarakat Hukum Adat', NULL, NULL),
(1, 2, 13, 5, 201, 4, 'Fasilitasi Penyediaan Sarana dan Prasarana Kelembagaan Lembaga Kemasyarakatan Desa/Kelurahan (RT, RW, PKK, Posyandu, LPM, dan Karang Taruna), Lembaga Adat Desa/Kelurahan dan Masyarakat Hukum Adat', NULL, NULL),
(1, 2, 13, 5, 201, 5, 'Fasilitasi Pengembangan Usaha Ekonomi Masyarakat dan Pemerintah Desa dalam Meningkatkan Pendapatan Asli Desa', NULL, NULL),
(1, 2, 13, 5, 201, 6, 'Fasilitasi Pemerintah Desa dalam Pemanfaatan Teknologi Tepat Guna', NULL, NULL),
(1, 2, 13, 5, 201, 7, 'Fasilitasi Bulan Bhakti Gotong Royong Masyarakat', NULL, NULL),
(1, 2, 13, 5, 201, 8, 'Fasilitasi Penyelenggaraan Ketentraman, Ketertiban dan Perlindungan Masyarakat Desa', NULL, NULL),
(1, 2, 13, 5, 201, 9, 'Fasilitasi Tim Penggerak PKK dalam Penyelenggaraan Gerakan Pemberdayaan Masyarakat dan Kesejahteraan Keluarga', NULL, NULL),
(1, 2, 14, 2, 201, 1, 'Penyerasian Kebijakan Pembangunan Daerah Kabupaten/Kota terhadap Kependudukan, Keluarga Berencana dan Pembangunan Keluarga (Program KKBPK)', NULL, NULL),
(1, 2, 14, 2, 201, 2, 'Penyusunan dan Pemanfaatan Grand Design Pembangunan Kependudukan (GDPK) Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 2, 201, 3, 'Dukungan Pelaksanaan Survei/Pendataan Indeks Pembangunan Berwawasan Kependudukan', NULL, NULL),
(1, 2, 14, 2, 201, 4, 'Pelaksanaan Survei/Pendataan Indeks Pengetahuan Masyarakat tentang Kependudukan', NULL, NULL),
(1, 2, 14, 2, 201, 5, 'Penguatan Kerjasama Pelaksanaan Pendidikan Kependudukan Jalur Pendidikan Formal', NULL, NULL),
(1, 2, 14, 2, 201, 6, 'Penguatan Kerjasama Pelaksanaan Pendidikan Kependudukan Jalur Pendidikan Nonformal', NULL, NULL),
(1, 2, 14, 2, 201, 7, 'Penyediaan dan Pengembangan Materi Pendidikan Kependudukan Jalur Pendidikan Formal sesuai Isu Lokal Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 2, 201, 8, 'Penyediaan dan Pengembangan Materi Pendidikan Kependudukan Jalur Pendidikan Nonformal sesuai Isu Lokal Kabupaten/Kota', NULL, NULL),
(1, 2, 14, 2, 201, 9, 'Advokasi, Sosialisasi dan Fasilitasi Pelaksanaan Pendidikan Kependudukan Jalur Formal di Satuan Pendidikan Jenjang SD/MI dan SLTP/MTS, Jalur Nonformal dan Informal', NULL, NULL),
(1, 2, 14, 2, 201, 10, 'Implementasi Pendidikan Kependudukan Jalur Pendidikan Formal dan Nonformal', NULL, NULL),
(1, 2, 14, 2, 201, 11, 'Implementasi Pendidikan Kependudukan Jalur Informal di Kelompok Kegiatan Masyarakat Binaan', NULL, NULL),
(1, 2, 14, 2, 201, 12, 'Advokasi Tentang Pemanfaatan Kajian Dampak Kependudukan Beserta Model Solusi Strategis sebagai Peringatan Dini Dampak Kependudukan kepada Pemangku Kepentingan', NULL, NULL),
(1, 2, 14, 2, 201, 13, 'Sosialisasi Tentang Pemanfaatan Kajian Dampak Kependudukan Beserta Model Solusi Strategis sebagai Peringatan Dini Dampak Kependudukan Kepada Pemangku Kepentingan', NULL, NULL),
(1, 2, 14, 2, 201, 14, 'Pelaksanaan Sarasehan Hasil Pemutakhiran Data Keluarga', NULL, NULL),
(1, 2, 14, 2, 201, 15, 'Pelaksanaan Rapat Pengendalian Program KKBPK', NULL, NULL),
(1, 2, 14, 2, 202, 1, 'Perumusan Parameter Kependudukan', NULL, NULL),
(1, 2, 14, 2, 202, 2, 'Penyediaan dan Pengolahan Data Kependudukan', NULL, NULL),
(1, 2, 14, 2, 202, 3, 'Penyusunan Profil Kependudukan, Keluarga Berencana dan Pembangunan Keluarga', NULL, NULL),
(1, 2, 14, 2, 202, 4, 'Pemetaan Kependudukan', NULL, NULL),
(1, 2, 14, 2, 202, 5, 'Penyusunan Kajian Dampak Kependudukan', NULL, NULL),
(1, 2, 14, 2, 202, 6, 'Pengembangan Model Solusi Strategis Pengendalian Dampak Kependudukan', NULL, NULL),
(1, 2, 14, 2, 202, 7, 'Pengukuran dan Perhitungan Indikator Kerentanan Dampak Kependudukan (Early Warning System/Peringatan Dini)', NULL, NULL),
(1, 2, 14, 2, 202, 8, 'Membentuk Rumah Data Kependudukan di Kampung KB Untuk Memperkuat Integrasi Program KKBPK di Sektor Lain', NULL, NULL),
(1, 2, 14, 2, 202, 9, 'Pembinaan dan Pengawasan Penyelenggaraan Sistem Informasi Keluarga', NULL, NULL),
(1, 2, 14, 2, 202, 10, 'Pemanfaatan Data Hasil Pemutakhiran Data Keluarga', NULL, NULL),
(1, 2, 14, 2, 202, 11, 'Penyediaan Data dan Informasi Keluarga', NULL, NULL),
(1, 2, 14, 2, 202, 12, 'Pencatatan dan Pengumpulan Data Keluarga', NULL, NULL),
(1, 2, 14, 2, 202, 13, 'Pengolahan dan Pelaporan Data Pengendalian Lapangan dan Pelayanan KB', NULL, NULL),
(1, 2, 14, 2, 202, 14, 'Pembinaan dan Pengawasan Pencatatan dan Pelaporan Program KKBPK', NULL, NULL),
(1, 2, 14, 3, 201, 1, 'Advokasi Program KKBPK kepada Stakeholders dan Mitra Kerja', NULL, NULL),
(1, 2, 14, 3, 201, 2, 'Komunikasi, Informasi dan Edukasi (KIE) Program KKBPK sesuai Kearifan Budaya Lokal', NULL, NULL),
(1, 2, 14, 3, 201, 3, 'Penyediaan dan Distribusi Sarana KIE Program KKBPK', NULL, NULL),
(1, 2, 14, 3, 201, 4, 'Promosi dan KIE Program KKBPK Melalui Media Massa Cetak dan Elektronik serta Media Luar Ruang', NULL, NULL),
(1, 2, 14, 3, 201, 5, 'Penggunaan Media Massa Cetak, Elektronik dan Media Lainnya sesuai Kearifan Budaya Lokal Dalam Pencitraan Program KKBPK', NULL, NULL),
(1, 2, 14, 3, 201, 6, 'Pelaksanaan Mekanisme Operasional Program KKBPK melalui Rapat Koordinasi Kecamatan (Rakorcam), Rapat Koordinasi Desa (Rakordes), dan Mini Lokakarya (Minilok)', NULL, NULL),
(1, 2, 14, 3, 201, 7, 'Pengelolaan Operasional dan Sarana di Balai Penyuluhan KKBPK', NULL, NULL),
(1, 2, 14, 3, 201, 8, 'Pengendalian Program KKBPK', NULL, NULL),
(1, 2, 14, 3, 202, 1, 'Pembinaan IMP dan Program KKBPK di Lini Lapangan oleh PKB/PLKB', NULL, NULL),
(1, 2, 14, 3, 202, 2, 'Penyediaan Sarana Pendukung Operasional PKB/PLKB', NULL, NULL),
(1, 2, 14, 3, 202, 3, 'Penguatan Pelaksanaan Penyuluhan, Penggerakan, Pelayanan dan Pengembangan Program KKBPK untuk Petugas Keluarga Berencana/Penyuluh Lapangan Keluarga Berencana (PKB/PLKB)', NULL, NULL),
(1, 2, 14, 3, 202, 4, 'Penggerakan Kader Institusi Masyarakat Pedesaan (IMP)', NULL, NULL),
(1, 2, 14, 3, 203, 1, 'Pengendalian Pendistribusian Alat dan Obat Kontrasepsi dan Sarana Penunjang Pelayanan KB ke Fasilitas Kesehatan Termasuk Jaringan dan Jejaringnya', NULL, NULL),
(1, 2, 14, 3, 203, 2, 'Peningkatan Kompetensi Pengelola dan Petugas Logistik Alat dan Obat Kontrasepsi serta Sarana Penunjang Pelayanan KB', NULL, NULL),
(1, 2, 14, 3, 203, 3, 'Peningkatan Kesertaan Penggunaan Metode Kontrasepsi Jangka Panjang (MKJP)', NULL, NULL),
(1, 2, 14, 3, 203, 4, 'Penyediaan Dukungan Ayoman Komplikasi Berat dan Kegagalan Penggunaan MKJP', NULL, NULL),
(1, 2, 14, 3, 203, 5, 'Penyusunan Rencana Kebutuhan Alat dan Obat Kontrasepsi (Alokon) dan Sarana Penunjang Pelayanan KB', NULL, NULL),
(1, 2, 14, 3, 203, 6, 'Penyediaan Sarana Penunjang Pelayanan KB', NULL, NULL),
(1, 2, 14, 3, 203, 7, 'Pembinaan Pasca Pelayanan bagi Peserta KB', NULL, NULL),
(1, 2, 14, 3, 203, 8, 'Pembinaan Pelayanan Keluarga Berencana dan Kesehatan Reproduksi di Fasilitas Kesehatan termasuk Jaringan dan Jejaringnya', NULL, NULL),
(1, 2, 14, 3, 203, 9, 'Promosi dan Konseling Kesehatan Reproduksi, serta Hak-Hak Reproduksi di Fasilitas Kesehatan dan Kelompok Kegiatan', NULL, NULL),
(1, 2, 14, 3, 203, 10, 'Peningkatan Kompetensi Tenaga Pelayanan Keluarga Berencana dan Kesehatan Reproduksi', NULL, NULL),
(1, 2, 14, 3, 203, 11, 'Dukungan Operasional Pelayanan KB Bergerak', NULL, NULL),
(1, 2, 14, 3, 203, 12, 'Promosi dan Konseling KB Pasca Persalinan dan Pasca Keguguran', NULL, NULL),
(1, 2, 14, 3, 203, 13, 'Peningkatan Kesertaan KB Pria', NULL, NULL),
(1, 2, 14, 3, 204, 1, 'Penguatan Peran serta Organisasi Kemasyarakatan dan Mitra Kerja Lainnya dalam Pelaksanaan Pelayanan dan Pembinaan Kesertaan Ber-KB', NULL, NULL),
(1, 2, 14, 3, 204, 2, 'Integrasi Pembangunan Lintas Sektor di Kampung KB', NULL, NULL),
(1, 2, 14, 3, 204, 3, 'Pelaksanaan dan Pengelolaan Program KKBPK di Kampung KB', NULL, NULL),
(1, 2, 14, 3, 204, 4, 'Pembinaan Terpadu Kampung KB', NULL, NULL),
(1, 2, 14, 4, 201, 1, 'Pembentukan Kelompok Ketahanan dan Kesejahteraan Keluarga (Bina Keluarga Balita (BKB), Bina Keluarga Remaja (BKR), Pusat Informasi dan Konseling Remaja (PIK-R) Bina Keluarga Lansia (BKL), Unit Peningkatan Pendapatan Keluarga Sejahtera (UPPKS) dan Pemberdayaan Ekonomi Keluarga)', NULL, NULL),
(1, 2, 14, 4, 201, 2, 'Pengadaan Sarana Kelompok Kegiatan Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 3, 'Orientasi dan Pelatihan Teknis Pengelola Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 4, 'Orientasi/Pelatihan Teknis Pelaksana/Kader Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 5, 'Penyediaan Biaya Operasional bagi Pengelola dan Pelaksana (Kader) Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 6, 'Penyediaan Biaya Operasional bagi Kelompok Kegiatan Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 7, 'Promosi dan Sosialisasi Kelompok Kegiatan Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 201, 8, 'Promosi dan Sosialisasi Kelompok Kegiatan Ketahanan dan Kesejahteraan Keluarga (Menjadi Orang Tua Hebat, Generasi Berencana, Kelanjutusiaan serta Pengelolaan Keuangan Keluarga)', NULL, NULL),
(1, 2, 14, 4, 201, 9, 'Penyerasian Kebijakan dalam Pelaksanaan Program yang Mendukung Tercapainya IPK', NULL, NULL),
(1, 2, 14, 4, 201, 10, 'Penyediaan dan Pengembangan Materi IPK', NULL, NULL),
(1, 2, 14, 4, 201, 11, 'Advokasi dan Promosi IPK', NULL, NULL),
(1, 2, 14, 4, 201, 12, 'Sosialisasi IPK', NULL, NULL),
(1, 2, 14, 4, 201, 13, 'Pelaksanaan Koordinasi Evaluasi Pencapaian IPK', NULL, NULL),
(1, 2, 14, 4, 202, 1, 'Penguatan Kebijakan Daerah dalam Rangka Pemberdayaan dan Peningkatan Peran Serta Organisasi Kemasyarakatan dan Mitra Kerja Lainnya dalam Pembinaan Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 202, 2, 'Pendayagunaan Mitra Kerja dan Organisasi Kemasyarakatan dalam Penggerakan Operasional Pembinaan Program Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 202, 3, 'Pelaksanaan Peningkatan Kapasitas Mitra dan Organisasi Kemasyarakatan dalam Pengelolaan Program Ketahanan dan Kesejahteraan Keluarga (BKB, BKR, BKL, PPPKS, PIK-R dan Pemberdayaan Ekonomi Keluarga/UPPKS)', NULL, NULL),
(1, 2, 14, 4, 202, 4, 'Promosi dan Sosialisasi Program Ketahanan dan Kesejahteraan Keluarga bagi Mitra Kerja', NULL, NULL),
(1, 2, 15, 2, 201, 1, 'Pelaksanaan Penyusunan Rencana Induk Jaringan LLAJ Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 201, 2, 'Penetapan Kebijakan dan Sosialisasi Rencana Induk Jaringan LLAJ Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 201, 3, 'Pengendalian Pelaksanaan Rencana Induk Jaringan LLAJ Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 202, 1, 'Pembangunan Prasarana Jalan di Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 202, 2, 'Penyediaan Perlengkapan Jalan di Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 202, 3, 'Rehabilitasi dan Pemeliharaan Prasarana Jalan', NULL, NULL),
(1, 2, 15, 2, 202, 4, 'Rehabilitasi dan Pemeliharaan Perlengkapan Jalan', NULL, NULL),
(1, 2, 15, 2, 203, 1, 'Penyusunan Rencana Pembangunan Terminal Penumpang Tipe C', NULL, NULL),
(1, 2, 15, 2, 203, 2, 'Pembangunan Gedung Terminal', NULL, NULL),
(1, 2, 15, 2, 203, 3, 'Pengembangan Sarana dan Prasarana Terminal', NULL, NULL),
(1, 2, 15, 2, 203, 4, 'Rehabilitasi dan Pemeliharaan Terminal (Fasilitas Utama dan Pendukung)', NULL, NULL),
(1, 2, 15, 2, 203, 5, 'Peningkatan Kapasitas SDM Pengelola Terminal Tipe C', NULL, NULL),
(1, 2, 15, 2, 204, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Penyelenggaraan dan Pembangunan Fasilitas Parkir Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 2, 204, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Penyelenggaraan dan Pembangunan Fasilitas Parkir Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 205, 1, 'Penyediaan Sarana dan Prasarana Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 2, 'Peningkatan Kapasitas Sumber Daya Manusia Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 3, 'Registrasi Kendaraan Wajib Uji Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 4, 'Penyediaan Bukti Lulus Uji Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 5, 'Sosialisasi Standar Operasional Prosedur Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 6, 'Identifikasi dan Analisis Potensi Jumlah Kendaraan Bermotor Wajib Uji', NULL, NULL),
(1, 2, 15, 2, 205, 7, 'Pemeliharaan Sarana dan Prasarana Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 8, 'Koordinasi Penyelenggaraan Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 9, 'Penetapan Tarif Retribusi Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 205, 10, 'Monitoring dan Evaluasi Penyelenggaraan Pengujian Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 206, 1, 'Penataan Manajemen dan Rekayasa Lalu Lintas Untuk Jaringan Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 206, 2, 'Pengadaan, Pemasangan, Perbaikan dan Pemeliharaan Perlengkapan Jalan dalam rangka Manajemen dan Rekayasa Lalu Lintas', NULL, NULL),
(1, 2, 15, 2, 206, 3, 'Uji Coba dan Sosialisasi Pelaksanaan Manajemen dan Rekayasa Lalu Lintas untuk Jaringan Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 206, 4, 'Pengawasan dan Pengendalian Efektivitas Pelaksanaan Kebijakan untuk Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 206, 5, 'Forum Lalu Lintas dan Angkutan Jalan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 207, 1, 'Penetapan Kebijakan Tata Kelola Andalalin', NULL, NULL),
(1, 2, 15, 2, 207, 2, 'Peningkatan Kapasitas Penilai Andalalin', NULL, NULL),
(1, 2, 15, 2, 207, 3, 'Koordinasi dan Sinkronisasi Penilaian Hasil Andalalin', NULL, NULL),
(1, 2, 15, 2, 207, 4, 'Pengawasan Pelaksanaan Rekomendasi Andalalin', NULL, NULL),
(1, 2, 15, 2, 208, 1, 'Peningkatan Kapasitas Auditor dan Inspektor LLAJ', NULL, NULL),
(1, 2, 15, 2, 208, 2, 'Pelaksanaan Inspeksi, Audit dan Pemantauan Unit Pelaksana Uji Berkala Kendaraan Bermotor', NULL, NULL),
(1, 2, 15, 2, 208, 3, 'Pelaksanaan Inspeksi, Audit dan Pemantauan Terminal', NULL, NULL),
(1, 2, 15, 2, 208, 4, 'Pelaksanaan Inspeksi, Audit dan Pemantauan Pemenuhan Persyaratan Penyelenggaraan Kompetensi Pengemudi Kendaraan Bermotor Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 208, 5, 'Pelaksanaan Inspeksi, Audit dan Pemantauan Sistem Manajemen Keselamatan Perusahaan Angkutan Umum', NULL, NULL),
(1, 2, 15, 2, 209, 1, 'Penyediaan Angkutan Umum untuk Jasa Angkutan Orang dan/atau Barang antar Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 209, 2, 'Pengendalian dan Pengawasan Ketersediaan Angkutan Umum untuk Jasa angkutan Orang dan/atau Barang Antar Kota dalam 1 (satu) Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 210, 1, 'Perumusan Kebijakan Penetapan Kawasan Perkotaan untuk Angkutan Perkotaan Kewenangan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 210, 2, 'Sosialisasi dan Uji Coba Pelaksanaan Kebijakan Penetapan Kawasan Perkotaan untuk Angkutan Perkotaan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 211, 1, 'Pelaksanaan Penyusunan Rencana Umum Jaringan Trayek Perkotaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 211, 2, 'Penetapan Kebijakan dan Sosialisasi Rencana Umum Jaringan Trayek Perkotaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 211, 3, 'Pengendalian Pelaksanaan Rencana Umum Jaringan Trayek Perkotaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 212, 1, 'Perumusan Kebijakan Rencana Umum Jaringan Trayek Pedesaan Kewenangan kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 212, 2, 'Sosialisasi dan Uji Coba Pelaksanaan Kebijakan Rencana Umum Jaringan Trayek Pedesaan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 213, 1, 'Perumusan Kebijakan Penetapan Wilayah Operasi Angkutan Orang dengan Menggunakan Taksi dalam Kawasan Perkotaan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 213, 2, 'Sosialisasi dan Uji Coba Pelaksanaan Kebijakan Penetapan Wilayah Operasi Angkutan Orang dengan Menggunakan Taksi dalam Kawasan Perkotaan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 214, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Penyelenggaraan Angkutan Orang dalam Trayek Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 2, 214, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Penyelenggaraan Angkutan Orang dalam Trayek Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 215, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Penyelenggaraan Angkutan Taksi yang Wilayah Operasinya Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 2, 215, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Penyelenggaraan Angkutan Taksi yang Wilayah Operasinya Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 216, 1, 'Analisis Tarif Kelas Ekonomi Angkutan Orang dan Angkutan Perkotaan dan Perdesaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 216, 2, 'Penyediaan Data dan Informasi Tarif Kelas Ekonomi Angkutan Orang dan Angkutan Perkotaan dan Perdesaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 2, 216, 3, 'Pengendalian dan Pengawasan Tarif Kelas Ekonomi Angkutan Orang dan Angkutan Perkotaan dan Perdesaan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 201, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha Angkutan Laut Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 201, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Angkutan Laut Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 202, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Angkutan Laut Pelayaran Rakyat Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 202, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Angkutan Laut Pelayaran Rakyat Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 203, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha Penyelenggaraan Angkutan Sungai dan Danau sesuai dengan Domisili Orang Perseorangan Warga Negara Indonesia atau Badan Usaha Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 203, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Penyelenggaraan Angkutan Sungai dan Danau sesuai dengan Domisili Orang Perseorangan Warga Negara Indonesia atau Badan Usaha Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 204, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pelabuhan Sungai dan Danau yang Melayani Trayek dalam 1 Daerah Kabupaten/Kota Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 204, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Pelabuhan Sungai dan Danau yang Melayani Trayek dalam 1 Daerah Kabupaten/Kota Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 205, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha Penyelenggaraan Angkutan Penyeberangan sesuai dengan Domisili Badan Usaha kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 205, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Penyelenggaraan Angkutan Penyeberangan sesuai dengan Domisili Badan Usaha Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 206, 1, 'Penyediaan Data dan Informasi Jaringan Lintas Penyeberangan dan Persetujuan Pengoperasian Kapal dalam Daerah Kabupaten/Kota yang Terletak pada Jaringan Jalan Kabupaten/Kota dan/atau Jaringan Jalur Kereta Api Kabupaten/Kota dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 206, 2, 'Pengendalian dan Pengawasan Jaringan Lintas Penyeberangan dan Persetujuan Pengoperasian Kapal dalam Daerah Kabupaten/Kota yang Terletak pada Jaringan Jalan Kabupaten/Kota dan/atau Jaringan Jalur Kereta Api Kabupaten/Kota dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 207, 1, 'Penyediaan Data dan Informasi Jaringan Lintas Penyeberangan dan Persetujuan Pengoperasian untuk Kapal yang Melayani Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 207, 2, 'Pengendalian dan Pengawasan Jaringan Lintas Penyeberangan dan Persetujuan Pengoperasian untuk Kapal yang Melayani Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 208, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha Jasa terkait dengan Perawatan dan Perbaikan Kapal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 208, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Jasa terkait dengan Perawatan dan Perbaikan Kapal', NULL, NULL),
(1, 2, 15, 3, 209, 1, 'Analisis Tarif Angkutan Penyeberangan Penumpang Kelas Ekonomi dan Kendaraan beserta Muatannya pada Lintas Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 209, 2, 'Penyediaan Data dan Informasi Tarif Angkutan Penyeberangan Penumpang Kelas Ekonomi dan Kendaraan beserta Muatannya pada Lintas Penyeberangan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 209, 3, 'Pengendalian dan Pengawasan Tarif Angkutan Penyeberangan Penumpang Kelas Ekonomi dan Kendaraan beserta Muatannya pada Lintas Penyeberangan Antar Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 3, 210, 1, 'Pelaksanaan Penyusunan Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 210, 2, 'Penetapan Kebijakan dan Sosialisasi Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 210, 3, 'Pengendalian Pelaksanaan Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 211, 1, 'Pelaksanaan Penyusunan Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) untuk Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 211, 2, 'Penetapan Kebijakan dan Sosialisasi Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) untuk Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 211, 3, 'Pengendalian Pelaksanaan Rencana Induk dan Daerah Lingkungan Kerja (DLKR)/Daerah Lingkungan Kepentingan (DLKP) untuk Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 212, 1, 'Fasilitasi Pemenuhan Persyaratan Perizinan Pembangunan dan Pengoperasian Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 212, 2, 'Pembangunan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 212, 3, 'Pengoperasian dan Pemeliharaan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 212, 4, 'Pengawasan Pengoperasian Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 213, 1, 'Fasilitasi Pemenuhan Persyaratan Perizinan Pembangunan dan Pengoperasian Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 213, 2, 'Pembangunan Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 213, 3, 'Pengoperasian dan Pemeliharaan Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 213, 4, 'Pengawasan Pengoperasian Pelabuhan Sungai dan Danau', NULL, NULL),
(1, 2, 15, 3, 214, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha untuk Badan Usaha Pelabuhan di Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 214, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin untuk Badan Usaha Pelabuhan di Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 215, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pengembangan Pelabuhan untuk Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 215, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Pengembangan Pelabuhan untuk Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 216, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pengoperasian Pelabuhan Selama 24 Jam untuk Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 216, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha Pengoperasian Pelabuhan Selama 24 Jam untuk Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 217, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pekerjaan Pengerukan di Wilayah Perairan Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 217, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Pekerjaan Pengerukan di Wilayah Perairan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 218, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Reklamasi di Wilayah Perairan Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 218, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Reklamasi di Wilayah Perairan Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 3, 219, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pengelolaan Terminal untuk Kepentingan Sendiri (TUKS) di dalam DLKR/DLKP Pelabuhan Pengumpan Lokal dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 15, 3, 219, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Pengelolaan Terminal untuk Kepentingan Sendiri (TUKS) di dalam DLKR/DLKP Pelabuhan Pengumpan Lokal', NULL, NULL),
(1, 2, 15, 4, 201, 1, 'Fasilitasi Penerbitan Izin Mendirikan Tempat Tinggal Landas dan Mendarat Helikopter', NULL, NULL),
(1, 2, 15, 5, 201, 1, 'Pelaksanaan Penyusunan Rencana Induk Perkeretaapian', NULL, NULL),
(1, 2, 15, 5, 201, 2, 'Penetapan Kebijakan dan Sosialisasi Rencana Induk Perkeretaapian', NULL, NULL),
(1, 2, 15, 5, 201, 3, 'Pengendalian Pelaksanaan Rencana Induk Perkeretaapian', NULL, NULL),
(1, 2, 15, 5, 202, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Usaha, Izin Pembangunan dan Izin Operasi Prasarana Perkeretaapian Umum yang Jaringan Jalurnya dalam 1 (satu) Daerah Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 5, 202, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Usaha, Izin Pembangunan dan Izin Operasi Prasarana Perkeretaapian Umum yang Jaringan Jalurnya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 203, 1, 'Perumusan kebijakan Penetapan Jaringan Jalur Kereta Api yang Jaringannya Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 203, 2, 'Sosialisasi dan Uji Coba Pelaksanaan Kebijakan Penetapan Jaringan Jalur Kereta Api yang Jaringannya Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 204, 1, 'Perumusan Kebijakan Penetapan Kelas Stasiun untuk Stasiun pada Jaringan Jalur Kereta Api Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 205, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Operasi Sarana Perkeretaapian Umum yang Jaringan Jalurnya Menjadi Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 5, 205, 2, 'Koordinasi dan Sinkronisasi Pengawasan pelaksanaan Izin Operasi Sarana Perkeretaapian Umum yang Jaringan Jalurnya Menjadi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 206, 1, 'Perumusan Kebijakan Penetapan Jaringan Pelayanan Perkeretaapian pada Jaringan Jalur Perkeretaapian Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 206, 2, 'Sosialisasi dan Uji Coba Pelaksanaan Kebijakan Penetapan Jaringan Pelayanan Perkeretaapian pada Jaringan Jalur Perkeretaapian Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 15, 5, 207, 1, 'Fasilitasi Pemenuhan Persyaratan Perolehan Izin Pengadaan atau Pembangunan Perkeretaapian Khusus, Izin Operasi, dan Penetapan Jalur Kereta Api Khusus yang Jaringannya menjadi Kewenangan Kabupaten/Kota dalam Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 2, 15, 5, 207, 2, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Izin Pengadaan atau Pembangunan Perkeretaapian Khusus, Izin Operasi, dan Penetapan Jalur Kereta Api Khusus yang Jaringannya menjadi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 2, 201, 1, 'Perumusan Kebijakan Teknis Bidang Informasi dan Komunikasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 2, 'Monitoring Opini dan Aspirasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 3, 'Monitoring Informasi dan Penetapan Agenda Prioritas Komunikasi Pemerintah Daerah', NULL, NULL),
(1, 2, 16, 2, 201, 4, 'Pengelolaan Konten dan Perencanaan Media Komunikasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 5, 'Pengelolaan Media Komunikasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 6, 'Pelayanan Informasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 7, 'Layanan Hubungan Media', NULL, NULL),
(1, 2, 16, 2, 201, 8, 'Kemitraan dengan Pemangku Kepentingan', NULL, NULL),
(1, 2, 16, 2, 201, 9, 'Manajemen Komunikasi Krisis', NULL, NULL),
(1, 2, 16, 2, 201, 10, 'Penguatan Kapasitas Sumber Daya Komunikasi Publik', NULL, NULL),
(1, 2, 16, 2, 201, 11, 'Penguatan Tata Kelola Komisi Informasi di Daerah', NULL, NULL),
(1, 2, 16, 2, 201, 12, 'Penyelenggaraan Hubungan Masyarakat, Media dan Kemitraan Komunitas', NULL, NULL),
(1, 2, 16, 2, 201, 13, 'Penyediaan/Pengadaan Sarana dan Prasarana Pendukung Informasi dan Komunikkasi Publik Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 201, 1, 'Pendaftaran Nama Domain Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 201, 2, 'Penatalaksanaan dan Pengawasan Nama Domain dan Sub Domain dalam Penyelenggaraan Pemerintahan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 201, 3, 'Penyelenggaraan Sistem Jaringan Intra Pemerintah Daerah', NULL, NULL),
(1, 2, 16, 3, 202, 1, 'Penatalaksanaan dan Pengawasan e-government dalam Penyelenggaraan Pemerintahan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 16, 3, 202, 2, 'Sinkronisasi Pengelolaan Rencana Induk dan Anggaran Pemerintahan Berbasis Elektronik', NULL, NULL),
(1, 2, 16, 3, 202, 3, 'Pengelolaan Pusat Data Pemerintahan Daerah', NULL, NULL),
(1, 2, 16, 3, 202, 4, 'Penyelenggaraan Sistem Komunikasi Intra Pemerintah Daerah', NULL, NULL),
(1, 2, 16, 3, 202, 5, 'Koordinasi dan Sinkronisasi Sistem Keamanan Informasi', NULL, NULL),
(1, 2, 16, 3, 202, 6, 'Koordinasi dan Sinkronisasi Data dan Informasi Elektronik', NULL, NULL),
(1, 2, 16, 3, 202, 7, 'Pengembangan Aplikasi dan Proses Bisnis Pemerintahan Berbasis Elektronik', NULL, NULL),
(1, 2, 16, 3, 202, 8, 'Penyelenggaraan Sistem Penghubung Layanan Pemerintah', NULL, NULL),
(1, 2, 16, 3, 202, 9, 'Pengembangan dan Pengelolaan Ekosistem Kabupaten/Kota Cerdas dan Kota Cerdas', NULL, NULL),
(1, 2, 16, 3, 202, 10, 'Pengembangan dan Pengelolaan Sumber Daya Teknologi Informasi dan Komunikasi Pemerintah Daerah', NULL, NULL),
(1, 2, 16, 3, 202, 11, 'Pengelolaan Government Chief Information Officer (GCIO)', NULL, NULL),
(1, 2, 16, 3, 202, 12, 'Monitoring, Evaluasi dan Pelaporan Pengembangan Ekosistem SPBE', NULL, NULL),
(1, 2, 17, 2, 201, 1, 'Fasilitasi Pemenuhan Izin Usaha Simpan Pinjam dan Pembukaan Kantor Cabang, Cabang Pembantu dan Kantor Kas Koperasi Simpan Pinjam untuk Koperasi dengan Wilayah Keanggotaan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 2, 202, 1, 'Fasilitasi Pemenuhan Izin Usaha Pembukaan Kantor Cabang, Cabang Pembantu dan Kantor Kas Koperasi Simpan Pinjam untuk Koperasi dengan Wilayah Keanggotaan dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 3, 201, 1, 'Pengawasan Kekuatan, Kesehatan, Kemandirian, Ketangguhan, serta Akuntabilitas Koperasi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 3, 201, 2, 'Pemeriksaan Kepatuhan Koperasi terhadap Peraturan Perundang-Undangan Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 4, 201, 1, 'Pelaksanaan Penilaian Kesehatan KSP/USP Koperasi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 4, 201, 2, 'Penghargaan Kesehatan KSP/USP Koperasi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 5, 201, 1, 'Peningkatan Pemahaman dan Pengetahuan Perkoperasian serta Kapasitas dan Kompetensi SDM Koperasi', NULL, NULL),
(1, 2, 17, 5, 202, 1, 'Peningkatan Pemahaman dan Pengetahuan UKM serta Kapasitas dan Kompetensi SDM UKM', NULL, NULL),
(1, 2, 17, 5, 203, 1, 'Peningkatan Pemahaman dan Pengetahuan Usaha Mikro serta Kapasitas dan Kompetensi SDM Usaha Mikro', NULL, NULL),
(1, 2, 17, 6, 201, 1, 'Pemberdayaan Peningkatan Produktivitas, Nilai Tambah, Akses Pasar, Akses Pembiayaan, Penguatan Kelembagaan, Penataan Manajemen, Standarisasi, dan Restrukturisasi Usaha Koperasi Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 17, 7, 201, 1, 'Pendataan Potensi dan Pengembangan Usaha Mikro', NULL, NULL),
(1, 2, 17, 7, 201, 2, 'Pemberdayaan melalui Kemitraan Usaha Mikro', NULL, NULL),
(1, 2, 17, 7, 201, 3, 'Fasilitasi Kemudahan Perizinan Usaha Mikro', NULL, NULL),
(1, 2, 17, 7, 201, 4, 'Pemberdayaan Kelembagaan Potensi dan Pengembangan Usaha Mikro', NULL, NULL),
(1, 2, 17, 7, 201, 5, 'Koordinasi dan Sinkronisasi dengan Para Pemangku Kepentingan dalam Pemberdayaan Usaha Mikro', NULL, NULL),
(1, 2, 17, 7, 201, 6, 'Peningkatan Pemahaman dan Pengetahuan Usaha Mikro serta Kapasitas dan Kompetensi SDM Usaha Mikro dan Kewirausahaan', NULL, NULL),
(1, 2, 17, 8, 201, 1, 'Fasilitasi Usaha Mikro Menjadi Usaha Kecil dalam Pengembangan Produksi dan Pengolahan, Pemasaran, SDM, serta Desain dan Teknologi', NULL, NULL),
(1, 2, 18, 2, 201, 1, 'Penetapan Kebijakan Daerah mengenai Pemberian Fasilitas/Insentif dan Kemudahan Penanaman Modal', NULL, NULL),
(1, 2, 18, 2, 201, 2, 'Evaluasi Pelaksanaan Pemberian Fasilitas/Insentif dan Kemudahan Penanaman Modal', NULL, NULL),
(1, 2, 18, 2, 202, 1, 'Penyusunan Rencana Umum Penanaman Modal Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 2, 202, 2, 'Penyediaan Peta Potensi dan Peluang Usaha Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 3, 201, 1, 'Penyusunan Strategi Promosi Penanaman Modal', NULL, NULL),
(1, 2, 18, 3, 201, 2, 'Pelaksanaan Kegiatan Promosi Penanaman Modal Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 18, 4, 201, 1, 'Penyediaan Pelayanan Terpadu Perizinan dan Nonperizinan berbasis Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 18, 4, 201, 2, 'Pemantauan Pemenuhan Komitmen Perizinan dan Non Perizinan Penanaman Modal', NULL, NULL),
(1, 2, 18, 4, 201, 3, 'Penyediaan Layanan Konsultasi dan Pengelolaan Pengaduan Masyarakat terhadap Pelayanan Terpadu Perizinan dan Non Perizinan', NULL, NULL),
(1, 2, 18, 4, 201, 4, 'Koordinasi dan Sinkronisasi Penetapan pemberian Fasilitas/Insentif Daerah', NULL, NULL),
(1, 2, 18, 5, 201, 1, 'Koordinasi dan Sinkronisasi Pemantauan Pelaksanaan Penanaman Modal', NULL, NULL),
(1, 2, 18, 5, 201, 2, 'Koordinasi dan Sinkronisasi Pembinaan Pelaksanaan Penanaman Modal', NULL, NULL),
(1, 2, 18, 5, 201, 3, 'Koordinasi dan Sinkronisasi Pengawasan Pelaksanaan Penanaman Modal', NULL, NULL),
(1, 2, 18, 6, 201, 1, 'Pengolahan, Penyajian dan Pemanfaatan Data dan Informasi Perizinan dan Non Perizinan Berbasis Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 2, 19, 2, 201, 1, 'Koordinasi, Sinkronisasi dan Penyelenggaraan Peningkatan Kapasitas Daya Saing Pemuda Pelopor', NULL, NULL),
(1, 2, 19, 2, 201, 2, 'Koordinasi, Sinkronisasi dan Penyelenggaraan Peningkatan Kapasitas Daya Saing Wira Usaha Pemula', NULL, NULL),
(1, 2, 19, 2, 201, 3, 'Koordinasi, Sinkronisasi dan Penyelenggaraan Peningkatan Kapasitas Daya Saing Pemuda Kader Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 2, 201, 4, 'Pemenuhan Hak Setiap Pemuda melalui Perlindungan Pemuda, Advokasi, Akses Pengembangan Diri, Penggunaan Prasarana dan Sarana Tanpa Diskiriminatif, Partisipasi Pemuda dalam Proses Perencanaan, Pelaksanaan Evaluasi dan Pengambilan Keputusan Program Strategis Kepemudaan', NULL, NULL),
(1, 2, 19, 2, 201, 5, 'Pelaksanaan Koordinasi Strategis Lintas Sektor Penyelenggaraan Pelayanan Kepemudaan melalui Implementasi Rencana Aksi Daerah/RAD Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 2, 201, 6, 'Perencanaan, Pengadaan, Pemanfaatan, Pemeliharaan, dan Pengawasan Prasarana dan Sarana Kepemudaan Kab/Kota', NULL, NULL),
(1, 2, 19, 2, 201, 7, 'Pemberian Penghargaan Pemuda dan Organisasi Pemuda yang Berjasa dan/atau Berprestasi', NULL, NULL),
(1, 2, 19, 2, 201, 8, 'Peningkatan Kepemimpinan, Kepeloporan dan Kesukarelawanan Pemuda', NULL, NULL),
(1, 2, 19, 2, 201, 9, 'Penyelenggaraan Seleksi dan Pelatihan Pasukan Pengibar Bendera', NULL, NULL),
(1, 2, 19, 2, 202, 1, 'Koordinasi, Sinkronisasi dan Pelaksanaan Pemberdayaan Pemuda atau Organisasi Kepemudaan melalui Kemitraan dengan Dunia Usaha', NULL, NULL),
(1, 2, 19, 2, 202, 2, 'Peningkatan Kapasitas Pemuda dan Organisasi Kepemudaan Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 201, 1, 'Koordinasi, Sinkronisasi dan Pelaksanaan Pembentukan dan Pengembangan Pusat Pembinaan dan Pelatihan Olahraga serta Sekolah Olahraga yang diselenggarakan oleh Masyarakat dan Dunia Usaha', NULL, NULL),
(1, 2, 19, 3, 201, 2, 'Koordinasi, Sinkronisasi dan Pelaksanaan Pemberdayaan Perkumpulan Olahraga dan Penyelenggaraan Kompetisi oleh Satuan Pendidikan Dasar', NULL, NULL),
(1, 2, 19, 3, 201, 3, 'Koordinasi, Sinkronisasi dan Pelaksanaan Penyediaan Sarana dan Prasarana Olahraga Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 202, 1, 'Penyelenggaraan Kejuaraan Olahraga Multi Event dan Single Event Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 202, 2, 'Penyelenggaraan Kejuaraan dan Pekan Olahraga Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 202, 3, 'Partisipasi dan Keikutsertaan dalam Penyelenggaraan Kejuaraan', NULL, NULL),
(1, 2, 19, 3, 203, 1, 'Seleksi Atlet Daerah', NULL, NULL),
(1, 2, 19, 3, 203, 2, 'Pemusatan Latihan Daerah, Ilmu Pengetahuan dan Teknologi Keolahragaan (Sport Science)', NULL, NULL),
(1, 2, 19, 3, 203, 3, 'Pembinaan dan Pengembangan Atlet Berprestasi Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 203, 4, 'Pemberian Penghargaan Olahraga Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 3, 203, 5, 'Koordinasi dan Sinkronisasi Penyediaan Data dan Informasi Sektoral Olahraga', NULL, NULL),
(1, 2, 19, 3, 204, 1, 'Standardisasi Organisasi Keolahragaan', NULL, NULL),
(1, 2, 19, 3, 204, 2, 'Pengembangan Organisasi Keolahragaan', NULL, NULL),
(1, 2, 19, 3, 204, 3, 'Peningkatan Kerja Sama Organisasi Keolahragaan Kabupaten/Kota Dengan Lembaga Terkait', NULL, NULL),
(1, 2, 19, 3, 204, 4, 'Pemberian Penghargaan bagi Organisasi Keolahragaan Berprestasi', NULL, NULL),
(1, 2, 19, 3, 205, 1, 'Penyelenggaraan, Pengembangan dan Pemasalan Festival dan Olahraga Rekreasi', NULL, NULL),
(1, 2, 19, 3, 205, 2, 'Pemberdayaan Perkumpulan Olahraga Rekreasi', NULL, NULL),
(1, 2, 19, 3, 205, 3, 'Penyediaan, Pengembangan dan Pemeliharaan Sarana dan Prasarana Olahraga Rekreasi', NULL, NULL),
(1, 2, 19, 3, 205, 4, 'Pengembangan Olahraga Wisata, Tantangan dan Petualangan', NULL, NULL),
(1, 2, 19, 3, 205, 5, 'Pemanfaatan Olahraga Tradisional dalam Masyarakat', NULL, NULL),
(1, 2, 19, 4, 201, 1, 'Koordinasi dan Sinkronisasi Penyediaan Data dan Informasi Kepramukaan Berbasis Elektronik', NULL, NULL),
(1, 2, 19, 4, 201, 2, 'Peningkatan Kapasitas Organisasi Kepramukaan Tingkat Daerah', NULL, NULL),
(1, 2, 19, 4, 201, 3, 'Pengembangan Kapasitas SDM Kepramukaan Tingkat Daerah', NULL, NULL),
(1, 2, 19, 4, 201, 4, 'Penyediaan Pusat Pendidikan dan Pelatihan Kepramukaan di Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 19, 4, 201, 5, 'Penyelenggaraan Kegiatan Kepramukaan Tingkat Daerah', NULL, NULL),
(1, 2, 19, 4, 201, 6, 'Penyediaan Prasarana dan Sarana Kepramukaan Tingkat Daerah', NULL, NULL),
(1, 2, 19, 4, 201, 7, 'Perencanaan, Pengadaan, Pemanfaatan, Pemeliharaan, dan Pengawasan Prasarana dan Sarana Kepramukaan Tingkat Daerah', NULL, NULL),
(1, 2, 19, 4, 201, 8, 'Partisipasi dan Keikutsertaan dalam Kegiatan Kepramukaan', NULL, NULL),
(1, 2, 20, 2, 201, 1, 'Koordinasi dan Sinkronisasi Pengumpulan, Pengolahan, Analisis dan Diseminasi Data Statistik Sektoral', NULL, NULL),
(1, 2, 20, 2, 201, 2, 'Peningkatan kapasitas SDM Pemerintah Daerah dalam Peningkatan Mutu Statistik Daerah yang Terintegrasi', NULL, NULL),
(1, 2, 20, 2, 201, 3, 'Membangun Metadata Statistik Sektoral', NULL, NULL),
(1, 2, 20, 2, 201, 4, 'Peningkatan Kapasitas Kelembagaan Statistik Sektoral', NULL, NULL),
(1, 2, 20, 2, 201, 5, 'Pengembangan Infrastruktur', NULL, NULL),
(1, 2, 20, 2, 201, 6, 'Penyelenggaraan Otorisasi Statistik Sektoral di Daerah', NULL, NULL),
(1, 2, 21, 2, 201, 1, 'Penetapan Kebijakan Tata Kelola Keamanan Informasi dan Jaring Komunikasi Sandi Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 21, 2, 201, 2, 'Pelaksanaan Analisis Kebutuhan dan Pengelolaan Sumber Daya Keamanan Informasi Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 21, 2, 201, 3, 'Pelaksanaan Keamanan Informasi Pemerintahan Daerah Kabupaten/Kota Berbasis Elektronik dan Non Elektronik', NULL, NULL),
(1, 2, 21, 2, 201, 4, 'Penyediaan Layanan Keamanan Informasi Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 21, 2, 202, 1, 'Operasionalisasi Jaring Komunikasi Sandi Pemerintah Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 2, 201, 1, 'Pelindungan, Pengembangan, Pemanfaatan Objek Pemajuan Kebudayaan', NULL, NULL),
(1, 2, 22, 2, 201, 2, 'Pembinaan Sumber Daya Manusia, Lembaga, dan Pranata Kebudayaan', NULL, NULL),
(1, 2, 22, 2, 202, 1, 'Pelindungan, Pengembangan, Pemanfaatan Objek Pemajuan Tradisi Budaya', NULL, NULL),
(1, 2, 22, 2, 202, 2, 'Pembinaan Sumber Daya Manusia, Lembaga, dan Pranata Tradisional', NULL, NULL),
(1, 2, 22, 2, 202, 3, 'Pemberian Penghargaan kepada Pihak yang Berprestasi atau Berkontribusi Luar Biasa sesuai dengan Prestasi dan Kontribusinya dalam Pemajuan Kebudayaan', NULL, NULL),
(1, 2, 22, 2, 203, 1, 'Pelindungan, Pengembangan, Pemanfaatan Objek Pemajuan Lembaga Adat', NULL, NULL),
(1, 2, 22, 2, 203, 2, 'Pembinaan Sumber Daya Manusia, Lembaga, dan Pranata Adat', NULL, NULL),
(1, 2, 22, 2, 203, 3, 'Penyediaan Sarana dan Prasarana Pembinaan Lembaga Adat', NULL, NULL),
(1, 2, 22, 3, 201, 1, 'Peningkatan Pendidikan dan Pelatihan Sumber Daya Manusia Kesenian Tradisional', NULL, NULL),
(1, 2, 22, 3, 201, 2, 'Standardisasi dan Sertifikasi Sumber Daya Manusia Kesenian Tradisional sesuai dengan Kebutuhan dan Tuntutan', NULL, NULL),
(1, 2, 22, 3, 201, 3, 'Peningkatan Kapasitas Tata Kelola Lembaga Kesenian Tradisional', NULL, NULL),
(1, 2, 22, 4, 201, 1, 'Pemberdayaan Sumber Daya Manusia dan Lembaga Sejarah Lokal Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 4, 201, 2, 'Penyediaan Sarana dan Prasarana Pembinaan Sejarah', NULL, NULL),
(1, 2, 22, 4, 201, 3, 'Peningkatan Akses Masyarakat terhadap Data dan Informasi Sejarah', NULL, NULL),
(1, 2, 22, 5, 201, 1, 'Pendaftaran Objek Diduga Cagar Budaya', NULL, NULL),
(1, 2, 22, 5, 201, 2, 'Penetapan Cagar Budaya', NULL, NULL),
(1, 2, 22, 5, 202, 1, 'Pelindungan Cagar Budaya', NULL, NULL),
(1, 2, 22, 5, 202, 2, 'Pengembangan Cagar Budaya', NULL, NULL),
(1, 2, 22, 5, 202, 3, 'Pemanfaatan Cagar Budaya', NULL, NULL),
(1, 2, 22, 5, 203, 1, 'Penerbitan Izin membawa Cagar Budaya ke Luar Daerah Kabupaten/Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 5, 203, 2, 'Evaluasi dan Pengawasan Cagar Budaya ke Luar Daerah Kabupaten/Kota dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 22, 6, 201, 1, 'Pelindungan, Pengembangan, dan Pemanfataan Koleksi secara Terpadu', NULL, NULL),
(1, 2, 22, 6, 201, 2, 'Pembinaan dan Peningkatan Mutu dan Kapasitas Sumber Daya Manusia Permuseuman', NULL, NULL),
(1, 2, 22, 6, 201, 3, 'Peningkatan Pelayanan dan Akses Masyarakat Terhadap Museum', NULL, NULL),
(1, 2, 22, 6, 201, 4, 'Penyediaan dan Pemeliharaan Sarana dan Prasarana Museum', NULL, NULL),
(1, 2, 22, 6, 201, 5, 'Revitalisasi Sarana dan Prasarana Museum', NULL, NULL),
(1, 2, 23, 2, 201, 1, 'Pengembangan dan Pemeliharaan Layanan Perpustakaan Elektronik', NULL, NULL),
(1, 2, 23, 2, 201, 2, 'Pengembangan Perpustakaan di Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 3, 'Pengembangan Kekhasan Koleksi Perpustakaan Daerah Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 4, 'Pembinaan Perpustakaan pada Satuan Pendidikan Dasar di Seluruh Wilayah Kabupaten/Kota sesuai dengan Standar Nasional Perpustakaan', NULL, NULL),
(1, 2, 23, 2, 201, 5, 'Pembinaan Perpustakaan Khusus Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 6, 'Peningkatan Kapasitas Tenaga Perpustakaan dan Pustakawan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 7, 'Pengembangan Layanan Perpustakaan Rujukan Tingkat Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 201, 8, 'Pengembangan Bahan Pustaka', NULL, NULL),
(1, 2, 23, 2, 201, 9, 'Pengelolaan dan Pengembangan Bahan Pustaka', NULL, NULL),
(1, 2, 23, 2, 201, 10, 'Penyusunan Data dan Informasi Perpustakaan, Tenaga Perpustakaan dan Pustakawan Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 202, 1, 'Sosiaisasi Budaya Baca dan Literasi pada Satuan Pendidikan Dasar dan Pendidikan Khusus serta Masyarakat', NULL, NULL),
(1, 2, 23, 2, 202, 2, 'Pembangunan dan Pemeliharaan Sarana Perpustakaan di Tempat-Tempat Umum yang Menjadi Kewenangan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 2, 202, 3, 'Pemberian Penghargaan Gerakan Budaya Gemar Membaca', NULL, NULL),
(1, 2, 23, 2, 202, 4, 'Pengembangan Literasi Berbasis Inklusi Sosial', NULL, NULL),
(1, 2, 23, 2, 202, 5, 'Pemilihan Duta Baca Tingkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 23, 3, 201, 1, 'Peningkatan Peran Serta Masyarakat dalam Penyimpanan, Perawatan, Pelestarian, dan Pendaftaran Naskah Kuno', NULL, NULL),
(1, 2, 23, 3, 201, 2, 'Pengembangan, Pengolahan dan Pengalihmediaan Naskah Kuno yang dimiliki oleh Masyarakat untuk Dilestarikan dan Didayagunakan', NULL, NULL),
(1, 2, 23, 3, 202, 1, 'Seleksi dan Pengadaan Koleksi Budaya Etnis Nusantara', NULL, NULL),
(1, 2, 23, 3, 202, 2, 'Pengolahan dan Penyiangan Koleksi Budaya Etnis Nusantara', NULL, NULL),
(1, 2, 24, 2, 201, 1, 'Penciptaan dan Penggunaan Arsip Dinamis', NULL, NULL),
(1, 2, 24, 2, 201, 2, 'Pemeliharaan dan Penyusutan Arsip Dinamis', NULL, NULL),
(1, 2, 24, 2, 201, 3, 'Pengawasan Arsip Dinamis Kewenangan Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 2, 202, 1, 'Pengumpulan dan Penyampaian Salinan Otentik Naskah Asli Arsip Terjaga Kepada ANRI', NULL, NULL),
(1, 2, 24, 2, 202, 2, 'Akuisisi, Pengolahan, Preservasi, dan Akses Arsip Statis', NULL, NULL),
(1, 2, 24, 2, 203, 1, 'Penyediaan Informasi, Akses dan Layanan Kearsipan Tingkat Daerah Kabupaten/Kota melalui JIKN', NULL, NULL),
(1, 2, 24, 2, 203, 2, 'Pemberdayaan Kapasitas Unit Kearsipan dan Lembaga Kearsipan Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 201, 1, 'Penilaian, Penetapan dan Pelaksanaan Pemusnahan Arsip yang Memiliki Retensi di Bawah 10 (sepuluh) Tahun', NULL, NULL),
(1, 2, 24, 3, 201, 2, 'Pelaksanaan Pemusnahan Arsip yang Memiliki Retensi di Bawah 10 Tahun', NULL, NULL),
(1, 2, 24, 3, 202, 1, 'Evakuasi dan Identifikasi Arsip Akibat Bencana', NULL, NULL),
(1, 2, 24, 3, 202, 2, 'Pemulihan dan Penyimpanan Arsip Akibat Bencana', NULL, NULL);
INSERT INTO `ref_sub_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `sub_kegiatan_kode`, `sub_kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 2, 24, 3, 203, 1, 'Pendataan, Penyusunan Daftar dan Penilaian serta Penyerahan atau Pemusnahan Arsip Bagi Penggabungan Perangkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 203, 2, 'Pendataan, Penyusunan Daftar dan Penilaian serta Penyerahan atau Pemusnahan Arsip Bagi Pembubaran Perangkat Daerah Kabupaten/Kota', NULL, NULL),
(1, 2, 24, 3, 203, 3, 'Pendampingan Penyelamatan Arsip Bagi Pemekaran Daerah Kecamatan', NULL, NULL),
(1, 2, 24, 3, 203, 4, 'Pendampingan Penyelamatan Arsip Bagi Pemekaran Desa/Kelurahan', NULL, NULL),
(1, 2, 24, 3, 204, 1, 'Penilaian dan Penetapan Autentisitas Arsip Statis sesuai Persyaratan Penjaminan Keabsahan Arsip', NULL, NULL),
(1, 2, 24, 3, 204, 2, 'Penilaian dan Penetapan Hasil Alih Media sesuai Persyaratan Penjaminan Keabsahan Arsip', NULL, NULL),
(1, 2, 24, 3, 205, 1, 'Penilaian dan Penetapan Autentisitas Arsip Statis yang dinyatakan Hilang', NULL, NULL),
(1, 2, 24, 3, 205, 2, 'Evaluasi dan Penetapan Hasil Alih Media yang dinyatakan Hilang', NULL, NULL),
(1, 2, 24, 3, 205, 3, 'Penetapan dan Pengumuman Daftar Pencarian Arsip (DPA)', NULL, NULL),
(1, 2, 24, 4, 201, 1, 'Penyusunan dan Penetapan SOP Penggunaan Arsip yang Bersifat Tertutup', NULL, NULL),
(1, 2, 24, 4, 201, 2, 'Penyediaan Daftar dan Penetapan Izin Penggunaan Arsip yang Bersifat Tertutup', NULL, NULL),
(1, 3, 25, 3, 201, 1, 'Penyediaan Data dan Informasi Sumber Daya Ikan', NULL, NULL),
(1, 3, 25, 3, 201, 2, 'Penyediaan Prasarana Usaha Perikanan Tangkap', NULL, NULL),
(1, 3, 25, 3, 201, 3, 'Penjaminan Ketersediaan Sarana Usaha Perikanan Tangkap', NULL, NULL),
(1, 3, 25, 3, 202, 1, 'Pengembangan Kapasitas Nelayan Kecil', NULL, NULL),
(1, 3, 25, 3, 202, 2, 'Pelaksanaan Fasilitasi Pembentukan dan Pengembangan Kelembagaan Nelayan Kecil', NULL, NULL),
(1, 3, 25, 3, 202, 3, 'Pelaksanaan Fasilitasi Bantuan Pendanaan, Bantuan Pembiayaan, Kemitraan Usaha', NULL, NULL),
(1, 3, 25, 3, 203, 1, 'Penetapan Prosedur Pengelolaan dan Penyelenggaraan Tempat Pelelangan Ikan (TPI)', NULL, NULL),
(1, 3, 25, 3, 203, 2, 'Pelayanan Penyelenggaraan Tempat Pelelangan Ikan (TPI)', NULL, NULL),
(1, 3, 25, 3, 204, 1, 'Penetapan Persyaratan dan Prosedur Penerbitan Tanda Daftar Kapal Perikanan Berukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 3, 204, 2, 'Pelayanan Penerbitan Tanda Daftar Kapal Perikanan Berukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 3, 205, 1, 'Penetapan Persyaratan dan Prosedur Penerbitan Persetujuan Pengadaan Kapal Penangkap Ikan dan Kapal Pengangkut Ikan dengan Ukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 3, 205, 2, 'Pelayanan Penerbitan Persetujuan Pengadaan Kapal Penangkap Ikan dan Kapal Pengangkut Ikan dengan Ukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 3, 206, 1, 'Penetapan Persyaratan dan Prosedur Pendaftaran Kapal Perikanan dengan Ukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 3, 206, 2, 'Pelayanan Penerbitan Pendaftaran Kapal Perikanan dengan Ukuran sampai dengan 10 GT', NULL, NULL),
(1, 3, 25, 4, 201, 1, 'Penetapan Persyaratan dan Prosedur Penerbitan Izin Usaha Perikanan Bidang Pembudidayaan Ikan yang Usahanya, Lokasi, dan/atau Manfaat atau Dampak Negatifnya dalam 1 (satu) Daerah Kabupaten/Kota yang Menggunakan Teknologi Sederhana, Semi Intensif, dan Intensif, serta tidak Menggunakan Modal Asing dan/atau Tenaga Kerja Asing', NULL, NULL),
(1, 3, 25, 4, 201, 2, 'Pelayanan Penerbitan Izin Usaha Perikanan Bidang Pembudidayaan Ikan yang Usahanya, Lokasi, dan/atau Manfaat atau Dampak Negatifnya dalam 1 (satu) Daerah Kabupaten/Kota yang Menggunakan Teknologi Sederhana, Semi Intensif, dan Intensif, serta Tidak Menggunakan Modal Asing dan/atau Tenaga Kerja Asing', NULL, NULL),
(1, 3, 25, 4, 202, 1, 'Pengembangan Kapasitas Pembudi Daya Ikan Kecil', NULL, NULL),
(1, 3, 25, 4, 202, 2, 'Pelaksanaan Fasilitasi Pembentukan dan Pengembangan Kelembagaan Pembudi Daya Ikan Kecil', NULL, NULL),
(1, 3, 25, 4, 202, 3, 'Pelaksanaan Fasilitasi Bantuan Pendanaan, Bantuan Pembiayaan, Kemitraan Usaha', NULL, NULL),
(1, 3, 25, 4, 202, 4, 'Pemberian Pendampingan, Kemudahanan Akses Ilmu Pengetahuan, Teknologi dan Informasi, serta Penyelenggaraan Pendidikan dan Pelatihan', NULL, NULL),
(1, 3, 25, 4, 203, 1, 'Penetapan Persyaratan dan Prosedur Penerbitan Tanda Daftar bagi Pembudidayaan Ikan Kecil (TDPIK) dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 203, 2, 'Pelayanan Penerbitan Tanda Daftar bagi Pembudi Dayaan Ikan Kecil (TDPIK) dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 1, 'Penyediaan Data dan Informasi Pembudidayaan Ikan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 2, 'Penyediaan Prasarana Pembudidayaan Ikan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 3, 'Penjaminan Ketersediaan Sarana Pembudidayaan Ikan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 4, 'Pengelolaan Kesehatan Ikan dan Lingkungan Budidaya dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 4, 204, 5, 'Pembinaan dan Pemantauan Pembudidayaan Ikan di Darat', NULL, NULL),
(1, 3, 25, 4, 204, 6, 'Perencanaan, Pengembangan, Pemanfaatan dan Perlindungan Lahan untuk Pembudidayaan Ikan di Darat', NULL, NULL),
(1, 3, 25, 4, 204, 7, 'Perencanaan, dan Pengembangan Pemanfaatan Air untuk Pembudidayaan Ikan di Darat', NULL, NULL),
(1, 3, 25, 5, 201, 1, 'Pengawasan Usaha Perikanan Tangkap di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 5, 201, 2, 'Pengawasan Usaha Perikanan Bidang Pembudidayaan Ikan di Wilayah Sungai, Danau, Waduk, Rawa, dan Genangan Air Lainnya yang dapat Diusahakan dalam Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 6, 201, 1, 'Penyediaan Data dan Informasi Usaha Pemasaran dan Pengolahan Hasil Perikanan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 6, 202, 1, 'Pelaksanaan Bimbingan dan Penerapan Persyaratan atau Standar pada Usaha Pengolahan dan Pemasaran Skala Mikro dan Kecil', NULL, NULL),
(1, 3, 25, 6, 203, 1, 'Peningkatan Ketersediaan Ikan untuk Konsumsi dan Usaha Pengolahan dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 25, 6, 203, 2, 'Pemberian Fasilitas bagi Pelaku Usaha Perikanan Skala Mikro dan Kecil dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 201, 1, 'Penetapan Daya Tarik Wisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 201, 2, 'Perencanaan Pengembangan Daya Tarik Wisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 201, 3, 'Pengembangan Daya Tarik Wisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 201, 4, 'Monitoring dan Evaluasi Pengelolaan Daya Tarik Wisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 1, 'Penetapan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 2, 'Perencanaan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 3, 'Pengembangan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 4, 'Pengadaan/Pemeliharaan/Rehabilitasi Sarana dan Prasarana dalam Pengelolaan Kawasan Wisata Strategis Pariwisata Kabupaten/Kota Pengadaan/Pemeliharaan/Rehabilitasi Sarana dan Prasarana dalam Pengelolaan Kawasan Wisata Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 5, 'Monitoring dan Evaluasi Pengelolaan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 6, 'Pemberdayaan Masyarakat dalam Pengelolaan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 202, 7, 'Penerapan Destinasi Pariwisata Berkelanjutan dalam Pengelolaan Kawasan Strategis Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 1, 'Penetapan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 2, 'Perencanaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 3, 'Pengembangan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 4, 'Pengadaan/Pemeliharaan/Rehabilitasi Sarana dan Prasarana dalam Pengelolaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 5, 'Monitoring dan Evaluasi Pengelolaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 6, 'Pemberdayaan Masyarakat dalam Pengelolaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 203, 7, 'Penerapan Destinasi Pariwisata Berkelanjutan dalam pengelolaan Destinasi Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 204, 1, 'Penyediaan Layanan Pendaftaran Usaha Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 204, 2, 'Penerbitan Tanda Daftar Usaha Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 2, 204, 3, 'Pengelolaan Investasi Pariwisata', NULL, NULL),
(1, 3, 26, 2, 204, 4, 'Pembinaan dan Pengawasan Usaha Pariwisata', NULL, NULL),
(1, 3, 26, 2, 204, 5, 'Fasilitasi Standarisasi Industri dan Usaha Pariwisata', NULL, NULL),
(1, 3, 26, 3, 201, 1, 'Penguatan Promosi melalui Media Cetak, Elektronik, dan Media Lainnya Baik Dalam dan Luar Negeri', NULL, NULL),
(1, 3, 26, 3, 201, 2, 'Fasilitasi Kegiatan Pemasaran Pariwisata Baik Dalam dan Luar Negeri Pariwisata Kabupaten/Kota', NULL, NULL),
(1, 3, 26, 3, 201, 3, 'Penyediaan Data dan Penyebaran Informasi Pariwisata Kabupaten/Kota, Baik Dalam dan Luar Negeri', NULL, NULL),
(1, 3, 26, 3, 201, 4, 'Peningkatan Kerja Sama dan Kemitraan Pariwisata Dalam dan Luar Negeri', NULL, NULL),
(1, 3, 26, 3, 201, 5, 'Monitoring dan Evaluasi Pengembangan Pemasaran Pariwisata', NULL, NULL),
(1, 3, 26, 4, 201, 1, 'Pengembangan dan Revitalisasi Prasarana Kota Kreatif', NULL, NULL),
(1, 3, 26, 4, 202, 1, 'Pengembangan Riset', NULL, NULL),
(1, 3, 26, 4, 202, 2, 'Pengembangan Pendidikan', NULL, NULL),
(1, 3, 26, 4, 202, 3, 'Fasilitasi Pendanaan dan Pembiayaan', NULL, NULL),
(1, 3, 26, 4, 202, 4, 'Penyediaan Infrastruktur', NULL, NULL),
(1, 3, 26, 4, 202, 5, 'Pengembangan Sistem Pemasaran', NULL, NULL),
(1, 3, 26, 4, 202, 6, 'Pemberian Insentif', NULL, NULL),
(1, 3, 26, 4, 202, 7, 'Fasilitasi Kekayaan Intelektual', NULL, NULL),
(1, 3, 26, 4, 202, 8, 'Perlindungan Hasil Kreativitas', NULL, NULL),
(1, 3, 26, 4, 202, 9, 'Penyusunan Rencana Aksi Pengembangan Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 4, 202, 10, 'Monitoring dan Evaluasi Pengembangan Ekosistem Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 5, 201, 1, 'Pengembangan Kompetensi SDM Pariwisata dan Ekonomi Kreatif Tingkat Dasar', NULL, NULL),
(1, 3, 26, 5, 201, 2, 'Peningkatan Peran Serta Masyarakat dalam Pengembangan Kemitraan Pariwisata', NULL, NULL),
(1, 3, 26, 5, 201, 3, 'Pelatihan Dasar SDM Kepariwisataan bagi Masyarakat, Guru dan Pelajar (Mahasiswa dan/atau Siswa)', NULL, NULL),
(1, 3, 26, 5, 201, 4, 'Sertifikasi Kompetensi Bagi Tenaga Kerja bidang Pariwisata', NULL, NULL),
(1, 3, 26, 5, 201, 5, 'Fasilitasi Proses Kreasi, Produksi, Distribusi Konsumsi dan Konservasi Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 5, 201, 6, 'Fasilitasi Pengembangan Kompetensi Sumber Daya Manusia Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 5, 201, 7, 'Monitoring dan Evaluasi Pengembangan Sumber Daya Pariwisata dan Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 5, 202, 1, 'Pelatihan, Bimbingan Teknis, dan Pendampingan Ekonomi Kreatif', NULL, NULL),
(1, 3, 26, 5, 202, 2, 'Dukungan Fasilitasi Menghadapi Perkembangan Teknologi di Dunia Usaha', NULL, NULL),
(1, 3, 26, 5, 202, 3, 'Standarisasi Usaha dan Sertifikasi Profesi di Bidang Ekonomi Kreatif', NULL, NULL),
(1, 3, 27, 2, 201, 1, 'Pengawasan Penggunaan Sarana Pendukung Pertanian sesuai dengan Komoditas, Teknologi dan Spesifik Lokasi', NULL, NULL),
(1, 3, 27, 2, 201, 2, 'Pendampingan Penggunaan Sarana Pendukung Pertanian', NULL, NULL),
(1, 3, 27, 2, 202, 1, 'Penjaminan Kemurnian dan Kelestarian SDG Hewan/Tanaman', NULL, NULL),
(1, 3, 27, 2, 202, 2, 'Peningkatan Kualitas SDG Hewan/Tanaman', NULL, NULL),
(1, 3, 27, 2, 202, 3, 'Pemanfaatan SDG Hewan/Tanaman', NULL, NULL),
(1, 3, 27, 2, 203, 1, 'Pengawasan Mutu Benih/Bibit Ternak, Bahan Pakan/Pakan/Tanaman Skala Kecil', NULL, NULL),
(1, 3, 27, 2, 203, 2, 'Pengawasan Peredaran Bahan Pakan/Pakan, Benih/Bibit Hijauan Pakan Ternak', NULL, NULL),
(1, 3, 27, 2, 204, 1, 'Pemeriksaan Mutu, Khasiat dan Keamanan Peredaran Obat Hewan', NULL, NULL),
(1, 3, 27, 2, 204, 2, 'Penindakan atas Penyimpangan Penyediaan dan Peredaran Obat Hewan', NULL, NULL),
(1, 3, 27, 2, 205, 1, 'Penjaminan Peredaran Benih/Bibit Ternak', NULL, NULL),
(1, 3, 27, 2, 205, 2, 'Pengujian Mutu Benih dan Bibit Ternak', NULL, NULL),
(1, 3, 27, 2, 205, 3, 'Pengawasan Peredaran dan Sertifikasi Benih/Bibit Ternak', NULL, NULL),
(1, 3, 27, 2, 205, 4, 'Penjaminan Peredaran HPT, Bahan Pakan/Pakan', NULL, NULL),
(1, 3, 27, 2, 205, 5, 'Pengendalian Penyediaan Benih/Bibit Ternak dan Hijauan Pakan Ternak', NULL, NULL),
(1, 3, 27, 2, 205, 6, 'Pengawasan Produksi Benih/Bibit Ternak dan HPT, Bahan Pakan/Pakan', NULL, NULL),
(1, 3, 27, 2, 206, 1, 'Pengadaan Benih/Bibit Ternak yang Sumbernya dari Daerah Kabupaten/Kota Lain', NULL, NULL),
(1, 3, 27, 2, 206, 2, 'Pengadaan Hijauan Pakan Ternak yang Sumbernya dari Daerah Kabupaten/Kota Lain', NULL, NULL),
(1, 3, 27, 3, 201, 1, 'Pengelolaan Lahan Pertanian Pangan Berkelanjutan/LP2B, Kawasan Pertanian Pangan Berkelanjutan/KP2B dan Lahan Cadangan Pertanian Pangan Berkelanjutan/LCP2B', NULL, NULL),
(1, 3, 27, 3, 201, 2, 'Penyusunan Peta Lahan Pertanian Pangan Berkelanjutan/LP2B', NULL, NULL),
(1, 3, 27, 3, 201, 3, 'Koordinasi dan Sinkronisasi Prasarana Pendukung Pertanian lainnya', NULL, NULL),
(1, 3, 27, 3, 201, 4, 'Penyusunan Masterplan Pengembangan Prasarana, Sarana, Kawasan dan Komoditas Perkebunan', NULL, NULL),
(1, 3, 27, 3, 202, 1, 'Pembangunan, Rehabilitasi dan Pemeliharaan Jaringan Irigasi Usaha Tani', NULL, NULL),
(1, 3, 27, 3, 202, 2, 'Pembangunan, Rehabilitasi dan Pemeliharaan Embung Pertanian', NULL, NULL),
(1, 3, 27, 3, 202, 3, 'Pembangunan, Rehabilitasi dan Pemeliharaan Jalan Usaha Tani', NULL, NULL),
(1, 3, 27, 3, 202, 4, 'Pembangunan, Rehabilitasi dan Pemeliharaan DAM Parit', NULL, NULL),
(1, 3, 27, 3, 202, 5, 'Pembangunan, Rehabilitasi dan Pemeliharaan Long Storage', NULL, NULL),
(1, 3, 27, 3, 202, 6, 'Pembangunan, Rehabilitasi dan Pemeliharaan Pintu Air', NULL, NULL),
(1, 3, 27, 3, 202, 7, 'Pembangunan, Rehabilitasi dan Pemeliharaan Rumah Potong Hewan', NULL, NULL),
(1, 3, 27, 3, 202, 8, 'Pembangunan, Rehabilitasi dan Pemeliharaan Balai Penyuluh di Kecamatan serta sarana pendukungnya', NULL, NULL),
(1, 3, 27, 3, 202, 9, 'Pembangunan, Rehabilitasi dan Pemeliharaan Prasarana Pertanian Lainnya', NULL, NULL),
(1, 3, 27, 3, 203, 1, 'Pelestarian dan Pemanfaatan Wilayah Sumber Bibit Ternak dan Rumpun/Galur Ternak', NULL, NULL),
(1, 3, 27, 3, 203, 2, 'Pengawasan Wilayah Sumber Bibit Ternak dan Rumpun/Galur Ternak', NULL, NULL),
(1, 3, 27, 3, 204, 1, 'Identifikasi dan Penetapan Lahan Penggembalaan Umum', NULL, NULL),
(1, 3, 27, 3, 204, 2, 'Pengelolaan Lahan Penggembalaan Umum', NULL, NULL),
(1, 3, 27, 3, 204, 3, 'Pembinaan dan Pengawasan Lahan Penggembalaan Umum', NULL, NULL),
(1, 3, 27, 4, 201, 1, 'Pengendalian dan Penanggulangan Penyakit Hewan dan Zoonosis', NULL, NULL),
(1, 3, 27, 4, 201, 2, 'Pembebasan Penyakit Hewan Menular dalam 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 4, 201, 3, 'Penanggulangan Daerah Terdampak Wabah Penyakit Hewan Menular', NULL, NULL),
(1, 3, 27, 4, 202, 1, 'Penilaian Risiko Penyakit Hewan dan Keamanan Produk Hewan', NULL, NULL),
(1, 3, 27, 4, 202, 2, 'Pengawasan atas Penerapan Persyaratan Teknis untuk Pemasukan dan/atau Pengeluaran Hewan dan Produk Hewan', NULL, NULL),
(1, 3, 27, 4, 202, 3, 'Pemeriksaan Kesehatan Hewan dan Produk Hewan di Perbatasan Lintas Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 27, 4, 203, 1, 'Penyediaan Pelayanan Jasa Laboratorium', NULL, NULL),
(1, 3, 27, 4, 203, 2, 'Penyediaan Pelayanan Jasa Medik Veteriner', NULL, NULL),
(1, 3, 27, 4, 204, 1, 'Pendampingan Unit Usaha Hewan dan Produk Hewan', NULL, NULL),
(1, 3, 27, 4, 204, 2, 'Pengawasan Peredaran Hewan dan Produk Hewan', NULL, NULL),
(1, 3, 27, 4, 204, 3, 'Penetapan Pemenuhan Persyaratan Teknis', NULL, NULL),
(1, 3, 27, 4, 204, 4, 'Pengujian Laboratorium Kesehatan Masyarakat Veteriner', NULL, NULL),
(1, 3, 27, 4, 205, 1, 'Pendampingan Penerapan Unit Kesejahteraan Hewan', NULL, NULL),
(1, 3, 27, 4, 205, 2, 'Penanganan atas Pelanggaran Kesejahteraan Hewan sesuai Kewenangannya', NULL, NULL),
(1, 3, 27, 5, 201, 1, 'Pengendalian Organisme Pengganggu Tumbuhan (OPT) Tanaman Pangan, Hortikultura, dan Perkebunan', NULL, NULL),
(1, 3, 27, 5, 201, 2, 'Penanganan Dampak Perubahan Iklim (DPI) Tanaman Pangan, Hortikultura, dan Perkebunan', NULL, NULL),
(1, 3, 27, 5, 201, 3, 'Pencegahan, Penanganan Kebakaran Lahan, dan Gangguan Usaha Tanaman Pangan, Hortikultura, dan Perkebunan', NULL, NULL),
(1, 3, 27, 5, 201, 4, 'Penanggulangan Bencana Non Alam yang Bersifat Zoonosis', NULL, NULL),
(1, 3, 27, 5, 201, 5, 'Penanggulangan Pasca Bencana Alam Bidang Tanaman Pangan, Hortikultura, Perkebunan, Peternakan dan Kesehatan Hewan', NULL, NULL),
(1, 3, 27, 6, 201, 1, 'Penyusunan Standar Pelayanan Publik Pemberian Izin Usaha Pertanian', NULL, NULL),
(1, 3, 27, 6, 201, 2, 'Penilaian Kelayakan dan Pemberian Pertimbangan Teknis Izin Usaha Pertanian', NULL, NULL),
(1, 3, 27, 6, 201, 3, 'Pembinaan dan Pengawasan Penerapan Izin Usaha Pertanian', NULL, NULL),
(1, 3, 27, 6, 202, 1, 'Penatausahaan Penerbitan Izin Usaha Produksi Benih/Bibit Ternak dan Pakan, Fasilitas Pemeliharaan Hewan, Rumah Sakit Hewan/Pasar Hewan, Rumah Potong Hewan', NULL, NULL),
(1, 3, 27, 6, 202, 2, 'Pengawasan Pelaksanaan Izin Usaha Produksi Benih/Bibit Ternak dan Pakan', NULL, NULL),
(1, 3, 27, 6, 202, 3, 'Pengawasan Pelaksanaan Izin Usaha Fasilitas Pemeliharaan Hewan', NULL, NULL),
(1, 3, 27, 6, 202, 4, 'Pengawasan Pelaksanaan Izin Usaha Rumah Sakit Hewan/Pasar Hewan', NULL, NULL),
(1, 3, 27, 6, 202, 5, 'Pengawasan Pelaksanaan Izin Usaha Rumah Potong Hewan', NULL, NULL),
(1, 3, 27, 6, 203, 1, 'Fasilitasi Pemenuhan Komitmen Penerbitan Izin Usaha Pengecer Obat Hewan', NULL, NULL),
(1, 3, 27, 6, 203, 2, 'Pengawasan Pelaksanaan Izin Usaha Pengecer Obat Hewan', NULL, NULL),
(1, 3, 27, 7, 201, 1, 'Peningkatan Kapasitas Kelembagaan Penyuluhan Pertanian di Kecamatan dan Desa', NULL, NULL),
(1, 3, 27, 7, 201, 2, 'Pengembangan Kapasitas Kelembagaan Petani di Kecamatan dan Desa', NULL, NULL),
(1, 3, 27, 7, 201, 3, 'Penyediaan dan Pemanfaatan Sarana dan Prasarana Penyuluhan Pertanian', NULL, NULL),
(1, 3, 27, 7, 201, 4, 'Pembentukan Badan Usaha Milik Petani', NULL, NULL),
(1, 3, 27, 7, 201, 5, 'Pembentukan dan Penyelenggaraan Sekolah Lapang Kelompok Tani Tingkat Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 1, 'Pencegahan, Penanggulangan dan Pembatasan Kerusakan Kawasan TAHURA', NULL, NULL),
(1, 3, 28, 4, 201, 2, 'Pengamanan Kawasan TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 3, 'Pengawetan Tumbuhan, Satwa, serta Habitat TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 4, 'Pengawetan Koridor Hidupan Liar', NULL, NULL),
(1, 3, 28, 4, 201, 5, 'Pemulihan Ekosistem atau Penutupan Kawasan sesuai Rencana Pengelolaan TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 6, 'Pemanfaatan Jasa Lingkungan TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 7, 'Kerja Sama Penyelenggaraan TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 8, 'Penguatan Kapasitas dan Pemberdayaan Masyarakat di Sekitar TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 9, 'Pengelolaan Daerah Penyangga TAHURA Kabupaten/Kota', NULL, NULL),
(1, 3, 28, 4, 201, 10, 'Penyusunan Rencana Pengelolaan dan Penataan Blok TAHURA', NULL, NULL),
(1, 3, 28, 4, 201, 11, 'Perencanaan Pengelolaan TAHURA', NULL, NULL),
(1, 3, 29, 5, 201, 1, 'Penetapan Prosedur dan Persyaratan Izin Pemanfaatan Langsung Panas Bumi dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 29, 5, 201, 2, 'Penyusunan Rekomendasi Perizinan dan Informasi Izin Pemanfaatan Langsung Panas Bumi dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 29, 5, 201, 3, 'Pengendalian dan Pengawasan Pelaksanaan Perizinan Pemanfaatan Langsung Panas Bumi dalam Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 2, 201, 1, 'Fasilitasi Pemenuhan Komitmen Perolehan Perizinan Pasar Rakyat, Pusat Perbelanjaan, dan Toko Swalayan melalui Sistem Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik', NULL, NULL),
(1, 3, 30, 2, 202, 1, 'Fasilitasi Penerbitan Tanda Daftar Gudang', NULL, NULL),
(1, 3, 30, 2, 203, 1, 'Fasilitasi Perizinan Surat Tanda Pendaftaran dan/atau Lanjutan Waralaba (STPW) Dalam Negeri Terintegrasi secara Elektronik', NULL, NULL),
(1, 3, 30, 2, 203, 2, 'Fasilitasi Pemenuhan Komitmen Perolehan Surat Tanda Pendaftaran dan/atau Lanjutan Waralaba (STPW) Dalam Negeri', NULL, NULL),
(1, 3, 30, 2, 204, 1, 'Sistem Pelayanan Perizinan Lanjutan Surat Tanda Pendaftaran dan/atau Lanjutan Waralaba (STPW) Terintegrasi secara Elektronik Luar Negeri', NULL, NULL),
(1, 3, 30, 2, 204, 2, 'Fasilitasi Pemenuhan Lanjutan Surat Tanda Pendaftaran dan/atau Lanjutan Waralaba (STPW) Luar Negeri', NULL, NULL),
(1, 3, 30, 2, 205, 1, 'Fasilitasi Penerbitan Surat Izin Usaha Perdagangan Minuman Beralkohol Golongan B dan C', NULL, NULL),
(1, 3, 30, 2, 206, 1, 'Pemeriksaan Penyimpanan Bahan Berbahaya', NULL, NULL),
(1, 3, 30, 2, 206, 2, 'Fasilitasi Pemenuhan Komitmen Pemeriksaan Distribusi Bahan Berbahaya bagi P-B2 dan PA-B2', NULL, NULL),
(1, 3, 30, 2, 206, 3, 'Pengawasan Distribusi, Pengemasan dan Pelabelan Bahan Berbahaya Terhadap Pengguna Akhir Bahan Berbahaya (PA-B2) maupun Produsen B2 (P-B2)', NULL, NULL),
(1, 3, 30, 2, 207, 1, 'Koordinasi dan Sinkronisasi Layanan Penerbitan SKA', NULL, NULL),
(1, 3, 30, 3, 201, 1, 'Penyediaan Sarana Distribusi Perdagangan', NULL, NULL),
(1, 3, 30, 3, 201, 2, 'Fasilitasi Pengelolaan Sarana Distribusi Perdagangan', NULL, NULL),
(1, 3, 30, 3, 202, 1, 'Pembinaan dan Pengendalian Pengelola Sarana Distribusi Perdagangan', NULL, NULL),
(1, 3, 30, 3, 202, 2, 'Pemberdayaan Pengelola Sarana Distribusi Perdagangan', NULL, NULL),
(1, 3, 30, 4, 201, 1, 'Koordinasi dan Sinkronisasi Ketersediaan Barang Kebutuhan Pokok dan Barang Penting di Tingkat Agen dan Pasar Rakyat', NULL, NULL),
(1, 3, 30, 4, 201, 2, 'Koordinasi dan Sinkronisasi Peningkatan Aksesibilitas Barang Kebutuhan Pokok dan Barang Penting di Tingkat Agen dan Pasar Rakyat', NULL, NULL),
(1, 3, 30, 4, 201, 3, 'Pengendalian Ketersediaan Barang Kebutuhan Pokok dan Barang Penting di Tingkat Agen dan Pasar Rakyat', NULL, NULL),
(1, 3, 30, 4, 202, 1, 'Pemantauan Harga dan Stok Barang Kebutuhan Pokok dan Barang Penting pada Pelaku Usaha Distribusi Barang dalam 1 (satu) Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 4, 202, 2, 'Pemantauan Harga dan Stok Barang Kebutuhan Pokok dan Barang Penting pada Pasar Rakyat yang Terintegrasi dalam Sistem Informasi Perdagangan', NULL, NULL),
(1, 3, 30, 4, 202, 3, 'Pelaksanaan Operasi Pasar Reguler dan Pasar Khusus yang Berdampak dalam 1 (satu) Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 4, 203, 1, 'Pemeriksaan Kelengkapan Legalitas Dokumen Perizinan', NULL, NULL),
(1, 3, 30, 4, 203, 2, 'Pengawasan Pengadaan Pupuk dan Pestisida Bersubsidi', NULL, NULL),
(1, 3, 30, 4, 203, 3, 'Pengawasan Penyaluran dan Penggunaan Pupuk dan Pestisida Bersubsidi', NULL, NULL),
(1, 3, 30, 5, 201, 1, 'Pembinaan dan Pengembangan Usaha Produk Ekspor Unggulan Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 5, 201, 2, 'Pameran Dagang Nasional', NULL, NULL),
(1, 3, 30, 5, 201, 3, 'Pameran Dagang Lokal', NULL, NULL),
(1, 3, 30, 5, 201, 4, 'Misi Dagang Bagi Produk Ekspor Unggulan', NULL, NULL),
(1, 3, 30, 5, 201, 5, 'Peningkatan Citra Produk Ekspor', NULL, NULL),
(1, 3, 30, 5, 201, 6, 'Pembinaan Pelaku Usaha Ekspor', NULL, NULL),
(1, 3, 30, 6, 201, 1, 'Pelaksanaan Metrologi Legal, Berupa Tera, Tera Ulang', NULL, NULL),
(1, 3, 30, 6, 201, 2, 'Pengawasan/Penyuluhan Metrologi Legal', NULL, NULL),
(1, 3, 30, 6, 201, 3, 'Penyidikan Metrologi Legal', NULL, NULL),
(1, 3, 30, 7, 201, 1, 'Pelaksanaan Promosi Penggunaan Produk Dalam Negeri di Tingkat Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 7, 201, 2, 'Pemasaran dan Peningkatan Penggunaan Produk Dalam Negeri di Tingkat Kabupaten/Kota', NULL, NULL),
(1, 3, 30, 7, 201, 3, 'Peningkatan Sistem dan Jaringan Informasi Perdagangan', NULL, NULL),
(1, 3, 31, 2, 201, 1, 'Penyusunan Rencana Pembangunan Industri Kabupaten/Kota', NULL, NULL),
(1, 3, 31, 2, 201, 2, 'Koordinasi, Sinkronisasi, dan Pelaksanaan Kebijakan Percepatan Pengembangan, Penyebaran dan Perwilayahan Industri', NULL, NULL),
(1, 3, 31, 2, 201, 3, 'Koordinasi, Sinkronisasi, dan pelaksanaan Pembangunan Sumber Daya Industri', NULL, NULL),
(1, 3, 31, 2, 201, 4, 'Koordinasi, Sinkronisasi, dan Pelaksanaan Pembangunan Sarana dan Prasarana Industri', NULL, NULL),
(1, 3, 31, 2, 201, 5, 'Koordinasi, Sinkronisasi, dan Pelaksanaan Pemberdayaan Industri dan Peran Serta Masyarakat', NULL, NULL),
(1, 3, 31, 2, 201, 6, 'Evaluasi terhadap Pelaksanaan Rencana Pembangunan Industri', NULL, NULL),
(1, 3, 31, 3, 201, 1, 'Fasilitasi Pemenuhan Komitmen perolehan IUI, IPUI, IUKI dan IPKI Kewenangan Kabupaten/Kota dalam Sistem Informasi Industri Nasional (SIINas) yang Terintegrasi dengan Sistem Pelayanan Perizinan Berusaha Terintegrasi secara Elektronik', NULL, NULL),
(1, 3, 31, 3, 201, 2, 'Koordinasi dan Sinkronisasi Pengawasan Perizinan di Bidang Industri Dalam Lingkup IUI, IPUI, IUKI dan IPKI Kewenangan Kabupaten/ Kota', NULL, NULL),
(1, 3, 31, 4, 201, 1, 'Fasilitasi Pengumpulan, Pengolahan dan Analisis Data Industri, Data Kawasan Industri serta Data Lain Lingkup Kabupaten/Kota melalui Sistem Informasi Industri Nasional (SIINas)', NULL, NULL),
(1, 3, 31, 4, 201, 2, 'Diseminasi, Publikasi Data Informasi dan Analisa Industri Kabupaten/Kota melalui SIINas', NULL, NULL),
(1, 3, 31, 4, 201, 3, 'Pemantauan dan Evaluasi Kepatuhan Perusahaan Industri dan Perusahaan Kawasan Industri Lingkup Kabupaten/Kota dalam Penyampaian Data ke SIINas', NULL, NULL),
(1, 3, 32, 2, 201, 1, 'Identifikasi Potensi Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 2, 201, 2, 'Advokasi dan Musyawarah Penetapan Kawasan', NULL, NULL),
(1, 3, 32, 2, 201, 3, 'Penyediaan Tanah untuk Pembangunan Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 2, 201, 4, 'Penatausahaan Pencadangan Tanah untuk Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 3, 201, 1, 'Koordinasi dan Sinkronisasi Kerjasama Pembangunan Transmigrasi yang Berasal dari 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 32, 3, 201, 2, 'Penyiapan Lingkungan Hunian Fisik, Sosial, Ekonomi bagi Penduduk Setempat dan Transmigran', NULL, NULL),
(1, 3, 32, 3, 201, 3, 'Pelaksanaan Penataan Penduduk Setempat Sekitar Lokasi Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 3, 201, 4, 'Pemindahan dan Penempatan Transmigran yang berasal dari 1 (satu) Daerah Kabupaten/Kota', NULL, NULL),
(1, 3, 32, 3, 201, 5, 'Penyuluhan Transmigrasi', NULL, NULL),
(1, 3, 32, 3, 201, 6, 'Pelatihan Transmigrasi', NULL, NULL),
(1, 3, 32, 3, 201, 7, 'Penyesuaian Lingkungan Baru Transmigran di Kawasan Transmigrasi', NULL, NULL),
(1, 3, 32, 4, 201, 1, 'Penguatan SDM dalam rangka Kemandirian Satuan Pemukiman', NULL, NULL),
(1, 3, 32, 4, 201, 2, 'Penguatan Infrastruktur Sosial, Ekonomi dan Kelembagaan dalam rangka Kemandirian Satuan Pemukiman', NULL, NULL),
(1, 4, 1, 2, 201, 1, 'Penataan Administrasi Pemerintahan', NULL, NULL),
(1, 4, 1, 2, 201, 2, 'Pengelolaan Administrasi Kewilayahan', NULL, NULL),
(1, 4, 1, 2, 201, 3, 'Fasilitasi Pelaksanaan Otonomi Daerah', NULL, NULL),
(1, 4, 1, 2, 202, 1, 'Fasilitasi Pengelolaan Bina Mental Spiritual', NULL, NULL),
(1, 4, 1, 2, 202, 2, 'Pelaksanaan Kebijakan, Evaluasi, dan Capaian Kinerja terkait Kesejahteraan Sosial', NULL, NULL),
(1, 4, 1, 2, 202, 3, 'Pelaksanaan Kebijakan, Evaluasi, dan Capaian Kinerja terkait Kesejahteraan Masyarakat', NULL, NULL),
(1, 4, 1, 2, 203, 1, 'Fasilitasi Penyusunan Produk Hukum Daerah', NULL, NULL),
(1, 4, 1, 2, 203, 2, 'Fasilitasi Bantuan Hukum', NULL, NULL),
(1, 4, 1, 2, 203, 3, 'Pendokumentasian Produk Hukum dan Pengelolaan Informasi Hukum', NULL, NULL),
(1, 4, 1, 2, 204, 1, 'Fasilitasi Kerja Sama Dalam Negeri', NULL, NULL),
(1, 4, 1, 2, 204, 2, 'Fasilitasi Kerja Sama Luar Negeri', NULL, NULL),
(1, 4, 1, 2, 204, 3, 'Evaluasi Pelaksanaan Kerja Sama', NULL, NULL),
(1, 4, 1, 3, 201, 1, 'Koordinasi, Sinkronisasi, Monitoring dan Evaluasi Kebijakan Pengelolaan BUMD dan BLUD', NULL, NULL),
(1, 4, 1, 3, 201, 2, 'Pengendalian dan Distribusi Perekonomian', NULL, NULL),
(1, 4, 1, 3, 201, 3, 'Perencanaan dan Pengawasan Ekonomi Mikro kecil', NULL, NULL),
(1, 4, 1, 3, 201, 4, 'Koordinasi, Sinkronisasi dan Evaluasi Kebijakan Pembentukan BLUD', NULL, NULL),
(1, 4, 1, 3, 201, 5, 'Koordinasi, Sinkronisasi dan Evaluasi Kebijakan Pendirian BUMD', NULL, NULL),
(1, 4, 1, 3, 202, 1, 'Fasilitasi Penyusunan Program Pembangunan', NULL, NULL),
(1, 4, 1, 3, 202, 2, 'Pengendalian dan Evaluasi Program Pembangunan', NULL, NULL),
(1, 4, 1, 3, 202, 3, 'Pengelolaan Evaluasi dan Pelaporan Pelaksanaan Pembangunan', NULL, NULL),
(1, 4, 1, 3, 203, 1, 'Pengelolaan Pengadaan Barang dan Jasa', NULL, NULL),
(1, 4, 1, 3, 203, 2, 'Pengelolaan Layanan Pengadaan secara Elektronik', NULL, NULL),
(1, 4, 1, 3, 203, 3, 'Pembinaan dan Advokasi Pengadaan Barang dan Jasa', NULL, NULL),
(1, 4, 1, 3, 204, 1, 'Koordinasi, Sinkronisasi, dan Evaluasi Kebijakan Pertanian, Kehutanan, Kelautan, dan Perikanan', NULL, NULL),
(1, 4, 1, 3, 204, 2, 'Koordinasi, Sinkronisasi, dan Evaluasi Kebijakan Pertambangan dan Lingkungan Hidup', NULL, NULL),
(1, 4, 1, 3, 204, 3, 'Koordinasi, Sinkronisasi, dan Evaluasi Kebijakan Energi dan Air', NULL, NULL),
(1, 4, 2, 2, 201, 1, 'Penyusunan dan Pembahasan Program Pembentukan Peraturan Daerah', NULL, NULL),
(1, 4, 2, 2, 201, 2, 'Pembahasan Rancangan Peraturan Daerah', NULL, NULL),
(1, 4, 2, 2, 201, 3, 'Penyelenggaraan Kajian Perundang-Undangan', NULL, NULL),
(1, 4, 2, 2, 201, 4, 'Fasilitasi Penyusunan Penjelasan/Keterangan dan/atau Naskah Akademik', NULL, NULL),
(1, 4, 2, 2, 201, 5, 'Penyusunan Tata Tertib DPRD', NULL, NULL),
(1, 4, 2, 2, 202, 1, 'Pembahasan KUA dan PPAS', NULL, NULL),
(1, 4, 2, 2, 202, 2, 'Pembahasan Perubahan KUA dan Perubahan PPAS', NULL, NULL),
(1, 4, 2, 2, 202, 3, 'Pembahasan APBD', NULL, NULL),
(1, 4, 2, 2, 202, 4, 'Pembahasan APBD Perubahan', NULL, NULL),
(1, 4, 2, 2, 202, 5, 'Pembahasan Laporan Semester', NULL, NULL),
(1, 4, 2, 2, 202, 6, 'Pembahasan Pertanggungjawaban APBD', NULL, NULL),
(1, 4, 2, 2, 203, 1, 'Pengawasan Urusan Pemerintahan bidang Pemerintahan dan Hukum', NULL, NULL),
(1, 4, 2, 2, 203, 2, 'Pengawasan Urusan Pemerintahan Bidang Infrastruktur', NULL, NULL),
(1, 4, 2, 2, 203, 3, 'Pengawasan Urusan Pemerintahan Bidang Kesejahteraan Rakyat', NULL, NULL),
(1, 4, 2, 2, 203, 4, 'Pengawasan Urusan Pemerintahan Bidang Perekonomian', NULL, NULL),
(1, 4, 2, 2, 203, 5, 'Pengawasan Urusan Pemerintahan Bidang Sumber Daya Alam', NULL, NULL),
(1, 4, 2, 2, 203, 6, 'Pengawasan Tindak Lanjut Hasil Pemeriksaan Laporan Keuangan oleh Badan Pemeriksa Keuangan', NULL, NULL),
(1, 4, 2, 2, 203, 7, 'Pengawasan Penggunaan Anggaran', NULL, NULL),
(1, 4, 2, 2, 203, 8, 'Pembahasan Laporan Keterangan Pertanggungjawaban Kepala Daerah', NULL, NULL),
(1, 4, 2, 2, 204, 1, 'Orientasi DPRD', NULL, NULL),
(1, 4, 2, 2, 204, 2, 'Pendalaman Tugas DPRD', NULL, NULL),
(1, 4, 2, 2, 204, 3, 'Publikasi dan Dokumentasi Dewan', NULL, NULL),
(1, 4, 2, 2, 204, 4, 'Penyediaan Kelompok Pakar dan Tim Ahli', NULL, NULL),
(1, 4, 2, 2, 204, 5, 'Penyediaan Tenaga Ahli Fraksi', NULL, NULL),
(1, 4, 2, 2, 204, 6, 'Penyelenggaraan Hubungan Masyarakat', NULL, NULL),
(1, 4, 2, 2, 204, 7, 'Penyusunan Program Kerja DPRD', NULL, NULL),
(1, 4, 2, 2, 205, 1, 'Kunjungan Kerja dalam Daerah', NULL, NULL),
(1, 4, 2, 2, 205, 2, 'Penyusunan Pokok-Pokok Pikiran DPRD', NULL, NULL),
(1, 4, 2, 2, 205, 3, 'Pelaksanaan Reses', NULL, NULL),
(1, 4, 2, 2, 206, 1, 'Penyusunan Kode Etik DPRD', NULL, NULL),
(1, 4, 2, 2, 206, 2, 'Pengawasan Kode Etik DPRD', NULL, NULL),
(1, 4, 2, 2, 207, 1, 'Fasilitasi, Verifikasi, dan Koordinasi Persetujuan Kerjasama Daerah', NULL, NULL),
(1, 4, 2, 2, 207, 2, 'Penyusunan Bahan Komunikasi dan Publikasi', NULL, NULL),
(1, 4, 2, 2, 208, 1, 'Koordinasi dan Konsultasi Pelaksanaan Tugas DPRD', NULL, NULL),
(1, 4, 2, 2, 208, 2, 'Penyusunan Laporan Kinerja DPRD', NULL, NULL),
(1, 4, 2, 2, 208, 3, 'Fasilitasi Pelaksanaan Tugas Badan Musyawarah', NULL, NULL),
(1, 4, 2, 2, 208, 4, 'Fasilitasi Tugas Pimpinan DPRD', NULL, NULL),
(1, 4, 2, 2, 208, 5, 'Fasilitasi Pelaksanaan Tugas Panitia Khusus', NULL, NULL),
(1, 5, 1, 2, 201, 1, 'Analisis Kondisi Daerah, Permasalahan, dan Isu Strategis Pembangunan Daerah', NULL, NULL),
(1, 5, 1, 2, 201, 2, 'Koordinasi Penelaahan Dokumen Perencanaan Pembangunan Daerah dengan Dokumen Kebijakan Lainnya', NULL, NULL),
(1, 5, 1, 2, 201, 3, 'Pelaksanaan Konsultasi Publik', NULL, NULL),
(1, 5, 1, 2, 201, 4, 'Koordinasi Pelaksanaan Forum SKPD/Lintas SKPD', NULL, NULL),
(1, 5, 1, 2, 201, 5, 'Pelaksanaan Musrenbang Kabupaten/Kota', NULL, NULL),
(1, 5, 1, 2, 201, 6, 'Penyiapan Bahan Koordinasi Musrenbang Kecamatan', NULL, NULL),
(1, 5, 1, 2, 201, 7, 'Koordinasi Penyusunan dan Penetapan Dokumen Perencanaan Pembangunan Daerah Kabupaten/Kota', NULL, NULL),
(1, 5, 1, 2, 202, 1, 'Analisis Data dan Informasi Perencanaan Pembangunan Daerah', NULL, NULL),
(1, 5, 1, 2, 202, 2, 'Pembinaan dan Pemanfaatan Data dan Informasi Perencanaan Pembangunan SKPD', NULL, NULL),
(1, 5, 1, 2, 202, 3, 'Penyusunan Profil Pembangunan Daerah Kabupaten/Kota', NULL, NULL),
(1, 5, 1, 2, 203, 1, 'Koordinasi Pengendalian Perencanaan dan Pelaksanaan Pembangunan Daerah di Kabupaten/Kota', NULL, NULL),
(1, 5, 1, 2, 203, 2, 'Pengendalian Pelaksanaan Kerjasama Daerah', NULL, NULL),
(1, 5, 1, 2, 203, 3, 'Monitoring, Evaluasi dan Penyusunan Laporan Berkala Pelaksanaan Pembangunan Daerah', NULL, NULL),
(1, 5, 1, 3, 201, 1, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Pemerintahan (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 201, 2, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pemerintahan', NULL, NULL),
(1, 5, 1, 3, 201, 3, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pemerintahan', NULL, NULL),
(1, 5, 1, 3, 201, 4, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Pemerintahan', NULL, NULL),
(1, 5, 1, 3, 201, 5, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Pembangunan Manusia (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 201, 6, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pembangunan Manusia', NULL, NULL),
(1, 5, 1, 3, 201, 7, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pembangunan Manusia', NULL, NULL),
(1, 5, 1, 3, 201, 8, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Pembangunan Manusia', NULL, NULL),
(1, 5, 1, 3, 202, 1, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Perekonomian (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 202, 2, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Perekonomian', NULL, NULL),
(1, 5, 1, 3, 202, 3, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Perekonomian', NULL, NULL),
(1, 5, 1, 3, 202, 4, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Perekonomian', NULL, NULL),
(1, 5, 1, 3, 202, 5, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang SDA (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 202, 6, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang SDA', NULL, NULL),
(1, 5, 1, 3, 202, 7, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang SDA', NULL, NULL),
(1, 5, 1, 3, 202, 8, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang SDA', NULL, NULL),
(1, 5, 1, 3, 203, 1, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Infrastruktur (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 203, 2, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Infrastruktur', NULL, NULL),
(1, 5, 1, 3, 203, 3, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Infrastruktur', NULL, NULL),
(1, 5, 1, 3, 203, 4, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Infrastruktur', NULL, NULL),
(1, 5, 1, 3, 203, 5, 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Kewilayahan (RPJPD, RPJMD dan RKPD)', NULL, NULL),
(1, 5, 1, 3, 203, 6, 'Asistensi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Kewilayahan', NULL, NULL),
(1, 5, 1, 3, 203, 7, 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Kewilayahan', NULL, NULL),
(1, 5, 1, 3, 203, 8, 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Kewilayahan', NULL, NULL),
(1, 5, 2, 2, 201, 1, 'Koordinasi dan Penyusunan KUA dan PPAS', NULL, NULL),
(1, 5, 2, 2, 201, 2, 'Koordinasi dan Penyusunan Perubahan KUA dan Perubahan PPAS', NULL, NULL),
(1, 5, 2, 2, 201, 3, 'Koordinasi, Penyusunan dan Verifikasi RKA-SKPD', NULL, NULL),
(1, 5, 2, 2, 201, 4, 'Koordinasi, Penyusunan dan Verifikasi Perubahan RKA-SKPD', NULL, NULL),
(1, 5, 2, 2, 201, 5, 'Koordinasi, Penyusunan dan Verifikasi DPA-SKPD', NULL, NULL),
(1, 5, 2, 2, 201, 6, 'Koordinasi, Penyusunan dan Verifikasi Perubahan DPA-SKPD', NULL, NULL),
(1, 5, 2, 2, 201, 7, 'Koordinasi dan Penyusunan Peraturan Daerah tentang APBD dan Peraturan Kepala Daerah tentang Penjabaran APBD', NULL, NULL),
(1, 5, 2, 2, 201, 8, 'Koordinasi dan Penyusunan Peraturan Daerah tentang Perubahan APBD dan Peraturan Kepala Daerah tentang Penjabaran Perubahan APBD', NULL, NULL),
(1, 5, 2, 2, 201, 9, 'Koordinasi dan Penyusunan Regulasi serta Kebijakan Bidang Anggaran', NULL, NULL),
(1, 5, 2, 2, 201, 10, 'Koordinasi Perencanaan Anggaran Pendapatan', NULL, NULL),
(1, 5, 2, 2, 201, 11, 'Koordinasi Perencanaan Anggaran Belanja Daerah', NULL, NULL),
(1, 5, 2, 2, 201, 12, 'Koordinasi Perencanaan Anggaran Pembiayaan', NULL, NULL),
(1, 5, 2, 2, 201, 13, 'Pembinaan Penganggaran Daerah Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 202, 1, 'Koordinasi dan Pengelolaan Kas Daerah', NULL, NULL),
(1, 5, 2, 2, 202, 2, 'Pengelolaan Sisa Lebih Perhitungan Anggaran Tahun Sebelumnya', NULL, NULL),
(1, 5, 2, 2, 202, 3, 'Penyiapan, Pelaksanaan Pengendalian dan Penerbitan Anggaran Kas dan SPD', NULL, NULL),
(1, 5, 2, 2, 202, 4, 'Penatausahaan Pembiayaan Daerah', NULL, NULL),
(1, 5, 2, 2, 202, 5, 'Koordinasi, Fasilitasi, Asistensi, Sinkronisasi, Supervisi, Monitoring dan Evaluasi Pengelolaan Dana Perimbangan dan Dana Transfer Lainnya', NULL, NULL),
(1, 5, 2, 2, 202, 6, 'Koordinasi, Pelaksanaan Kerjasama dan Pemantauan Transaksi Non Tunai dengan Lembaga Keuangan Bank dan Lembaga Keuangan Bukan Bank', NULL, NULL),
(1, 5, 2, 2, 202, 7, 'Koordinasi dan Penyusunan Laporan Realisasi Penerimaan dan Pengeluaran Kas Daerah, Laporan Aliran Kas, dan Pelaksanaan Pemungutan/Pemotongan dan Penyetoran Perhitungan Fihak Ketiga (PFK)', NULL, NULL),
(1, 5, 2, 2, 202, 8, 'Koordinasi Pelaksanaan Piutang dan Utang Daerah yang Timbul Akibat Pengelolaan Kas, Pelaksanaan Analisis Pembiayaan dan Penempatan Uang Daerah sebagai Optimalisasi Kas', NULL, NULL),
(1, 5, 2, 2, 202, 9, 'Rekonsiliasi Data Penerimaan dan Pengeluaran Kas serta Pemungutan dan Pemotongan Atas SP2D dengan Instansi Terkait', NULL, NULL),
(1, 5, 2, 2, 202, 10, 'Penyusunan Petunjuk Teknis Administrasi Keuangan yang Berkaitan dengan Penerimaan dan Pengeluaran Kas serta Penatausahaan dan Pertanggungjawaban Sub Kegiatan', NULL, NULL),
(1, 5, 2, 2, 202, 11, 'Pembinaan Penatausahaan Keuangan Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 203, 1, 'Koordinasi Pelaksanaan Akuntansi Penerimaan dan Pengeluaran Kas Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 2, 'Rekonsiliasi dan Verifikasi Aset, Kewajiban, Ekuitas, Pendapatan, Belanja, Pembiayaan, Pendapatan-LO dan Beban', NULL, NULL),
(1, 5, 2, 2, 203, 3, 'Koordinasi Penyusunan Laporan Pertanggungjawaban Pelaksanaan APBD Bulanan, Triwulanan dan Semesteran', NULL, NULL),
(1, 5, 2, 2, 203, 4, 'Konsolidasi Laporan Keuangan SKPD, BLUD dan Laporan Keuangan Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 5, 'Koordinasi dan Penyusunan Rancangan Peraturan Daerah tentang Pertanggungjawaban Pelaksanaan APBD Provinsi dan Rancangan Peraturan Kepala Daerah tentang Penjabaran Pertanggungjawaban Pelaksanaan APBD Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 203, 6, 'Penyusunan Tanggapan/Tindak Lanjut terhadap LHP BPK atas Laporan Pertanggungjawaban Pelaksanaan APBD', NULL, NULL),
(1, 5, 2, 2, 203, 7, 'Koordinasi, Sinkronisasi, dan Penyelesaian Tuntutan Perbendaharaan dan Tuntutan Kerugian Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 8, 'Penyusunan Analisis Laporan Pertanggungjawaban Pelaksanaan APBD', NULL, NULL),
(1, 5, 2, 2, 203, 9, 'Penyusunan Kebijakan dan Panduan Teknis Operasional Penyelenggaraan Akuntansi Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 10, 'Penyusunan Sistem dan Prosedur Akuntansi dan Pelaporan Keuangan Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 203, 11, 'Pembinaan Akuntansi, Pelaporan dan Pertanggungjawaban Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 203, 12, 'Pembinaan Pengelolaan Keuangan BLUD Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 203, 13, 'Koordinasi dan Penyusunan Statistik Keuangan Pemerintahan Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 1, 'Pengelolaan Dana Cadangan Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 2, 'Analisis Investasi Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 3, 'Analisis Perencanaan dan Pelaksanaan Penerimaan Pinjaman Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 4, 'Analisis Perencanaan dan Pelaksanaan Pembayaran Cicilan Pokok dan Bunga Pinjaman Pemerintah Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 5, 'Analisis Perencanaan dan Pelaksanaan Pemberian Pinjaman Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 6, 'Analisis Perencanaan dan Pelaksanaan Penerimaan Kembali Pinjaman Daerah', NULL, NULL),
(1, 5, 2, 2, 204, 7, 'Penyusunan Kebijakan dan Alokasi Subsidi', NULL, NULL),
(1, 5, 2, 2, 204, 8, 'Analisis Perencanaan dan Penyaluran Bantuan Keuangan', NULL, NULL),
(1, 5, 2, 2, 204, 9, 'Pengelolaan Dana Darurat dan Mendesak', NULL, NULL),
(1, 5, 2, 2, 204, 10, 'Pengelolaan Dana Bagi Hasil Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 2, 205, 1, 'Inventarisasi dan Analisis Data Bidang Keuangan Daerah', NULL, NULL),
(1, 5, 2, 2, 205, 2, 'Implementasi dan Pemeliharaan Sistem Informasi Pemerintah Daerah Bidang Keuangan Daerah', NULL, NULL),
(1, 5, 2, 2, 205, 3, 'Pembinaan Sistem Informasi Pemerintah Daerah Bidang Keuangan Daerah Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 3, 201, 1, 'Penyusunan Standar Harga', NULL, NULL),
(1, 5, 2, 3, 201, 2, 'Penyusunan Standar Barang Milik Daerah dan Standar Kebutuhan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 3, 'Penyusunan Perencanaan Kebutuhan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 4, 'Penyusunan Kebijakan Pengelolaan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 5, 'Penatausahaan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 6, 'Inventarisasi Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 7, 'Pengamanan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 8, 'Penilaian Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 9, 'Pengawasan dan Pengendalian Pengelolaan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 10, 'Optimalisasi Penggunaan, Pemanfaatan, Pemindahtanganan, Pemusnahan, dan Penghapusan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 11, 'Rekonsiliasi dalam rangka Penyusunan Laporan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 12, 'Penyusunan Laporan Barang Milik Daerah', NULL, NULL),
(1, 5, 2, 3, 201, 13, 'Pembinaan Pengelolaan Barang Milik Daerah Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 2, 4, 201, 1, 'Perencanaan pengelolaan pajak daerah', NULL, NULL),
(1, 5, 2, 4, 201, 2, 'Analisa dan Pengembangan Pajak Daerah, serta Penyusunan Kebijakan Pajak Daerah.', NULL, NULL),
(1, 5, 2, 4, 201, 3, 'Penyuluhan dan Penyebarluasan Kebijakan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 4, 'Penyediaan Sarana dan Prasarana Pengelolaan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 5, 'Pendataan dan Pendaftaran Objek Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 6, 'Pengolahan, Pemeliharaan, dan Pelaporan Basis Data Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 7, 'Penilaian Pajak Bumi dan Bangunan Perdesaan dan Perkotaan (PBBP2) serta Bea Perolehan Hak atas Tanah dan Bangunan (BPHTB)', NULL, NULL),
(1, 5, 2, 4, 201, 8, 'Penetapan Wajib Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 9, 'Pelayanan dan Konsultasi Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 10, 'Penelitian dan Verifikasi Data Pelaporan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 11, 'Penagihan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 12, 'Penyelesaian Keberatan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 13, 'Pengendalian, Pemeriksaan dan Pengawasan Pajak Daerah', NULL, NULL),
(1, 5, 2, 4, 201, 14, 'Pembinaan dan Pengawasan Pengelolaan Retribusi Daerah', NULL, NULL),
(1, 5, 3, 2, 201, 1, 'Perumusan Bahan Kebijakan Pengadaan ASN', NULL, NULL),
(1, 5, 3, 2, 201, 2, 'Penyusunan Rencana Kebutuhan, Jenis dan Jumlah Jabatan untuk Pelaksanaan Pengadaan ASN', NULL, NULL),
(1, 5, 3, 2, 201, 3, 'Koordinasi dan Fasilitasi Pengadaan PNS dan PPPK', NULL, NULL),
(1, 5, 3, 2, 201, 4, 'Evaluasi Pengadaan ASN dan Pengadaan ASN', NULL, NULL),
(1, 5, 3, 2, 201, 5, 'Perumusan Bahan Kebijakan Pemberhentian ASN', NULL, NULL),
(1, 5, 3, 2, 201, 6, 'Koordinasi Pelaksanaan Administrasi Pemberhentian', NULL, NULL),
(1, 5, 3, 2, 201, 7, 'Evaluasi Pemberhentian ASN', NULL, NULL),
(1, 5, 3, 2, 201, 8, 'Fasilitasi Lembaga Profesi ASN', NULL, NULL),
(1, 5, 3, 2, 201, 9, 'Perumusan Bahan Kebijakan Pengelolaan Data dan Informasi ASN', NULL, NULL),
(1, 5, 3, 2, 201, 10, 'Pengelolaan Sistem Informasi Kepegawaian', NULL, NULL),
(1, 5, 3, 2, 201, 11, 'Pengelolaan Data Kepegawaian', NULL, NULL),
(1, 5, 3, 2, 201, 12, 'Evaluasi Data, Informasi dan Sistem Informasi Kepegawaian', NULL, NULL),
(1, 5, 3, 2, 202, 1, 'Pengelolaan Mutasi ASN', NULL, NULL),
(1, 5, 3, 2, 202, 2, 'Pengelolaan Kenaikan Pangkat ASN', NULL, NULL),
(1, 5, 3, 2, 202, 3, 'Pengelolaan Promosi ASN', NULL, NULL),
(1, 5, 3, 2, 203, 1, 'Peningkatan Kapasitas Kinerja ASN', NULL, NULL),
(1, 5, 3, 2, 203, 2, 'Pengelolaan Assessment Center', NULL, NULL),
(1, 5, 3, 2, 203, 3, 'Pengeloaan Administrasi Diklat dan Sertifikasi ASN', NULL, NULL),
(1, 5, 3, 2, 203, 4, 'Pengelolaan Pendidikan Lanjutan ASN', NULL, NULL),
(1, 5, 3, 2, 203, 5, 'Koordinasi dan Kerjasama Pelaksanaan Diklat', NULL, NULL),
(1, 5, 3, 2, 203, 6, 'Fasilitasi Sertifikasi Jabatan ASN', NULL, NULL),
(1, 5, 3, 2, 203, 7, 'Evaluasi Diklat dan Sertifikasi Jabatan ASN', NULL, NULL),
(1, 5, 3, 2, 203, 8, 'Penyusunan Administrasi Diklat dan Sertifikasi Jabatan Fungsional', NULL, NULL),
(1, 5, 3, 2, 203, 9, 'Koordinasi dan Kerjasama Pelaksanaan Diklat Jabatan Fungsional', NULL, NULL),
(1, 5, 3, 2, 203, 10, 'Fasilitasi Sertifikasi Fungsional ASN', NULL, NULL),
(1, 5, 3, 2, 203, 11, 'Evaluasi Diklat dan Sertfikasi Pejabat Fungsional', NULL, NULL),
(1, 5, 3, 2, 203, 12, 'Sosialisasi dan Penyebaran Informasi Jabatan Fungsional ASN', NULL, NULL),
(1, 5, 3, 2, 203, 13, 'Pembinaan Jabatan Fungsional ASN', NULL, NULL),
(1, 5, 3, 2, 203, 14, 'Fasilitasi Pengembangan Karir dalam Jabatan Fungsional', NULL, NULL),
(1, 5, 3, 2, 203, 15, 'Evaluasi Pengembangan Jabatan Fungsional', NULL, NULL),
(1, 5, 3, 2, 204, 1, 'Penyusunan Kebijakan Penilaian dan Evaluasi Kinerja Aparatur', NULL, NULL),
(1, 5, 3, 2, 204, 2, 'Pelaksanaan Penilaian dan Evaluasi Kinerja Aparatur', NULL, NULL),
(1, 5, 3, 2, 204, 3, 'Evaluasi Hasil Penilaian dan Evaluasi Kinerja Aparatur', NULL, NULL),
(1, 5, 3, 2, 204, 4, 'Pengelolaan Pemberian Penghargaan Bagi Pegawai', NULL, NULL),
(1, 5, 3, 2, 204, 5, 'Pengelolaan Tanda Jasa Bagi Pegawai', NULL, NULL),
(1, 5, 3, 2, 204, 6, 'Evaluasi Pelaksanaan Pemberian Penghargaan dan Tanda Jasa Aparatur', NULL, NULL),
(1, 5, 3, 2, 204, 7, 'Pembinaan Disiplin ASN', NULL, NULL),
(1, 5, 3, 2, 204, 8, 'Pengelolaan Penyelesaian Pelanggaran Disiplin ASN', NULL, NULL),
(1, 5, 3, 2, 204, 9, 'Pelayanan Proses Izin Perceraian Pegawai', NULL, NULL),
(1, 5, 3, 2, 204, 10, 'Evaluasi Disiplin ASN', NULL, NULL),
(1, 5, 4, 2, 201, 1, 'Penyusunan Kebijakan Teknis dan rencana Pengembangan Kompetensi Teknis Umum, Inti, dan pilihan bagi Jabatan Administrasi Penyelenggara Urusan Pemerintahan Konkuren, Perangkat Daerah Penunjang, dan Urusan Pemerintahan Umum', NULL, NULL),
(1, 5, 4, 2, 201, 2, 'Penyusunan Standar Perangkat Pembelajaran Pemerintahan Dalam Negeri Kompetensi Teknis umum, Inti, dan pilihan bagi Jabatan Administrasi Penyelenggara Urusan Pemerintahan Konkuren, Perangkat Daerah Penunjang, dan Urusan Pemerintahan Umum', NULL, NULL),
(1, 5, 4, 2, 201, 3, 'Penyelenggaraan Pengembangan Kompetensi Teknis Umum, Inti, dan pilihan bagi Jabatan Administrasi Penyelenggara Urusan Pemerintahan Konkuren, Perangkat Daerah Penunjang, dan Urusan Pemerintahan Umum', NULL, NULL),
(1, 5, 4, 2, 201, 4, 'Pembinaan, Pengoordinasian, Fasilitasi, Pemantauan, Evaluasi, dan Pelaporan Pengembangan Kompetensi Teknis umum, Inti, dan pilihan bagi Jabatan Administrasi Penyelenggara Urusan Pemerintahan Konkuren, Perangkat Daerah Penunjang, dan Urusan Pemerintahan Umum', NULL, NULL),
(1, 5, 4, 2, 202, 1, 'Penyusunan Kebijakan Teknis dan Rencana Sertifikasi Kompetensi, Pengelolaan Kelembagaan, Tenaga Pengembang Kompetensi, Sumber Belajar, Kerjasama, Pengembangan Kompetensi Pimpinan Daerah, Jabatan Pimpinan Tinggi, Kepemimpinan dan Prajabatan,Sertajabatan Fungsional', NULL, NULL),
(1, 5, 4, 2, 202, 2, 'Pengelolaan Lembaga Sertifikasi Penyelenggara Pemerintahan Dalam Negeri Kabupaten/Kota', NULL, NULL),
(1, 5, 4, 2, 202, 3, 'Pelaksanaan Sertifikasi Kompetensi di Lingkungan Pemerintah Kabupaten/Kota', NULL, NULL),
(1, 5, 4, 2, 202, 4, 'Pengelolaan Kelembagaan, Tenaga Pengembang Kompetensi, dan Sumber Belajar', NULL, NULL),
(1, 5, 4, 2, 202, 5, 'Pelaksanaan Kerjasama Antar Lembaga', NULL, NULL),
(1, 5, 4, 2, 202, 6, 'Penyusunan Standar Perangkat Pembelajaran Pemerintahan Dalam Negeri bagi Pimpinan Daerah, Jabatan Pimpinan Tinggi, dan Jabatan Fungsional', NULL, NULL),
(1, 5, 4, 2, 202, 7, 'Penyelenggaraan Pengembangan Kompetensi bagi Pimpinan Daerah, Jabatan Pimpinan Tinggi, Jabatan Fungsional, Kepemimpinan, dan Prajabatan', NULL, NULL);
INSERT INTO `ref_sub_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`, `sub_kegiatan_kode`, `sub_kegiatan_nama`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 2, 202, 8, 'Pembinaan, Pengoordinasian, Fasilitasi, Pemantauan, Evaluasi, dan Pelaporan Pelaksanaan Sertifikasi, Pengelolaan Kelembagaan dan Tenaga Pengembang Kompetensi, Pengelolaan Sumber Belajar, dan Kerjasama, serta Pengembangan Kompetensi Pimpinan Daerah, Jabatan Pimpinan Tinggi, Kepemimpinan, dan Prajabatan', NULL, NULL),
(1, 5, 5, 2, 201, 1, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Penyelenggaraan Otonomi Daerah', NULL, NULL),
(1, 5, 5, 2, 201, 2, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Pemerintahan Umum', NULL, NULL),
(1, 5, 5, 2, 201, 3, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Kelembagaan dan Ketatalaksanaan', NULL, NULL),
(1, 5, 5, 2, 201, 4, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Aparatur dan Reformasi Birokrasi', NULL, NULL),
(1, 5, 5, 2, 201, 5, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Keuangan dan Aset Daerah, Reformasi Birokrasi', NULL, NULL),
(1, 5, 5, 2, 201, 6, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Ketertiban dan Ketentraman Umum dan Perlindungan Masyarakat', NULL, NULL),
(1, 5, 5, 2, 201, 7, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Penataan Kelembagaan Desa', NULL, NULL),
(1, 5, 5, 2, 201, 8, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Ketatalaksanaan Desa', NULL, NULL),
(1, 5, 5, 2, 201, 9, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Aparatur Desa', NULL, NULL),
(1, 5, 5, 2, 201, 10, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Keuangan dan Aset Desa', NULL, NULL),
(1, 5, 5, 2, 201, 11, 'Fasilitasi, Pelaksanaan dan Evaluasi Penelitian dan Pengembangan Bidang Badan Usaha Milik Desa', NULL, NULL),
(1, 5, 5, 2, 201, 12, 'Pengelolaan Data Kelitbangan dan Peraturan', NULL, NULL),
(1, 5, 5, 2, 201, 13, 'Perumusan Rekomendasi Atas Rencana Penetapan Peraturan Baru dan/atau Evaluasi terhadap Pelaksanaan Peraturan', NULL, NULL),
(1, 5, 5, 2, 201, 14, 'Fasilitasi dan Evaluasi Pelaksanaan Kegiatan Data dan Pengkajian Peraturan', NULL, NULL),
(1, 5, 5, 2, 201, 15, 'Fasilitasi Pemberian Rekomendasi Penelitian bagi Warga Negara Asing untuk Diterbitkannya Izin Penelitian oleh Instansi yang Berwenang', NULL, NULL),
(1, 5, 5, 2, 202, 1, 'Penelitian dan Pengembangan Bidang Aspek-Aspek Sosial', NULL, NULL),
(1, 5, 5, 2, 202, 2, 'Penelitian dan Pengembangan Pemberdayaan Perempuan dan Perlindungan Anak', NULL, NULL),
(1, 5, 5, 2, 202, 3, 'Penelitian dan Pengembangan Pendidikan dan Kebudayaan', NULL, NULL),
(1, 5, 5, 2, 202, 4, 'Penelitian dan Pengembangan Kepemudaan dan Olahraga', NULL, NULL),
(1, 5, 5, 2, 202, 5, 'Penelitian dan Pengembangan Pariwisata', NULL, NULL),
(1, 5, 5, 2, 202, 6, 'Penelitian dan Pengembangan Kesehatan', NULL, NULL),
(1, 5, 5, 2, 202, 7, 'Penelitian dan Pengembangan Pengendalian Penduduk dan Keluarga Berencana', NULL, NULL),
(1, 5, 5, 2, 202, 8, 'Penelitian dan Pengembangan Administrasi Kependudukan dan Pencatatan Sipil', NULL, NULL),
(1, 5, 5, 2, 202, 9, 'Penelitian dan Pengembangan Tenaga Kerja', NULL, NULL),
(1, 5, 5, 2, 202, 10, 'Penelitian dan Pengembangan Partisipasi Masyarakat', NULL, NULL),
(1, 5, 5, 2, 202, 11, 'Penelitian dan Pengembangan Transmigrasi', NULL, NULL),
(1, 5, 5, 2, 203, 1, 'Penelitian dan Pengembangan Koperasi, Usaha Kecil dan Menengah', NULL, NULL),
(1, 5, 5, 2, 203, 2, 'Penelitian dan Pengembangan Perindustrian dan Perdagangan', NULL, NULL),
(1, 5, 5, 2, 203, 3, 'Penelitian dan Pengembangan Badan Usaha Milik Daerah', NULL, NULL),
(1, 5, 5, 2, 203, 4, 'Penelitian dan Pengembangan Pertanian, Perkebunan dan Pangan', NULL, NULL),
(1, 5, 5, 2, 203, 5, 'Penelitian dan Pengembangan Kelautan dan Perikanan', NULL, NULL),
(1, 5, 5, 2, 203, 6, 'Penelitian dan Pengembangan Energi dan Sumberdaya Mineral', NULL, NULL),
(1, 5, 5, 2, 203, 7, 'Penelitian dan Pengembangan Lingkungan Hidup', NULL, NULL),
(1, 5, 5, 2, 203, 8, 'Penelitian dan Pengembangan Kehutanan', NULL, NULL),
(1, 5, 5, 2, 203, 9, 'Penelitian dan Pengembangan Pekerjaan Umum', NULL, NULL),
(1, 5, 5, 2, 203, 10, 'Penelitian dan Pengembangan Perhubungan', NULL, NULL),
(1, 5, 5, 2, 203, 11, 'Penelitian dan Pengembangan Perumahan dan Kawasan Permukiman', NULL, NULL),
(1, 5, 5, 2, 203, 12, 'Penelitian dan Pengembangan Penataan Ruang dan Pertanahan', NULL, NULL),
(1, 5, 5, 2, 203, 13, 'Penelitian dan Pengembangan Komunikasi dan Informatika', NULL, NULL),
(1, 5, 5, 2, 204, 1, 'Penelitian, Pengembangan, dan Perekayasaan di Bidang Teknologi dan Inovasi', NULL, NULL),
(1, 5, 5, 2, 204, 2, 'Uji Coba dan Penerapan Rancang Bangun/Model Replikasi dan Invensi di Bidang Difusi Inovasi dan Penerapan Teknologi', NULL, NULL),
(1, 5, 5, 2, 204, 3, 'Diseminasi Jenis, Prosedur dan Metode Penyelenggaraan Pemerintahan Daerah Yang Bersifat Inovatif', NULL, NULL),
(1, 5, 5, 2, 204, 4, 'Sosialisasi dan Diseminasi Hasil-Hasil Kelitbangan', NULL, NULL),
(1, 5, 5, 2, 204, 5, 'Fasilitasi Hak Kekayaan Intelektual', NULL, NULL),
(1, 5, 6, 2, 201, 1, 'Koordinasi, Integrasi, dan Sinkronisasi Kebijakan Otonomi Daerah', NULL, NULL),
(1, 5, 6, 2, 201, 2, 'Penyusunan Rencana Aksi Pembangunan Kawasan Perbatasan', NULL, NULL),
(1, 5, 6, 2, 202, 1, 'Koordinasi, Integrasi, dan Sinkronisasi Pembangunan Kawasan Perbatasan', NULL, NULL),
(1, 5, 6, 2, 202, 2, 'Koordinasi, Integrasi, dan Sinkronisasi Pemanfaatan Kawasan Perbatasan', NULL, NULL),
(1, 5, 6, 2, 202, 3, 'Penjagaan dan Pemeliharaan Tanda Batas Wilayah Negara', NULL, NULL),
(1, 5, 6, 2, 202, 4, 'Penjagaan dan Pemeliharaan Tanda Batas Daerah', NULL, NULL),
(1, 5, 6, 2, 202, 5, 'Koordinasi Pelaksanaan Tugas Pembangunan di Kawasan Perbatasan di Wilayah Kabupaten/Kota', NULL, NULL),
(1, 5, 6, 2, 203, 1, 'Pengendalian dan Pengawasan serta Evaluasi Pelaksanaan Pembangunan Kawasan Perbatasan', NULL, NULL),
(1, 5, 6, 2, 203, 2, 'Pelaporan Pelaksanaan Pembangunan Kawasan Perbatasan', NULL, NULL),
(1, 6, 1, 2, 201, 1, 'Pengawasan Kinerja Pemerintah Daerah', NULL, NULL),
(1, 6, 1, 2, 201, 2, 'Pengawasan Keuangan Pemerintah Daerah', NULL, NULL),
(1, 6, 1, 2, 201, 3, 'Reviu Laporan Kinerja', NULL, NULL),
(1, 6, 1, 2, 201, 4, 'Reviu Laporan Keuangan', NULL, NULL),
(1, 6, 1, 2, 201, 5, 'Pengawasan Desa', NULL, NULL),
(1, 6, 1, 2, 201, 6, 'Kerjasama Pengawasan Internal', NULL, NULL),
(1, 6, 1, 2, 201, 7, 'Monitoring dan Evaluasi Tindak Lanjut Hasil Pemeriksaan BPK RI dan Tindak Lanjut Hasil Pemeriksaan APIP', NULL, NULL),
(1, 6, 1, 2, 202, 1, 'Penanganan Penyelesaian Kerugian Negara/Daerah', NULL, NULL),
(1, 6, 1, 2, 202, 2, 'Pengawasan Dengan Tujuan Tertentu', NULL, NULL),
(1, 6, 1, 3, 201, 1, 'Perumusan Kebijakan Teknis di Bidang Pengawasan', NULL, NULL),
(1, 6, 1, 3, 201, 2, 'Perumusan Kebijakan Teknis di Bidang Fasilitasi Pengawasan', NULL, NULL),
(1, 6, 1, 3, 202, 1, 'Pendampingan dan Asistensi Urusan Pemerintahan Daerah', NULL, NULL),
(1, 6, 1, 3, 202, 2, 'Pendampingan, Asistensi, Verifikasi, dan Penilaian Reformasi Birokrasi', NULL, NULL),
(1, 6, 1, 3, 202, 3, 'Koordinasi, Monitoring dan Evaluasi serta Verifikasi Pencegahan dan Pemberantasan Korupsi', NULL, NULL),
(1, 6, 1, 3, 202, 4, 'Pendampingan, Asistensi dan Verifikasi Penegakan Integritas', NULL, NULL),
(1, 7, 1, 2, 201, 1, 'Koordinasi/Sinergi Perencanaan dan Pelaksanaan Kegiatan Pemerintahan dengan Perangkat Daerah dan Instansi Vertikal Terkait', NULL, NULL),
(1, 7, 1, 2, 201, 2, 'Peningkatan Efektifitas Kegiatan Pemerintahan di Tingkat Kecamatan', NULL, NULL),
(1, 7, 1, 2, 202, 1, 'Perencanaan Kegiatan Pelayanan kepada Masyarakat di Kecamatan', NULL, NULL),
(1, 7, 1, 2, 202, 2, 'Fasilitasi Percepatan Pencapaian Standar Pelayanan Minimal di Wilayah Kecamatan', NULL, NULL),
(1, 7, 1, 2, 202, 3, 'Peningkatan Efektifitas Pelaksanaan Pelayanan kepada Masyarakat di Wilayah Kecamatan', NULL, NULL),
(1, 7, 1, 2, 203, 1, 'Koordinasi/Sinergi dengan Perangkat Daerah dan/atau Instansi Vertikal yang terkait dalam Pemeliharaan Sarana dan Prasarana Pelayanan Umum', NULL, NULL),
(1, 7, 1, 2, 203, 2, 'Pelaksanaan Pemeliharaan Prasarana dan Fasilitas Pelayanan Umum yang Melibatkan Pihak Swasta', NULL, NULL),
(1, 7, 1, 2, 204, 1, 'Pelaksanaan Urusan Pemerintahan yang terkait dengan Pelayanan Perizinan Non Usaha', NULL, NULL),
(1, 7, 1, 2, 204, 2, 'Pelaksanaan Urusan Pemerintahan yang terkait dengan Nonperizinan', NULL, NULL),
(1, 7, 1, 2, 204, 3, 'Pelaksanaan Urusan Pemerintahan yang terkait dengan Kewenangan Lain yang Dilimpahkan', NULL, NULL),
(1, 7, 1, 3, 201, 1, 'Peningkatan Partisipasi Masyarakat dalam Forum Musyawarah Perencanaan Pembangunan di Desa', NULL, NULL),
(1, 7, 1, 3, 201, 2, 'Sinkronisasi Program Kerja dan Kegiatan Pemberdayaan Masyarakat yang dilakukan oleh Pemerintah dan Swasta di Wilayah Kerja Kecamatan', NULL, NULL),
(1, 7, 1, 3, 201, 3, 'Peningkatan Efektifitas Kegiatan Pemberdayaan Masyarakat di Wilayah Kecamatan', NULL, NULL),
(1, 7, 1, 3, 202, 1, 'Peningkatan Partisipasi Masyarakat dalam Forum Musyawarah Perencanaan Pembangunan di Kelurahan', NULL, NULL),
(1, 7, 1, 3, 202, 2, 'Pembangunan Sarana dan Prasarana Kelurahan', NULL, NULL),
(1, 7, 1, 3, 202, 3, 'Pemberdayaan Masyarakat di Kelurahan', NULL, NULL),
(1, 7, 1, 3, 202, 4, 'Evaluasi Kelurahan', NULL, NULL),
(1, 7, 1, 3, 203, 1, 'Penyelenggaraan Lembaga Kemasyarakatan', NULL, NULL),
(1, 7, 1, 3, 203, 2, 'Peningkatan Kapasitas Lembaga Kemasyarakatan', NULL, NULL),
(1, 7, 1, 3, 203, 3, 'Penyediaan Sarana dan Prasarana Lembaga Kemasyarakatan', NULL, NULL),
(1, 7, 1, 3, 203, 4, 'Fasilitasi Pengembangan Usaha Ekonomi Masyarakat', NULL, NULL),
(1, 7, 1, 3, 203, 5, 'Fasilitasi Pemanfaatan Teknologi Tepat Guna', NULL, NULL),
(1, 7, 1, 3, 204, 1, 'Penyelenggaraan Mukim', NULL, NULL),
(1, 7, 1, 3, 204, 2, 'Peningkatan Kapasitas Mukim dan Tuha Peut Mukim', NULL, NULL),
(1, 7, 1, 3, 204, 3, 'Peresmian Mukim', NULL, NULL),
(1, 7, 1, 3, 204, 4, 'Pelantikan Imeum Mukim', NULL, NULL),
(1, 7, 1, 3, 204, 5, 'Penyediaan Sarana dan Prasarana Mukim', NULL, NULL),
(1, 7, 1, 3, 205, 1, 'Pencegahan Covid-19 di Tingkat Desa dan Kelurahan', NULL, NULL),
(1, 7, 1, 3, 205, 2, 'Penanganan Covid-19 di Tingkat Desa dan Kelurahan', NULL, NULL),
(1, 7, 1, 3, 205, 3, 'Pembinaan Penanganan Covid-19 di Tingkat Desa dan Kelurahan', NULL, NULL),
(1, 7, 1, 3, 205, 4, 'Pengadaan Pendukung Pelaksanaan Penangan Covid-19 di Tingkat Desa dan Kelurahan', NULL, NULL),
(1, 7, 1, 4, 201, 1, 'Sinergitas dengan Kepolisian Negara Republik Indonesia, Tentara Nasional Indonesia dan Instansi Vertikal di Wilayah Kecamatan', NULL, NULL),
(1, 7, 1, 4, 201, 2, 'Harmonisasi Hubungan Dengan Tokoh Agama dan Tokoh Masyarakat', NULL, NULL),
(1, 7, 1, 4, 202, 1, 'Koordinasi/Sinergi Dengan Perangkat Daerah yang Tugas dan Fungsinya di Bidang Penegakan Peraturan Perundang-Undangan dan/atau Kepolisian Negara Republik Indonesia', NULL, NULL),
(1, 7, 1, 4, 203, 1, 'Sinergitas dengan Kepolisian Negara Republik Indonesia, Tentara Nasional Indonesia dan Instansi Vertikal di Wilayah Kecamatan', NULL, NULL),
(1, 7, 1, 4, 203, 2, 'Harmonisasi Hubungan dengan Tokoh Agama dan Tokoh Masyarakat', NULL, NULL),
(1, 7, 1, 4, 204, 1, 'Koordinasi/Sinergi dengan Perangkat Daerah yang Tugas dan Fungsinya di Bidang Penegakan Peraturan Perndang-Undangan dan/atau Kepolisian Negara Republik Indonesia', NULL, NULL),
(1, 7, 1, 5, 201, 1, 'Pembinaan Wawasan Kebangsaan dan Ketahanan Nasional dalam rangka Memantapkan Pengamalan Pancasila, Pelaksanaan Undang-Undang Dasar Negara Republik Indonesia Tahun 1945, Pelestarian Bhinneka Tunggal Ika serta Pemertahanan dan Pemeliharaan Keutuhan Negara Kesatuan Republik Indonesia', NULL, NULL),
(1, 7, 1, 5, 201, 2, 'Fasilitasi, Koordinasi dan Pembinaan (Bimtek, Sosialisasi, Konsultasi) Wawasan Kebangsaan dan Ketahanan Nasional', NULL, NULL),
(1, 7, 1, 5, 201, 3, 'Pembinaan Persatuan dan Kesatuan Bangsa', NULL, NULL),
(1, 7, 1, 5, 201, 4, 'Pembinaan Kerukunan Antarsuku dan Intrasuku, Umat Beragama, Ras, dan Golongan Lainnya Guna Mewujudkan Stabilitas Keamanan Lokal, Regional, dan Nasional', NULL, NULL),
(1, 7, 1, 5, 201, 5, 'Penanganan Konflik Sosial sesuai Ketentuan Peraturan Perundang-Undangan', NULL, NULL),
(1, 7, 1, 5, 201, 6, 'Pengembangan Kehidupan Demokrasi Berdasarkan Pancasila', NULL, NULL),
(1, 7, 1, 5, 201, 7, 'Pelaksanaan semua Urusan Pemerintahan yang bukan merupakan Kewenangan Daerah dan tidak dilaksanakan oleh Instansi Vertikal', NULL, NULL),
(1, 7, 1, 5, 201, 8, 'Pelaksanaan Tugas Forum Koordinasi Pimpinan di Kecamatan', NULL, NULL),
(1, 7, 1, 6, 201, 1, 'Fasilitasi Penyusunan Peraturan Desa dan Peraturan Kepala Desa', NULL, NULL),
(1, 7, 1, 6, 201, 2, 'Fasilitasi Administrasi Tata Pemerintahan Desa', NULL, NULL),
(1, 7, 1, 6, 201, 3, 'Fasilitasi Pengelolaan Keuangan Desa dan Pendayagunaan Aset Desa', NULL, NULL),
(1, 7, 1, 6, 201, 4, 'Fasilitasi Penerapan dan Penegakan Peraturan Perundang-Undangan', NULL, NULL),
(1, 7, 1, 6, 201, 5, 'Fasilitasi Pelaksanaan Tugas Kepala Desa dan Perangkat Desa', NULL, NULL),
(1, 7, 1, 6, 201, 6, 'Fasilitasi Pelaksanaan Pemilihan Kepala Desa', NULL, NULL),
(1, 7, 1, 6, 201, 7, 'Fasilitasi Pelaksanaan Tugas dan Fungsi Badan Permusyawaratan Desa', NULL, NULL),
(1, 7, 1, 6, 201, 8, 'Rekomendasi Pengangkatan dan Pemberhentian Perangkat Desa', NULL, NULL),
(1, 7, 1, 6, 201, 9, 'Fasilitasi Sinkronisasi Perencanaan Pembangunan Daerah dengan Pembangunan Desa', NULL, NULL),
(1, 7, 1, 6, 201, 10, 'Fasilitasi Penetapan Lokasi Pembangunan Kawasan Perdesaan', NULL, NULL),
(1, 7, 1, 6, 201, 11, 'Fasilitasi Penyelenggaraan Ketenteraman dan Ketertiban Umum', NULL, NULL),
(1, 7, 1, 6, 201, 12, 'Fasilitasi Pelaksanaan Tugas, Fungsi, dan Kewajiban Lembaga Kemasyarakatan', NULL, NULL),
(1, 7, 1, 6, 201, 13, 'Fasilitasi Penyusunan Perencanaan Pembangunan Partisipatif', NULL, NULL),
(1, 7, 1, 6, 201, 14, 'Fasilitasi Kerja Sama Antardesa dan Kerja Sama Desa dengan Pihak Ketiga', NULL, NULL),
(1, 7, 1, 6, 201, 15, 'Fasilitasi Penataan, Pemanfaatan, dan Pendayagunaan Ruang Desa Serta Penetapan dan Penegasan Batas Desa', NULL, NULL),
(1, 7, 1, 6, 201, 16, 'Fasilitasi Penyusunan Program dan Pelaksanaan Pemberdayaan Masyarakat Desa', NULL, NULL),
(1, 7, 1, 6, 201, 17, 'Koordinasi Pendampingan Desa di Wilayahnya', NULL, NULL),
(1, 7, 1, 6, 201, 18, 'Koordinasi Pelaksanaan Pembangunan Kawasan Perdesaan di Wilayah Kecamatan', NULL, NULL),
(1, 8, 1, 2, 201, 1, 'Penyusunan Program Kerja di Bidang Ideologi Wawasan Kebangsaan, Bela Negara, Karakter Bangsa, Pembauran Kebangsaan, Bineka Tunggal Ika dan Sejarah Kebangsaan', NULL, NULL),
(1, 8, 1, 2, 201, 2, 'Perumusan Kebijakan Teknis di Bidang Ideologi Wawasan Kebangsaan, Bela Negara, Karakter Bangsa, Pembauran Kebangsaan, Bineka Tunggal Ika dan Sejarah Kebangsaan', NULL, NULL),
(1, 8, 1, 2, 201, 3, 'Pelaksanaan Kebijakan di Bidang Ideologi Wawasan Kebangsaan, Bela Negara, Karakter Bangsa, Pembauran Kebangsaan, Bineka Tunggal Ika dan Sejarah Kebangsaan', NULL, NULL),
(1, 8, 1, 2, 201, 4, 'Pelaksanaan Koordinasi di Bidang Ideologi Wawasan Kebangsaan, Bela Negara, Karakter Bangsa, Pembauran Kebangsaan, Bineka Tunggal Ika dan Sejarah Kebangsaan', NULL, NULL),
(1, 8, 1, 2, 201, 5, 'Pelaksanaan Monitoring Evaluasi dan Pelaporan di Bidang Ideologi Wawasan Kebangsaan, Bela Negara, Karakter Bangsa, Pembauran Kebangsaan, Bineka Tunggal Ika dan Sejarah Kebangsaan', NULL, NULL),
(1, 8, 1, 2, 201, 6, 'Pembentukan dan Penumbuhan Karakter Keluarga Melalui Peningkatan Kesadaran Masyarakat Akan Pentingnya Penghayatan dan Pengamalan Pancasila Dalam Semua Aspek Kehidupan Bermasyarakat, Berbangsa, dan Bernegara', NULL, NULL),
(1, 8, 1, 3, 201, 1, 'Penyusunan Program Kerja di Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik di Daerah', NULL, NULL),
(1, 8, 1, 3, 201, 2, 'Penyusunan Bahan Perumusan Kebijakan di Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik Di Daerah', NULL, NULL),
(1, 8, 1, 3, 201, 3, 'Pelaksanaan Kebijakan Di Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik Di Daerah', NULL, NULL),
(1, 8, 1, 3, 201, 4, 'Pelaksanaan Koordinasi Di Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik di Daerah', NULL, NULL),
(1, 8, 1, 3, 201, 5, 'Pelaksanaan Monitoring, Evaluasi dan Pelaporan di Bidang Pendidikan Politik, Etika Budaya Politik, Peningkatan Demokrasi, Fasilitasi Kelembagaan Pemerintahan, Perwakilan dan Partai Politik, Pemilihan Umum/Pemilihan Umum Kepala Daerah, serta Pemantauan Situasi Politik di Daerah', NULL, NULL),
(1, 8, 1, 4, 201, 1, 'Penyusunan Program Kerja dibidang Pendaftaran Ormas, Pemberdayaan Ormas, Evaluasi dan Mediasi Sengketa Ormas, Pengawasan Ormas dan Ormas Asing di Daerah', NULL, NULL),
(1, 8, 1, 4, 201, 2, 'Penyusunan Bahan Perumusan Kebijakan dibidang Pendaftaran Ormas, Pemberdayaan Ormas, Evaluasi dan Mediasi Sengketa Ormas, Pengawasan Ormas dan Ormas Asing di Daerah', NULL, NULL),
(1, 8, 1, 4, 201, 3, 'Pelaksanaan Kebijakan dibidang Pendaftaran Ormas, Pemberdayaan Ormas, Evaluasi dan Mediasi Sengketa Ormas, Pengawasan Ormas dan Ormas Asing di Daerah', NULL, NULL),
(1, 8, 1, 4, 201, 4, 'Pelaksanaan Koordinasi dibidang Pendaftaran Ormas, Pemberdayaan Ormas, Evaluasi dan Mediasi Sengketa Ormas, Pengawasan Ormas dan Ormas Asing di Daerah', NULL, NULL),
(1, 8, 1, 4, 201, 5, 'Pelaksanaan Monitoring Evaluasi dan Pelaporan Dibidang Pendaftaran Ormas, Pemberdayaan Ormas, Evaluasi dan Mediasi Sengketa Ormas, Pengawasan Ormas dan Ormas Asing di Daerah', NULL, NULL),
(1, 8, 1, 5, 201, 1, 'Penyusunan Program Kerja di Bidang Ketahanan Ekonomi, Sosial, Budaya dan Fasilitasi Pencegahan Penyalagunaan Narkotika, Fasilitasi Kerukunan Umat Beragama dan Penghayat Kepercayaan di Daerah', NULL, NULL),
(1, 8, 1, 5, 201, 2, 'Penyusunan Bahan Perumusan Kebijakan di Bidang Ketahanan Ekonomi, Sosial, Budaya dan Fasilitasi Pencegahan Penyalagunaan Narkotika, Fasilitasi Kerukunan Umat Beragama dan Penghayat Kepercayaan di Daerah', NULL, NULL),
(1, 8, 1, 5, 201, 3, 'Pelaksanaan Kebijakan di Bidang Ketahanan Ekonomi, Sosial, Budaya dan Fasilitasi Pencegahan Penyalagunaan Narkotika, Fasilitasi Kerukunan Umat Beragama dan Penghayat Kepercayaan di Daerah', NULL, NULL),
(1, 8, 1, 5, 201, 4, 'Pelaksanaan Koordinasi di Bidang Ketahanan Ekonomi, Sosial, Budaya dan Fasilitasi Pencegahan Penyalagunaan Narkotika, Fasilitasi Kerukunan Umat Beragama dan Penghayat Kepercayaan di Daerah', NULL, NULL),
(1, 8, 1, 5, 201, 5, 'Pelaksanaan Monitoring, Evaluasi dan Pelaporan di Bidang Ketahanan Ekonomi, Sosial, Budaya dan Fasilitasi Pencegahan Penyalagunaan Narkotika, Fasilitasi Kerukunan Umat Beragama dan Penghayat Kepercayaan di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 1, 'Penyusunan Program Kerja di Bidang Kewaspadaan Dini, Kerjasama Intelijen, Pemantauan Orang Asing, Tenaga Kerja Asing dan Lembaga Asing, Kewaspadaan Perbatasan Antar Negara, Fasilitasi Kelembagaan Bidang Kewaspadaan, serta Penanganan Konflik di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 2, 'Penyusunan Bahan Perumusan Kebijakan di Bidang Kewaspadaan Dini, Kerjasama Intelijen, Pemantauan Orang Asing, Tenaga Kerja Asing dan Lembaga Asing, Kewaspadaan Perbatasan Antar Negara, Fasilitasi Kelembagaan Bidang Kewaspadaan, serta Penanganan Konflik di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 3, 'Pelaksanaan Kebijakan di Bidang Kewaspadaan Dini, Kerjasama Intelijen, Pemantauan Orang Asing, Tenaga Kerja Asing dan Lembaga Asing, Kewaspadaan Perbatasan Antar Negara, Fasilitasi Kelembagaan Bidang Kewaspadaan, serta Penanganan Konflik di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 4, 'Pelaksanaan Koordinasi di Bidang Kewaspadaan Dini, Kerjasama Intelijen, Pemantauan Orang Asing, Tenaga Kerja Asing dan Lembaga Asing, Kewaspadaan Perbatasan Antar Negara, Fasilitasi Kelembagaan Bidang Kewaspadaan, serta Penanganan Konflik di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 5, 'Pelaksanaan Monitoring, Evaluasi dan Pelaporan di Bidang Kewaspadaan Dini, Kerjasama Intelijen, Pemantauan Orang Asing, Tenaga Kerja Asing dan Lembaga Asing, Kewaspadaan Perbatasan Antar Negara, Fasilitasi Kelembagaan Bidang Kewaspadaan, serta Penanganan Konflik di Daerah', NULL, NULL),
(1, 8, 1, 6, 201, 6, 'Pelaksanaan Forum Koordinasi Pimpinan Daerah Kabupaten/Kota', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_sumber_dana`
--

CREATE TABLE `ref_sumber_dana` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sumber_dana_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_sumber_dana`
--

INSERT INTO `ref_sumber_dana` (`id`, `sumber_dana_nama`, `created_at`, `updated_at`) VALUES
(1, 'PAD', NULL, NULL),
(2, 'DAK', NULL, NULL),
(3, 'DAU', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_urusan`
--

CREATE TABLE `ref_urusan` (
  `permen_ver` int(10) UNSIGNED NOT NULL,
  `urusan_kode` int(10) UNSIGNED NOT NULL,
  `urusan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_urusan`
--

INSERT INTO `ref_urusan` (`permen_ver`, `urusan_kode`, `urusan_nama`, `created_at`, `updated_at`) VALUES
(1, 0, '', NULL, NULL),
(1, 1, 'URUSAN PEMERINTAHAN WAJIB YANG BERKAITAN DENGAN PELAYANAN DASAR', NULL, NULL),
(1, 2, 'URUSAN PEMERINTAHAN WAJIB YANG TIDAK BERKAITAN DENGAN PELAYANAN DASAR', NULL, NULL),
(1, 3, 'URUSAN PEMERINTAHAN PILIHAN', NULL, NULL),
(1, 4, 'UNSUR PENDUKUNG URUSAN PEMERINTAHAN', NULL, NULL),
(1, 5, 'UNSUR PENUNJANG URUSAN PEMERINTAHAN', NULL, NULL),
(1, 6, 'UNSUR PENGAWASAN URUSAN PEMERINTAHAN', NULL, NULL),
(1, 7, 'UNSUR KEWILAYAHAN', NULL, NULL),
(1, 8, 'UNSUR PEMERINTAHAN UMUM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ta_renstra_kegiatan_indikator`
--

CREATE TABLE `ta_renstra_kegiatan_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renstra_kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_kegiatan_indikator_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `renstra_kegiatan_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_kegiatan_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `renstra_kegiatan_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_kegiatan_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_kegiatan_indikator_th0_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th0_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th0_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_realisasi_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_capaian_target` double DEFAULT NULL,
  `renstra_kegiatan_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta_renstra_sub_kegiatan_indikator`
--

CREATE TABLE `ta_renstra_sub_kegiatan_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `renstra_sub_kegiatan_id` bigint(20) UNSIGNED NOT NULL,
  `renstra_sub_kegiatan_indikator_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `renstra_sub_kegiatan_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th0_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_realisasi_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_capaian_target` double DEFAULT NULL,
  `renstra_sub_kegiatan_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
--

CREATE TABLE `ta_rkpd_sub_kegiatan_indikator_sumber_dana` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rkpd_sub_kegiatan_indikator_id` bigint(20) UNSIGNED NOT NULL,
  `sumber_dana_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ta_rpjmd_program_indikator`
--

CREATE TABLE `ta_rpjmd_program_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_program_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_program_indikator_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rpjmd_program_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_program_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `rpjmd_program_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_program_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_program_indikator_th0_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_realisasi_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_capaian_target` double DEFAULT NULL,
  `rpjmd_program_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_rpjmd_program_indikator`
--

INSERT INTO `ta_rpjmd_program_indikator` (`id`, `rpjmd_program_id`, `rpjmd_program_indikator_nama`, `rpjmd_program_indikator_formula`, `rpjmd_program_indikator_nilai_jenis`, `rpjmd_program_indikator_nilai_json`, `rpjmd_program_indikator_satuan`, `rpjmd_program_indikator_th0_realisasi_target`, `rpjmd_program_indikator_th0_realisasi_pagu`, `rpjmd_program_indikator_th1_target`, `rpjmd_program_indikator_th1_pagu`, `rpjmd_program_indikator_th1_realisasi_target`, `rpjmd_program_indikator_th1_realisasi_pagu`, `rpjmd_program_indikator_th1_capaian_target`, `rpjmd_program_indikator_th1_capaian_pagu`, `rpjmd_program_indikator_th2_target`, `rpjmd_program_indikator_th2_pagu`, `rpjmd_program_indikator_th2_realisasi_target`, `rpjmd_program_indikator_th2_realisasi_pagu`, `rpjmd_program_indikator_th2_capaian_target`, `rpjmd_program_indikator_th2_capaian_pagu`, `rpjmd_program_indikator_th3_target`, `rpjmd_program_indikator_th3_pagu`, `rpjmd_program_indikator_th3_realisasi_target`, `rpjmd_program_indikator_th3_realisasi_pagu`, `rpjmd_program_indikator_th3_capaian_target`, `rpjmd_program_indikator_th3_capaian_pagu`, `rpjmd_program_indikator_th4_target`, `rpjmd_program_indikator_th4_pagu`, `rpjmd_program_indikator_th4_realisasi_target`, `rpjmd_program_indikator_th4_realisasi_pagu`, `rpjmd_program_indikator_th4_capaian_target`, `rpjmd_program_indikator_th4_capaian_pagu`, `rpjmd_program_indikator_th5_target`, `rpjmd_program_indikator_th5_pagu`, `rpjmd_program_indikator_th5_realisasi_target`, `rpjmd_program_indikator_th5_realisasi_pagu`, `rpjmd_program_indikator_th5_capaian_target`, `rpjmd_program_indikator_th5_capaian_pagu`, `rpjmd_program_indikator_th6_target`, `rpjmd_program_indikator_th6_pagu`, `rpjmd_program_indikator_th6_realisasi_target`, `rpjmd_program_indikator_th6_realisasi_pagu`, `rpjmd_program_indikator_th6_capaian_target`, `rpjmd_program_indikator_th6_capaian_pagu`, `created_at`, `updated_at`) VALUES
(1, 1, 'Persentase Desa yang tertib administrasi', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:09:07', '2022-08-04 04:09:07'),
(2, 1, 'Presentase Bumdes yang Dibina', NULL, 1, '[]', '%', 10, NULL, 15, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 25.4, NULL, NULL, NULL, NULL, NULL, 29.37, NULL, NULL, NULL, NULL, NULL, 33.33, NULL, NULL, NULL, NULL, NULL, 33.33, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:10:51', '2022-08-04 04:10:51'),
(3, 2, 'Persentase Lembaga Kemasyarakatan dan Lembaga Desa yang diberdayakan/dibina', NULL, 1, '[]', '%', 70, NULL, 75, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 85.71, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:12:46', '2022-08-04 04:12:46'),
(4, 3, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:14:35', '2022-08-04 04:14:35'),
(5, 4, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:16:12', '2022-08-04 04:16:12'),
(6, 5, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:17:21', '2022-08-04 04:17:21'),
(7, 6, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:21:40', '2022-08-04 04:21:40'),
(8, 7, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:23:53', '2022-08-04 04:23:53'),
(9, 8, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:25:16', '2022-08-04 04:25:16'),
(10, 9, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:26:29', '2022-08-04 04:26:29'),
(11, 10, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:27:37', '2022-08-04 04:27:37'),
(12, 11, 'Persentase Keg Pemberdayaan Masyarakat pada APBDKelurahan dan APBDesa', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 04:29:24', '2022-08-04 04:29:24'),
(13, 12, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:43:16', '2022-08-04 07:43:16'),
(14, 13, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:44:38', '2022-08-04 07:44:38'),
(15, 14, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:45:53', '2022-08-04 07:45:53'),
(16, 15, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:47:24', '2022-08-04 07:47:24'),
(17, 16, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:49:44', '2022-08-04 07:49:44'),
(18, 17, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:50:58', '2022-08-04 07:50:58'),
(19, 18, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:52:17', '2022-08-04 07:52:17'),
(20, 19, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:53:53', '2022-08-04 07:53:53'),
(21, 20, 'JUMLAH DESA YANG AKAN DILAKUKAN PEMBINAAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 07:55:01', '2022-08-04 07:55:01'),
(22, 21, 'Persentase Peningkatan Status Desa Berkembang', NULL, 1, '[]', '%', 10, NULL, 12, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:24:05', '2022-08-04 08:24:05'),
(23, 21, 'Persentase Peningkatan Status Desa Maju', NULL, 1, '[]', '%', 10, NULL, 12, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:27:48', '2022-08-04 08:27:48'),
(24, 21, 'Persentase Peningkatan Status Desa Sangat Tertinggal', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:28:37', '2022-08-04 08:28:37'),
(25, 21, 'Persentase Peningkatan Status Desa Tertinggal', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:29:04', '2022-08-04 08:29:04'),
(26, 22, 'Persentase desa yang melakukan kerjasama antar desa', NULL, 1, '[]', '%', 10, NULL, 15, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 22.22, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:31:14', '2022-08-04 08:31:14'),
(27, 23, 'Persentase Jumlah BMD yang terkelola dengan tertib dan baik', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:49:07', '2022-08-04 08:49:07'),
(28, 24, 'Deviasi realisasi belanja terhadap belanja total dalam APBD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:50:50', '2022-08-04 08:50:50'),
(29, 24, 'Persentase anggaran sisa terhadap total anggaran tahun sebelumnya', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:51:31', '2022-08-04 08:51:31'),
(30, 24, 'Rasio Belanja Pegawai di luar guru dan tenaga kesehatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:52:02', '2022-08-04 08:52:02'),
(31, 24, 'Rasio Belanja Urusan Pemerintahan Umum (dikurangi transfer expenditures )', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:52:37', '2022-08-04 08:52:37'),
(32, 25, 'Persentase realisasi penerimaan pajak daerah', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:53:54', '2022-08-04 08:53:54'),
(33, 25, 'Rasio Pajak dan Retribusi Daerah terhadap Total PAD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:54:26', '2022-08-04 08:54:26'),
(34, 26, 'Persentase OPD yang Mendapat Nilai Evaluasi SAKIP minimal B', NULL, 1, '[]', '%', 70, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:55:58', '2022-08-04 08:55:58'),
(35, 26, 'Persentase Penyelesaian Tindaklanjut hasil temuan', NULL, 1, '[]', '%', 73, NULL, 73, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:56:33', '2022-08-04 08:56:33'),
(36, 26, 'Persentase Rekomendasi LHP BPK-RI yang selesai ditindak lanjuti', NULL, 1, '[]', '%', 65, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:57:07', '2022-08-04 08:57:07'),
(37, 27, 'Persentase pelaksanaan Sidang Paripurna DPRD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:59:14', '2022-08-04 08:59:14'),
(38, 27, 'Persentase pembahasan penganggaran dan pengawasan yang diselesaikan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 08:59:52', '2022-08-04 08:59:52'),
(39, 27, 'Persentase pengelolaan informasi. humas dan keprotokoleran DPRD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:00:22', '2022-08-04 09:00:22'),
(40, 28, 'Persentase Pejabat Struktural Eselon II yang Sudah Mengikuti Diklat PIM', NULL, 1, '[]', '%', 47, NULL, 47, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 64.71, NULL, NULL, NULL, NULL, NULL, 73.53, NULL, NULL, NULL, NULL, NULL, 82.35, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:02:25', '2022-08-04 09:02:25'),
(41, 28, 'Persentase Pejabat Struktural Eselon III yang Sudah Mengikuti Diklat PIM', NULL, 1, '[]', '%', 30, NULL, 35, NULL, NULL, NULL, NULL, NULL, 46.98, NULL, NULL, NULL, NULL, NULL, 57.05, NULL, NULL, NULL, NULL, NULL, 67.11, NULL, NULL, NULL, NULL, NULL, 67.11, NULL, NULL, NULL, NULL, NULL, 67.11, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:04:42', '2022-08-04 09:04:42'),
(42, 28, 'Persentase Pejabat Struktural Eselon IV yang Sudah Mengikuti Diklat PIM', NULL, 1, '[]', '%', 10, NULL, 15, NULL, NULL, NULL, NULL, NULL, 16.09, NULL, NULL, NULL, NULL, NULL, 25.99, NULL, NULL, NULL, NULL, NULL, 35.89, NULL, NULL, NULL, NULL, NULL, 35.89, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:06:24', '2022-08-04 09:06:24'),
(43, 29, 'Indeks Kualitas Perencanaan Bidang pemerintahan dan Pembangunan Manusia', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:48:17', '2022-08-05 01:48:17'),
(44, 29, 'Indeks KuaLitas Perencanaan Bidang Perekonomian dan SDA', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:49:49', '2022-08-05 01:49:49'),
(45, 29, 'Indeks KuaLitas Perencanaan Infrastruktur dan Kewilayahan', NULL, 1, '[]', '100', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:50:27', '2022-08-05 01:50:27'),
(46, 29, 'Persentase konsistensi capaian program OPD mitra bidang ekonomi dan SDA', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:50:57', '2022-08-05 01:50:57'),
(47, 29, 'Persentase konsistensi capaian program OPD mitra bidang Infrastruktur dan kewilayahan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:51:25', '2022-08-05 01:51:25'),
(48, 29, 'Persentase konsistensi capaian program OPD mitra bidang pemerintahan dan pembangunan manusia', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:51:56', '2022-08-05 01:51:56'),
(49, 30, 'Persentase Kelembagaan Masyarakat yang aktif', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:53:17', '2022-08-05 01:53:17'),
(50, 30, 'Persentase produk hukum yang dihasilkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:53:55', '2022-08-05 01:53:55'),
(51, 30, 'Persentase Rumusan Kebijakan Daerah Yang Dihasilkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:54:25', '2022-08-05 01:54:25'),
(52, 31, 'Presentase Hasil Penelitian Dan Pengembangan yang diimplementasikan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:55:44', '2022-08-05 01:55:44'),
(53, 32, 'Tingkat ketersediaan arsip sebagai bahan akuntabilitas kinerja. alat bukti yang sah dan pertanggungjawaban nasional) Pasal 40 dan Pasal 59 Undang-Undang Nomor 43 Tahun 2009 tentang Kearsipan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:57:51', '2022-08-05 01:57:51'),
(54, 33, 'Presentase penempatan ASN sesuai ANJAB', NULL, 1, '[]', '%', 19, NULL, 19, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, '2022-08-05 01:59:36', '2022-08-05 01:59:36'),
(55, 33, 'Rasio Jabatan Fungsional bersertifikat Kompetensi (%) (PNS tidak termasuk guru dan tenaga kesehatan)', NULL, 1, '[]', '%', 3.6, NULL, 3.6, NULL, NULL, NULL, NULL, NULL, 3.6, NULL, NULL, NULL, NULL, NULL, 4.52, NULL, NULL, NULL, NULL, NULL, 6.31, NULL, NULL, NULL, NULL, NULL, 9.94, NULL, NULL, NULL, NULL, NULL, 9.94, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:00:52', '2022-08-05 02:00:52'),
(56, 33, 'Rasio pegawai Fungsional (%) (PNS tidak termasuk guru dan tenaga kesehatan)', NULL, 1, '[]', '%', 34.21, NULL, 34.21, NULL, NULL, NULL, NULL, NULL, 34.21, NULL, NULL, NULL, NULL, NULL, 46.53, NULL, NULL, NULL, NULL, NULL, 46.76, NULL, NULL, NULL, NULL, NULL, 46.74, NULL, NULL, NULL, NULL, NULL, 46.74, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:02:04', '2022-08-05 02:02:04'),
(57, 33, 'Rasio Pegawai Pendidikan Tinggi dan Menegah/Dasar (%) (PNS tidak termasuk guru dan tenaga kesehatan)', NULL, 1, '[]', '%', 107, NULL, 107, NULL, NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, 151.47, NULL, NULL, NULL, NULL, NULL, 154.47, NULL, NULL, NULL, NULL, NULL, 160.5, NULL, NULL, NULL, NULL, NULL, 160.5, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:03:17', '2022-08-05 02:03:17'),
(58, 34, 'Persentase Urusan Penunjang Pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:11:52', '2022-08-05 02:11:52'),
(59, 35, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:12:57', '2022-08-05 02:12:57'),
(60, 36, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:17:38', '2022-08-05 02:17:38'),
(61, 37, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:18:51', '2022-08-05 02:18:51'),
(62, 38, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:19:55', '2022-08-05 02:19:55'),
(63, 39, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:20:59', '2022-08-05 02:20:59'),
(64, 40, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:21:55', '2022-08-05 02:21:55'),
(65, 42, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:24:05', '2022-08-05 02:24:05'),
(66, 43, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:26:57', '2022-08-05 02:26:57'),
(67, 44, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:28:52', '2022-08-05 02:28:52'),
(68, 45, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:30:15', '2022-08-05 02:30:15'),
(69, 46, 'Persentase Urusan Penunjang Pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:31:58', '2022-08-05 02:31:58'),
(70, 47, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:33:16', '2022-08-05 02:33:16'),
(71, 48, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:35:57', '2022-08-05 02:35:57'),
(72, 49, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:37:19', '2022-08-05 02:37:19'),
(73, 50, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:38:35', '2022-08-05 02:38:35'),
(74, 51, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 02:39:59', '2022-08-05 02:39:59'),
(75, 52, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 03:48:54', '2022-08-05 03:48:54'),
(76, 53, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 03:50:25', '2022-08-05 03:50:25'),
(77, 54, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 03:54:43', '2022-08-05 03:54:43'),
(78, 55, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 03:56:37', '2022-08-05 03:56:37'),
(79, 56, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:04:10', '2022-08-05 04:04:10'),
(80, 57, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:08:08', '2022-08-05 04:08:08'),
(81, 58, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:09:53', '2022-08-05 04:09:53'),
(82, 59, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:12:23', '2022-08-05 04:12:23'),
(83, 60, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 04:16:54', '2022-08-05 04:16:54'),
(84, 61, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:45:18', '2022-08-05 06:45:18'),
(85, 62, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:46:22', '2022-08-05 06:46:22'),
(86, 63, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:47:23', '2022-08-05 06:47:23'),
(87, 64, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:48:14', '2022-08-05 06:48:14'),
(88, 65, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:50:15', '2022-08-05 06:50:15'),
(89, 66, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:51:15', '2022-08-05 06:51:15'),
(90, 67, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:52:04', '2022-08-05 06:52:04'),
(91, 68, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:53:26', '2022-08-05 06:53:26'),
(92, 69, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:54:51', '2022-08-05 06:54:51'),
(93, 70, 'Persentase urusan penunjang pemerintahan yang dilaksanakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:55:56', '2022-08-05 06:55:56'),
(94, 71, 'Persentase pengadaan barang/jasa memenuhi standar ketepatan waktu', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:57:32', '2022-08-05 06:57:32'),
(95, 71, 'Persentase Perekonomian dan Pembangunan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:57:56', '2022-08-05 06:57:56'),
(96, 71, 'Presentase Capaian Kinerja OPD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 06:58:18', '2022-08-05 06:58:18'),
(97, 72, 'Persentase Konsistensi Perencanaan Pembangunan Daerah', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:00:11', '2022-08-05 07:00:11'),
(98, 73, 'Presentase perizinan penggunaan arsip', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:08:31', '2022-08-05 07:08:31'),
(99, 73, 'Tingkat keberadaan dan keutuhan Arsip sebagai bahan pertanggung jawaban setiap aspek kehidupan berbagsa dan bernegara untuk kepentingan negara. pemeintahan. pelayanan publik dan kesejahteraan rakyat', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:09:48', '2022-08-05 07:09:48'),
(100, 75, 'Persentase Kasus/Pengaduan Masyarakat yang Ditindaklanjuti', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:11:34', '2022-08-05 07:11:34'),
(101, 75, 'Persentase OPD yang melaksanakan SPIP sesuai ketentuan', NULL, 1, '[]', '%', 51.28, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, 51.28, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:12:29', '2022-08-05 07:12:29'),
(102, 75, 'Persentase OPD yang melaksanakan Zona Integritas menuju WBK', NULL, 1, '[]', '%', 1282, NULL, 1282, NULL, NULL, NULL, NULL, NULL, 1282, NULL, NULL, NULL, NULL, NULL, 1282, NULL, NULL, NULL, NULL, NULL, 1282, NULL, NULL, NULL, NULL, NULL, 1282, NULL, NULL, NULL, NULL, NULL, 1282, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:13:02', '2022-08-05 07:13:02'),
(103, 75, 'Persentase Pemenuhan Dokumen Pedoman Pengawasan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:13:35', '2022-08-05 07:13:35'),
(104, 75, 'Persentase Pemenuhan Elemen Kapabilitas APIP', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:14:07', '2022-08-05 07:14:07'),
(105, 76, 'Jumlah Aplikasi Informatika', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:15:43', '2022-08-05 07:15:43'),
(106, 76, 'Persentase kegiatan (event). perangkat daerah dan pelayanan publik pada Pemerintah Daerah yang dimanfaatkan secara daring dengan memanfaat kandomain dan sub domain Instansi Penyelenggara Negara sesuai dengan PM Kominfo No5/2015', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:16:09', '2022-08-05 07:16:09'),
(107, 76, 'Persentase perangkat daerah yang mengimplementasikan layanan aplikasi umum dan aplikasi khusus yang ditetapkan sesuai dengan ketentuan perundang- undangan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:16:38', '2022-08-05 07:16:38'),
(108, 77, 'Persentase Layanan Publik yang diselenggarakan secara online dan terintegrasi', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:18:13', '2022-08-05 07:18:13'),
(109, 77, 'Persentase masyarakat yang menjadi sasaran penyebaran informasi publik. mengetahui kebijakan dan program prioritas pemerintah dan pemerintah daerah kabupaten/kota', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:18:42', '2022-08-05 07:18:42'),
(110, 77, 'Persentase Organisasi Perangkat Daerah (OPD) yang terhubung dengan akses internet yang disediakan oleh Dinas Kominfo', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:19:09', '2022-08-05 07:19:09'),
(111, 78, 'Persentase Perijinan yang dikeluarkan tepat waktu sesuai SOP', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:20:41', '2022-08-05 07:20:41'),
(112, 79, 'Persentase cakupan kepemilikan akta perceraian pada semua individu yang percerainnya dilaporkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:23:07', '2022-08-05 07:23:07'),
(113, 79, 'Persentase cakupan kepemilikan buku nikah/akta perkawinan pada semua pasangan yang perkawinannya di laporkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:24:47', '2022-08-05 07:24:47'),
(114, 79, 'Persentase Kepemilikan akta kelahiran 0-18 Tahun', NULL, 1, '[]', '%', 5, NULL, 7, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 9.83, NULL, NULL, NULL, NULL, NULL, 84.1, NULL, NULL, NULL, NULL, NULL, 84.1, NULL, NULL, NULL, NULL, NULL, 84.1, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:26:18', '2022-08-05 07:26:18'),
(115, 79, 'Presentase cakupan kepemilikan akta kematian dari peristiwa kematian yang dilaporkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:27:40', '2022-08-05 07:27:40'),
(116, 80, 'Perekaman KTP elektronik', NULL, 1, '[]', '%', 10, NULL, 15, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 19.99, NULL, NULL, NULL, NULL, NULL, 66.66, NULL, NULL, NULL, NULL, NULL, 66.66, NULL, NULL, NULL, NULL, NULL, 66.66, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:31:42', '2022-08-05 07:31:42'),
(117, 80, 'Persentase anak usia 01-7 tahun kurang 1 (satu) hari yang memiliki KIA', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:32:30', '2022-08-05 07:32:30'),
(118, 81, 'Presentase Ketersediaan data Penanaman Modal dan PTSP', NULL, 1, '[]', '%', 80, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:35:28', '2022-08-05 07:35:28'),
(119, 82, 'Persentase lembaga melakukan Perjanjian Kerja Sama + Persentase kecamatan memiliki UPT + Persentase Kecamatan terkoneksi dan teroperasikan SIAK +Persentase urusan pengawasan penyelenggaraan administrasi kependudukan', NULL, 1, '[]', '%', 50, NULL, 55, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 66.66, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:37:17', '2022-08-05 07:37:17'),
(120, 83, 'Pemanfaatan data kependudukan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:39:42', '2022-08-05 07:39:42'),
(121, 83, 'Persentase penyajian data kependudukan skala kabupaten dalam 1 tahun', NULL, 1, '[]', '%', 50, NULL, 55, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-05 07:40:44', '2022-08-05 07:40:44'),
(122, 84, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 89, NULL, 89, NULL, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:00:33', '2022-08-05 08:00:33'),
(123, 85, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:03:32', '2022-08-05 08:03:32'),
(124, 86, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:06:45', '2022-08-05 08:06:45'),
(125, 88, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:08:38', '2022-08-05 08:08:38'),
(126, 89, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:09:33', '2022-08-05 08:09:33'),
(127, 90, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 15, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:11:08', '2022-08-05 08:11:08'),
(128, 91, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:13:57', '2022-08-05 08:13:57'),
(129, 93, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:16:06', '2022-08-05 08:16:06'),
(130, 94, 'Indeks Pelayanan Terpadu Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:17:13', '2022-08-05 08:17:13'),
(131, 95, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:20:25', '2022-08-05 08:20:25'),
(132, 96, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:21:45', '2022-08-05 08:21:45'),
(133, 97, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:23:31', '2022-08-05 08:23:31');
INSERT INTO `ta_rpjmd_program_indikator` (`id`, `rpjmd_program_id`, `rpjmd_program_indikator_nama`, `rpjmd_program_indikator_formula`, `rpjmd_program_indikator_nilai_jenis`, `rpjmd_program_indikator_nilai_json`, `rpjmd_program_indikator_satuan`, `rpjmd_program_indikator_th0_realisasi_target`, `rpjmd_program_indikator_th0_realisasi_pagu`, `rpjmd_program_indikator_th1_target`, `rpjmd_program_indikator_th1_pagu`, `rpjmd_program_indikator_th1_realisasi_target`, `rpjmd_program_indikator_th1_realisasi_pagu`, `rpjmd_program_indikator_th1_capaian_target`, `rpjmd_program_indikator_th1_capaian_pagu`, `rpjmd_program_indikator_th2_target`, `rpjmd_program_indikator_th2_pagu`, `rpjmd_program_indikator_th2_realisasi_target`, `rpjmd_program_indikator_th2_realisasi_pagu`, `rpjmd_program_indikator_th2_capaian_target`, `rpjmd_program_indikator_th2_capaian_pagu`, `rpjmd_program_indikator_th3_target`, `rpjmd_program_indikator_th3_pagu`, `rpjmd_program_indikator_th3_realisasi_target`, `rpjmd_program_indikator_th3_realisasi_pagu`, `rpjmd_program_indikator_th3_capaian_target`, `rpjmd_program_indikator_th3_capaian_pagu`, `rpjmd_program_indikator_th4_target`, `rpjmd_program_indikator_th4_pagu`, `rpjmd_program_indikator_th4_realisasi_target`, `rpjmd_program_indikator_th4_realisasi_pagu`, `rpjmd_program_indikator_th4_capaian_target`, `rpjmd_program_indikator_th4_capaian_pagu`, `rpjmd_program_indikator_th5_target`, `rpjmd_program_indikator_th5_pagu`, `rpjmd_program_indikator_th5_realisasi_target`, `rpjmd_program_indikator_th5_realisasi_pagu`, `rpjmd_program_indikator_th5_capaian_target`, `rpjmd_program_indikator_th5_capaian_pagu`, `rpjmd_program_indikator_th6_target`, `rpjmd_program_indikator_th6_pagu`, `rpjmd_program_indikator_th6_realisasi_target`, `rpjmd_program_indikator_th6_realisasi_pagu`, `rpjmd_program_indikator_th6_capaian_target`, `rpjmd_program_indikator_th6_capaian_pagu`, `created_at`, `updated_at`) VALUES
(134, 98, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:24:39', '2022-08-05 08:24:39'),
(135, 99, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:26:13', '2022-08-05 08:26:13'),
(136, 100, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-05 08:27:18', '2022-08-05 08:27:18'),
(137, 101, 'Persentase Penurunannya Ilegal Fishing', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 01:54:46', '2022-08-08 01:54:46'),
(138, 102, 'Produksi Perikanan Budidaya (Ton)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 01:56:32', '2022-08-08 01:56:32'),
(139, 103, 'Produksi perikanan Tangkap (Ton)', NULL, 1, '[]', 'Ton', 1000, NULL, 1000, NULL, NULL, NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL, NULL, 2000, NULL, NULL, NULL, NULL, NULL, 2500, NULL, NULL, NULL, NULL, NULL, 2500, NULL, NULL, NULL, NULL, NULL, 2500, NULL, NULL, NULL, NULL, NULL, '2022-08-08 01:58:41', '2022-08-08 01:58:41'),
(140, 104, 'Presentase luas areal pengendalian dan penanggulangan bencana OPT', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:01:56', '2022-08-08 02:01:56'),
(141, 105, 'Persentase wilayah yang terkendali dari penyakit hewan menular strategis', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:05:35', '2022-08-08 02:05:35'),
(142, 106, 'Persentase Usaha Pengolahan yang difasilitasi', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:07:40', '2022-08-08 02:07:40'),
(143, 107, 'Presentase Pengembangan Infratruktur Pertanian/Perkebunan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:11:28', '2022-08-08 02:11:28'),
(144, 108, 'Persentase peningkatan produktivitas tanaman pangan (padi dan jagung)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:16:38', '2022-08-08 02:16:38'),
(145, 108, 'Persentase peningkatan produktivitas perkebunan', NULL, 1, '[]', '%', 50, NULL, 60, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:17:25', '2022-08-08 02:17:25'),
(146, 108, 'persentase peningkatan produktivitas peternakan', NULL, 1, '[]', '%', 50, NULL, 60, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:18:15', '2022-08-08 02:18:15'),
(147, 108, 'Persentase peningkatan produktivitas tanaman hortikultura cabai dan bawang merah', NULL, 1, '[]', '%', 60, NULL, 65, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:19:14', '2022-08-08 02:19:14'),
(148, 109, 'Jumlah Keg Penyuluh Tingkat Desa/ Kecamatan/ Kabupaten', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:20:48', '2022-08-08 02:20:48'),
(149, 109, 'Presentase Pemberdayaan Penyuluhan Pertanian Lapangan', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:21:25', '2022-08-08 02:21:25'),
(150, 110, 'Persentase Rekomendasi Teknis Usaha Pertanian/Jumlah Usaha Pertanian dalam arti luas', NULL, 1, '[]', '%', 30, NULL, 30, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:23:01', '2022-08-08 02:23:01'),
(151, 111, 'Persentase daerah rawan pangan tertangani', NULL, 1, '[]', '%', 20, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:33:55', '2022-08-08 02:33:55'),
(152, 112, 'Persentase pangan segar asal tumbuhan yang memenuhi persyaratan mutu dan keamanan pangan', NULL, 1, '[]', '%', 20, NULL, 32.5, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:35:44', '2022-08-08 02:35:44'),
(153, 113, 'Persentase cadangan pangan masyarakat', NULL, 1, '[]', '%', 40, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, 0.5, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:40:20', '2022-08-08 02:40:20'),
(155, 113, 'Presentase Desa Mandiri Pangan', NULL, 1, '[]', '%', 20, NULL, 30, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:41:38', '2022-08-08 02:41:38'),
(156, 114, 'Persentase ketersediaan pangan (Tersedianya cadangan beras/ jagung sesuai kebutuhan)', NULL, 1, '[]', '%', 6, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, '2022-08-08 02:43:14', '2022-08-08 02:43:14'),
(157, 115, 'Persentase Kelompok di berdayakan', NULL, 1, '[]', '%', 33.3, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, 33.3, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:29:56', '2022-08-08 03:29:56'),
(158, 117, 'Persentase korban bencana alam dan sosial yang terpenuhi kebutuhan dasarnya pada saat dan setelah tanggap darurat bencana daerah kabupaten/kota', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:30:58', '2022-08-08 03:30:58'),
(159, 118, 'Persentase penurunan anak terlantar dan fakir miskin (rumah tangga miskin)', NULL, 1, '[]', '%', 85, NULL, 87.3, NULL, NULL, NULL, NULL, NULL, 90.1, NULL, NULL, NULL, NULL, NULL, 98.3, NULL, NULL, NULL, NULL, NULL, 98.3, NULL, NULL, NULL, NULL, NULL, 98.3, NULL, NULL, NULL, NULL, NULL, 98.3, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:32:32', '2022-08-08 03:32:32'),
(160, 119, 'Persentase (%) penyandang disabilitas terlantar. anak terlantar. lanjut usia terlantar dan gelandangan pengemisyang terpenuhi kebutuhan dasarnya di luar panti', NULL, 1, '[]', '%', 8, NULL, 9.5, NULL, NULL, NULL, NULL, NULL, 11.5, NULL, NULL, NULL, NULL, NULL, 16.5, NULL, NULL, NULL, NULL, NULL, 25.5, NULL, NULL, NULL, NULL, NULL, 25.5, NULL, NULL, NULL, NULL, NULL, 25.5, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:34:29', '2022-08-08 03:34:29'),
(161, 120, 'Tersedianya informasi industri secara lengkap dan terkini', NULL, 1, '[]', '%', 30, NULL, 30, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:40:41', '2022-08-08 03:40:41'),
(162, 121, 'Persentase Jumlah Hasil Pemantauan dan Pengawasan dengan jumlah Izin Usaha Industri (IUI) Kecil dan Industri Menengah yang dikeluarkan oleh Instansi Terkait', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:42:07', '2022-08-08 03:42:07'),
(163, 123, 'Persentase peningkatan perjalanan wisatawan nusantara (%)', NULL, 1, '[]', '%', 18, NULL, 18, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 18.9, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:45:53', '2022-08-08 03:45:53'),
(164, 124, 'Pertumbuhan nilai ekspor non migas', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:47:16', '2022-08-08 03:47:16'),
(165, 125, 'Persentase Pertumbuhan pelaku usaha ekonomi kreatif pendukung sektor pariwisata', NULL, 1, '[]', '%', 30, NULL, 30, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:49:27', '2022-08-08 03:49:27'),
(166, 126, 'Persentasen Produk Dalam Daerah yang di Promosikan Di luar', NULL, 1, '[]', '%', 33, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2022-08-08 03:51:06', '2022-08-08 03:51:06'),
(167, 128, 'Lama Tinggal Wisatawan (Length of stay)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:04:59', '2022-08-08 04:04:59'),
(168, 128, 'Tingkat hunian akomodasi', NULL, 1, '[]', '%', 29, NULL, 29, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 29.03, NULL, NULL, NULL, NULL, NULL, 35.5, NULL, NULL, NULL, NULL, NULL, 35.5, NULL, NULL, NULL, NULL, NULL, 35.5, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:05:44', '2022-08-08 04:05:44'),
(169, 129, 'Persentase Pengembangan dan pengelolaan sarana distribusi perdagangan', NULL, 1, '[]', '%', 25, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:08:50', '2022-08-08 04:08:50'),
(170, 130, 'Persentase pelaku usaha yang memperoleh izin sesuai dengan ketentuan (IUPP/SIUP Pusat Perbelanjaan dan IUTM/IUTS/SIUP Toko Swalayan)', NULL, 1, '[]', '%', 26, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:10:05', '2022-08-08 04:10:05'),
(171, 131, 'Persentase Stabilitas dan Jumlah ketersediaan harga barang kebutuhan pokok', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:11:57', '2022-08-08 04:11:57'),
(172, 132, 'Persentase Barang beredar yang diawasi yang sesuai dengan ketentuan perundang-undangan', NULL, 1, '[]', '%', 24, NULL, 24, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:13:40', '2022-08-08 04:13:40'),
(173, 132, 'Persentase penanganan pengaduan konsumen', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:14:21', '2022-08-08 04:14:21'),
(174, 133, 'Persentase Perusahaan yang menerapkan tata kelola kerja yang layak (PP/PKB. LKS Bipartit. Struktur Skala Upah. dan terdaftar peserta BPJS Ketenagakerjaan)', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:15:52', '2022-08-08 04:15:52'),
(175, 134, 'Persentase Tenaga Kerja Bersertifikat Kompetensi', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:17:40', '2022-08-08 04:17:40'),
(176, 134, 'Tingkat Produktivitas Tenaga Kerja (Juta)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:18:03', '2022-08-08 04:18:03'),
(177, 135, 'Persentase Tenaga kerja yang ditempatkan (dalam dan luar negeri) melalui mekanisme layanan Antar Kerja dalam wilayah kabupaten/kota', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:19:12', '2022-08-08 04:19:12'),
(178, 136, 'Persentase kegiatan yang dilaksanakan yang mengacu ke rencana tenaga kerja', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:20:26', '2022-08-08 04:20:26'),
(179, 137, 'Persentase tanah yang disertifikasi', NULL, 1, '[]', '%', 26.5, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, 26.5, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:24:45', '2022-08-08 04:24:45'),
(180, 138, 'Presentase Pendapatan Ekonomi Keluarga melalui Kelompok Usaha Peningkatan pendapatan keluarga sejahtera (UPPKS)', NULL, 1, '[]', '%', 50, NULL, 55, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:26:06', '2022-08-08 04:26:06'),
(181, 139, 'Menurunnya angka kelahiran menurut kelompok umur 15-19 tahun/Age SpeciicFertility Ratio (ASFR) 15-19 tahun', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:28:41', '2022-08-08 04:28:41'),
(182, 139, 'Persentase kebutuhan ber-KB yang tidak terpenuhi (unmet need)', NULL, 1, '[]', '%', 55, NULL, 50, NULL, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:29:40', '2022-08-08 04:29:40'),
(183, 139, 'Persentase pemakaian kontrasepsi Modern (Modern Contraceptive Prevalence Rate/mCPR)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:30:26', '2022-08-08 04:30:26'),
(184, 139, 'TFR (Angka Kelahiran Total)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:30:59', '2022-08-08 04:30:59'),
(185, 140, 'Luas Seluruuh Tanah Ulayat', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:32:38', '2022-08-08 04:32:38'),
(186, 141, 'Persentase penduduk transmigrasi', NULL, 1, '[]', '%', 37, NULL, 37, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 37.9, NULL, NULL, NULL, NULL, NULL, 37.9, NULL, NULL, NULL, NULL, NULL, 37.9, NULL, NULL, NULL, NULL, NULL, 37.9, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:34:37', '2022-08-08 04:34:37'),
(187, 142, 'Cakupan ketersediaan data bangga kencana', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:36:45', '2022-08-08 04:36:45'),
(188, 142, 'CBR (Crude Birth Rate)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:37:09', '2022-08-08 04:37:09'),
(189, 143, 'Persentase penanganan sengketa tanah garapan yang dilakukan', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:38:40', '2022-08-08 04:38:40'),
(190, 144, 'Persentase penempatan transmigrasi baru yang direncanakan', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:40:21', '2022-08-08 04:40:21'),
(191, 145, 'Persentase fasilitasi penerbitan izin usaha simpan pinjam yang diterbitkan untuk Koperasi dengan wilayah keanggotaan dala daerah Kabupaten/Kota', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:42:07', '2022-08-08 04:42:07'),
(192, 146, 'Persentase koperasi yang diberikan dukungan fasilitasi pendampingan kielembagaan dan usaha untuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten/kota', NULL, 1, '[]', '%', 15, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 16.5, NULL, NULL, NULL, NULL, NULL, 41.3, NULL, NULL, NULL, NULL, NULL, 41.3, NULL, NULL, NULL, NULL, NULL, 41.3, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:44:27', '2022-08-08 04:44:27'),
(193, 147, 'Meningkatnya Usaha Mikro yang menjadi wirasausaha', NULL, 1, '[]', '%', 70, NULL, 70, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 83.33, NULL, NULL, NULL, NULL, NULL, 83.33, NULL, NULL, NULL, NULL, NULL, 83.33, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:45:45', '2022-08-08 04:45:45'),
(194, 148, 'Presentase pengurus koperasi yang mengikuti pendidikan dan pelatihan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:47:17', '2022-08-08 04:47:17'),
(195, 149, 'Persentase Koperasi yang Aktif', NULL, 1, '[]', '%', 30, NULL, 30, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 34.71, NULL, NULL, NULL, NULL, NULL, 36.36, NULL, NULL, NULL, NULL, NULL, 36.36, NULL, NULL, NULL, NULL, NULL, 36.36, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:49:52', '2022-08-08 04:49:52'),
(196, 150, 'Persentase Usaha Mikro yang menjadi Usaha Kecil', NULL, 1, '[]', '%', 35, NULL, 36, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 38.8, NULL, NULL, NULL, NULL, NULL, 49.8, NULL, NULL, NULL, NULL, NULL, 49.8, NULL, NULL, NULL, NULL, NULL, 49.8, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:51:23', '2022-08-08 04:51:23'),
(197, 151, 'Persentase usaha simpan pinjam oleh koperasi yang dinilai kesehatannyauntuk koperasi dengan wilayah keanggotaan dalam daerah kabupaten/kota', NULL, 1, '[]', '%', 25, NULL, 26, NULL, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:52:43', '2022-08-08 04:52:43'),
(198, 152, 'Persentase PMA yang mendapat kemudahan investasi', NULL, 1, '[]', '%', 85, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:54:08', '2022-08-08 04:54:08'),
(199, 152, 'Persentase PMDN yang mendapat kemudahan investasi', NULL, 1, '[]', '%', 85, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:54:36', '2022-08-08 04:54:36'),
(200, 153, 'Persentase Realisasi Investasi Daerah', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:55:56', '2022-08-08 04:55:56'),
(201, 154, 'Persentase peningkatan investasi (PMA dan PMDN) di kabupaten/kota', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-08 04:57:11', '2022-08-08 04:57:11'),
(221, 169, 'Persentase desa yang melakukan kerjasama antar desa', NULL, 1, '[]', '%', 0, NULL, 22.22, NULL, NULL, NULL, NULL, NULL, 22.22, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, 29.3, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:15:36', '2022-08-08 06:15:36'),
(222, 183, 'Persentase Rumah Tidak Layak Huni diluar Kawasan Permukiman Kumuh dengan Luas di Bawah 10 (sepuluh) Ha', NULL, 1, '[]', 'Unit', 400, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:39:26', '2022-08-08 06:39:26'),
(223, 182, 'Presentase Ketaatan terhadap RTRW (%)', NULL, 1, '[]', '%', 10, NULL, 11.44, NULL, NULL, NULL, NULL, NULL, 12.22, NULL, NULL, NULL, NULL, NULL, 14.67, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:40:33', '2022-08-08 06:40:33'),
(224, 181, 'Persentase Penyelenggaraan Lalu Lintass dan Angkutan Jalan (LLAJ)', NULL, 1, '[]', '%', 25, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:41:21', '2022-08-08 06:41:21'),
(225, 180, 'Persentase Jalan dalam kondisi baik', NULL, 1, '[]', '%', 5, NULL, 6.99, NULL, NULL, NULL, NULL, NULL, 7.8, NULL, NULL, NULL, NULL, NULL, 8.9, NULL, NULL, NULL, NULL, NULL, 11.14, NULL, NULL, NULL, NULL, NULL, 12.57, NULL, NULL, NULL, NULL, NULL, 12.57, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:42:39', '2022-08-08 06:42:39'),
(226, 180, 'Persentase Jembatan dalam kondisi baik', NULL, 1, '[]', '%', 60, NULL, 70, NULL, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:43:19', '2022-08-08 06:43:19'),
(227, 179, 'Persentase perumahan yang sudah dilengkapi PSU (Prasarana. Sarana dan Utilitas Umum)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:44:21', '2022-08-08 06:44:21'),
(228, 178, 'Fasilitasi penyediaan rumah layak huni bagi masyarakat terdampak relokasi program pemerintah kabupaten/kota', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:45:07', '2022-08-08 06:45:07'),
(229, 178, 'Penyediaan dan rehabilitasi rumah layak huni bagi korban bencana kabupaten/kota', NULL, 1, '[]', 'Unit', 0, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:45:44', '2022-08-08 06:45:44'),
(230, 177, 'Rasio proyek yang menjadi kewenangan pengawasannya tanpa kecelakaan konstruksi', NULL, 1, '[]', '%', 12, NULL, 12, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 2.2, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 3.3, NULL, NULL, NULL, NULL, NULL, 3.3, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:48:33', '2022-08-08 06:48:33'),
(231, 177, 'Rasio tenaga operator/teknisi/analisis yang memiliki sertifikat kompetensi', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20.1, NULL, NULL, NULL, NULL, NULL, 21.1, NULL, NULL, NULL, NULL, NULL, 18.44, NULL, NULL, NULL, NULL, NULL, 18.44, NULL, NULL, NULL, NULL, NULL, 18.44, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:49:54', '2022-08-08 06:49:54'),
(232, 176, 'Persentase Ketersediaan Sarana. Informasi. Korodinasi dan Disiplin Angkutan Penyebrangan', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:51:00', '2022-08-08 06:51:00'),
(233, 175, 'Persentase jumlah rumah tangga yang memperoleh layanan pengolahan air minum layak', NULL, 1, '[]', '%', 6.4, NULL, 6.4, NULL, NULL, NULL, NULL, NULL, 6.4, NULL, NULL, NULL, NULL, NULL, 6.4, NULL, NULL, NULL, NULL, NULL, 6.4, NULL, NULL, NULL, NULL, NULL, 12.2, NULL, NULL, NULL, NULL, NULL, 12.2, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:52:23', '2022-08-08 06:52:23'),
(234, 174, 'Persentase Jalan yang Memiliki Trotoar dan Drainase/Saluran Pembuangan Air (Minimal 1.5 m)', NULL, 1, '[]', '%', 10, NULL, 11.1, NULL, NULL, NULL, NULL, NULL, 12.2, NULL, NULL, NULL, NULL, NULL, 13.4, NULL, NULL, NULL, NULL, NULL, 14.92, NULL, NULL, NULL, NULL, NULL, 17.62, NULL, NULL, NULL, NULL, NULL, 17.62, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:53:52', '2022-08-08 06:53:52'),
(235, 173, 'Persentase jumlah rumah tangga yang memperoleh layanan pengolahan air limbah domestik', NULL, 1, '[]', '%', 5, NULL, 6.2, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, 7.98, NULL, NULL, NULL, NULL, NULL, 8.32, NULL, NULL, NULL, NULL, NULL, 8.63, NULL, NULL, NULL, NULL, NULL, 8.63, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:55:20', '2022-08-08 06:55:20'),
(236, 172, 'Persentase bangunan gedung pemerintah/fasilitas umum dalam kondisi baik', NULL, 1, '[]', '%', 9, NULL, 9, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, 9.84, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:57:10', '2022-08-08 06:57:10'),
(237, 171, 'Rasio kepatuhan IMB kab/ kota', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 06:58:18', '2022-08-08 06:58:18'),
(238, 170, 'Presentase Pengurangan Kawasan Kumuh di Bawah 10 Ha', NULL, 1, '[]', '%', 10, NULL, 10, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:00:03', '2022-08-08 07:00:03'),
(239, 184, 'Persentase Pelaku Usaha pemilik izin Lingkungan. Izin PPLH yang terawasi', NULL, 1, '[]', '%', 50, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:10:05', '2022-08-08 07:10:05'),
(240, 185, 'Persentase Kasus Aduan Lingkungan Yang Terselesaikan', NULL, 1, '[]', '%', 0, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:11:38', '2022-08-08 07:11:38'),
(241, 186, 'Presentase penanganan pasca bencana', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:12:36', '2022-08-08 07:12:36'),
(242, 186, 'Presentase penanganan pra bencana', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:13:14', '2022-08-08 07:13:14'),
(243, 186, 'Presentase penanganan tanggap darurat bencana', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:13:49', '2022-08-08 07:13:49'),
(244, 186, 'Presentase penyelesaian dokumen kebencanaan sampai dengan dinyatakan sah/legal', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:14:20', '2022-08-08 07:14:20'),
(245, 187, 'Persentase Penataan Bangunan dan Lingkungannya', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:15:53', '2022-08-08 07:15:53'),
(246, 188, 'Persentase Jumlah bangunan gedung pemerintah/fasilitas umum dalam kondisi baik', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9.84, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, 4.92, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:18:05', '2022-08-08 07:18:05'),
(247, 189, 'Indeks Kualitas Sanitasi', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7.98, NULL, NULL, NULL, NULL, NULL, 8.32, NULL, NULL, NULL, NULL, NULL, 8.63, NULL, NULL, NULL, NULL, NULL, 8.63, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:20:16', '2022-08-08 07:20:16'),
(248, 190, 'Persentase Ruang Terbuka Hijau', NULL, 1, '[]', '%', 50, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:22:13', '2022-08-08 07:22:13'),
(249, 191, 'Rasio luas daerah irigasi kewenangan kabupaten/kota yang dilayani oleh jaringan irigasi', NULL, 1, '[]', '%', 85, NULL, 87, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 92.8, NULL, NULL, NULL, NULL, NULL, 15.6, NULL, NULL, NULL, NULL, NULL, 17.07, NULL, NULL, NULL, NULL, NULL, 17.07, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:25:40', '2022-08-08 07:25:40'),
(250, 192, 'Presentase Pengelolaan Limbah B3', NULL, 1, '[]', '%', 50, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:27:22', '2022-08-08 07:27:22'),
(251, 193, 'Persentase Standar Baku Mutu Kualitas Lingkungan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:29:10', '2022-08-08 07:29:10'),
(252, 194, 'Persentase kelembagaan kelompok masyarakat peduli lingkungan hidup yang memperoleh penghargaan', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:31:34', '2022-08-08 07:31:34'),
(253, 194, 'Persentase penghargaan lingkungan hidup yang diberikan kepada Lembaga Pendidikan', NULL, 1, '[]', '%', 50, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:32:08', '2022-08-08 07:32:08'),
(255, 195, 'Presentase Ketaatan terhadap RTRW (%)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14.67, NULL, NULL, NULL, NULL, NULL, 18.89, NULL, NULL, NULL, NULL, NULL, 13.33, NULL, NULL, NULL, NULL, NULL, 13.33, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:36:27', '2022-08-08 07:36:27'),
(256, 196, 'Persentase ketersediaan dokumen wajib perencanaan lingkungan hidup', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:40:57', '2022-08-08 07:40:57'),
(257, 197, 'Persentase jumlah sampah yang tertangani di Wilayah kota', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:46:23', '2022-08-08 07:46:23'),
(258, 197, 'Persentase Sistem Pengelolaan Persampahan Regional', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:46:56', '2022-08-08 07:46:56'),
(259, 199, 'Persentase pelayanan penyelamatan dan evakuasi korban kebakaran', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:50:41', '2022-08-08 07:50:41'),
(260, 199, 'Waktu tanggap (response time) penanganan kebakaran', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:51:06', '2022-08-08 07:51:06'),
(261, 200, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:53:07', '2022-08-08 07:53:07'),
(262, 201, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:54:17', '2022-08-08 07:54:17'),
(263, 202, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:55:06', '2022-08-08 07:55:06'),
(264, 203, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:56:06', '2022-08-08 07:56:06'),
(265, 204, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:57:00', '2022-08-08 07:57:00'),
(266, 205, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:58:45', '2022-08-08 07:58:45'),
(267, 206, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 15, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:59:48', '2022-08-08 07:59:48'),
(268, 207, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:00:56', '2022-08-08 08:00:56'),
(269, 208, 'Persentase Pelanggaran K3 di Kecamatan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:02:36', '2022-08-08 08:02:36'),
(270, 209, 'Persentase penyelesaian pelanggaran K3', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:05:08', '2022-08-08 08:05:40'),
(271, 209, 'Persentase Perda dan Perkada yang ditegakan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-08 08:06:11', '2022-08-08 08:06:11'),
(272, 210, 'Tingkat parsitipasi warga negara usia 13 - 15 tahun yang berpartisipasi dalam Pendidikan menengah pertama', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:19:07', '2022-08-09 03:19:07'),
(273, 210, 'Tingkat parsitipasi warga negara usia 5 - 6 tahunyang berpartisipasi dalam PAUD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:20:08', '2022-08-09 03:20:08'),
(274, 210, 'Tingkat parsitipasi warga negara usia 7 - 12 tahun yang berpartisipasi dalam Pendidikan dasar', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:21:04', '2022-08-09 03:21:04'),
(275, 211, 'Persentase sekolah yang menerapkan Mulok TK/RA. SD/MI dan SMP/MTs', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:23:13', '2022-08-09 03:23:13'),
(276, 212, 'Persentase sekolah yang menerapkan Mulok TK/RA. SD/MI dan SMP/MTs', NULL, 1, '[]', '%', 90, NULL, 90, NULL, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:26:00', '2022-08-09 03:26:00'),
(277, 213, 'Persentase Kebudayaan Daerah yang di Kembangkan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:30:52', '2022-08-09 03:30:52'),
(278, 214, 'Persentase Cagar Budaya yang dikestarikan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:34:58', '2022-08-09 03:34:58'),
(279, 215, 'Angka Kematian Balita (AKB)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:39:11', '2022-08-09 03:39:11'),
(280, 215, 'Angka Kematian Balita (AKB) (RS PRATAMA)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:39:40', '2022-08-09 03:39:40'),
(281, 215, 'Angka Kematian Balita (AKB) (RSUD)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:40:05', '2022-08-09 03:40:05'),
(282, 215, 'Angka Kematian Ibu (AKI)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:40:38', '2022-08-09 03:40:38'),
(283, 215, 'Angka Kematian Ibu (AKI) (RS PRATAMA)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:41:03', '2022-08-09 03:41:03'),
(284, 215, 'Angka Kematian Ibu (AKI) (RSUD)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:41:27', '2022-08-09 03:41:27'),
(285, 215, 'Angka Kesakitan', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:41:48', '2022-08-09 03:41:48'),
(286, 215, 'Angka Kesakitan (RS PRATAMA)', NULL, 1, '[]', '%', 50, NULL, 45, NULL, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:42:38', '2022-08-09 03:42:38'),
(287, 215, 'Angka Kesakitan (RSUD)', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:43:06', '2022-08-09 03:43:06'),
(288, 215, 'Persentase pemenuhan layanan pasien (RS PRATAMA)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:43:30', '2022-08-09 03:43:30');
INSERT INTO `ta_rpjmd_program_indikator` (`id`, `rpjmd_program_id`, `rpjmd_program_indikator_nama`, `rpjmd_program_indikator_formula`, `rpjmd_program_indikator_nilai_jenis`, `rpjmd_program_indikator_nilai_json`, `rpjmd_program_indikator_satuan`, `rpjmd_program_indikator_th0_realisasi_target`, `rpjmd_program_indikator_th0_realisasi_pagu`, `rpjmd_program_indikator_th1_target`, `rpjmd_program_indikator_th1_pagu`, `rpjmd_program_indikator_th1_realisasi_target`, `rpjmd_program_indikator_th1_realisasi_pagu`, `rpjmd_program_indikator_th1_capaian_target`, `rpjmd_program_indikator_th1_capaian_pagu`, `rpjmd_program_indikator_th2_target`, `rpjmd_program_indikator_th2_pagu`, `rpjmd_program_indikator_th2_realisasi_target`, `rpjmd_program_indikator_th2_realisasi_pagu`, `rpjmd_program_indikator_th2_capaian_target`, `rpjmd_program_indikator_th2_capaian_pagu`, `rpjmd_program_indikator_th3_target`, `rpjmd_program_indikator_th3_pagu`, `rpjmd_program_indikator_th3_realisasi_target`, `rpjmd_program_indikator_th3_realisasi_pagu`, `rpjmd_program_indikator_th3_capaian_target`, `rpjmd_program_indikator_th3_capaian_pagu`, `rpjmd_program_indikator_th4_target`, `rpjmd_program_indikator_th4_pagu`, `rpjmd_program_indikator_th4_realisasi_target`, `rpjmd_program_indikator_th4_realisasi_pagu`, `rpjmd_program_indikator_th4_capaian_target`, `rpjmd_program_indikator_th4_capaian_pagu`, `rpjmd_program_indikator_th5_target`, `rpjmd_program_indikator_th5_pagu`, `rpjmd_program_indikator_th5_realisasi_target`, `rpjmd_program_indikator_th5_realisasi_pagu`, `rpjmd_program_indikator_th5_capaian_target`, `rpjmd_program_indikator_th5_capaian_pagu`, `rpjmd_program_indikator_th6_target`, `rpjmd_program_indikator_th6_pagu`, `rpjmd_program_indikator_th6_realisasi_target`, `rpjmd_program_indikator_th6_realisasi_pagu`, `rpjmd_program_indikator_th6_capaian_target`, `rpjmd_program_indikator_th6_capaian_pagu`, `created_at`, `updated_at`) VALUES
(289, 215, 'Persentase pemenuhan layanan pasien (RSUD)', NULL, 1, '[]', '%', 68, NULL, 68, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:44:11', '2022-08-09 03:44:11'),
(290, 216, 'Rasio Tenaga Kesehatan terhadap Jumlah Penduduk', NULL, 1, '[]', '%', 43, NULL, 45, NULL, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:49:23', '2022-08-09 03:49:23'),
(291, 216, 'Rasio Tenaga Kesehatan terhadap jumlah penduduk (RS PRATAMA)', NULL, 1, '[]', '%', 70, NULL, 75, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:50:08', '2022-08-09 03:50:08'),
(292, 216, 'Rasio Tenaga Kesehatan terhadap jumlah penduduk (RSUD)', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:50:33', '2022-08-09 03:50:33'),
(293, 217, 'Presentase Sarana Apotek. Toko Obat. Toko Alkes. Optikal. UMOT. IRTP dan TTU Mamin yang memenuhi Standar', NULL, 1, '[]', '%', 75, NULL, 78, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:54:14', '2022-08-09 03:54:14'),
(294, 218, 'Indeks Keluarga sehat', NULL, 1, '[]', '-', 10, NULL, 15, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-08-09 03:57:11', '2022-08-09 03:57:11'),
(295, 219, 'Indeks Pemberdayaan Gender (IDG)', NULL, 1, '[]', '%', 64, NULL, 51, NULL, NULL, NULL, NULL, NULL, 51.56, NULL, NULL, NULL, NULL, NULL, 52.36, NULL, NULL, NULL, NULL, NULL, 52.76, NULL, NULL, NULL, NULL, NULL, 53.16, NULL, NULL, NULL, NULL, NULL, 53.16, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:00:26', '2022-08-09 04:00:26'),
(296, 219, 'Persentase ARG pada belanja langsung APBD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:00:53', '2022-08-09 04:00:53'),
(297, 220, 'Persentase Perempuan Korban Kekerasan dan TPPO yang Mendapatkan Layanan Komprehensif', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:03:10', '2022-08-09 04:03:10'),
(298, 221, 'Persentase peningkatan keluarga pra sejahtera', NULL, 1, '[]', '%', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:04:58', '2022-08-09 04:04:58'),
(299, 222, 'Indeks Perlindungan Anak (IPA)', NULL, 1, '[]', '%', 46, NULL, 46, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:06:48', '2022-08-09 04:06:48'),
(300, 223, 'Persentase anak memerlukan perlindungan khusus yang mendapatkan layanan komprehensif', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:09:12', '2022-08-09 04:09:12'),
(301, 224, 'Tingkat partisipasi pemuda dalam kegiatan ekonomi mandiri', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:12:47', '2022-08-09 04:12:47'),
(302, 225, 'Tingkat partisipasi pemuda dalam kegiatan ekonomi mandiri', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:15:43', '2022-08-09 04:15:43'),
(303, 226, 'Prestasi yang diraih Atlet Morowali pada tingkat Provinsi', NULL, 1, '[]', '%', 19, NULL, 19, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:18:28', '2022-08-09 04:18:28'),
(304, 227, 'Persentase Jumlah Pelestarian koleksi nasional dan naskah kuno (%)', NULL, 1, '[]', '%', 20, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:20:21', '2022-08-09 04:20:21'),
(305, 228, 'Nilai Akuntabilitas Kinerja Daerah', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:24:44', '2022-08-09 04:24:44'),
(306, 229, 'Persentase pelaksanaan Sidang Paripurna DPRD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:26:48', '2022-08-09 04:26:48'),
(307, 229, 'Persentase pembahasan penganggaran dan pengawasan yang diselesaikan', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:27:18', '2022-08-09 04:27:18'),
(308, 229, 'Persentase pengelolaan informasi. humas dan keprotokoleran DPRD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:27:55', '2022-08-09 04:27:55'),
(309, 230, 'Persentase realisasi penerimaan pajak daerah', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:30:17', '2022-08-09 04:30:17'),
(310, 230, 'Rasio Pajak dan Retribusi Daerah terhadap Total PAD', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:30:44', '2022-08-09 04:30:44'),
(311, 231, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:34:45', '2022-08-09 04:34:45'),
(312, 232, 'JUMLAH PENYELENGGARA URUSAN PEMERINTAHAN', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:35:41', '2022-08-09 04:35:41'),
(313, 234, 'Presentase ASN yang Mendapatkan Pendidikan Bela Negara', NULL, 1, '[]', '%', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:43:01', '2022-08-09 04:43:01'),
(314, 234, 'Presentase siswa Jenjang Pendidikan SLTP dan SLTA yang Mendapatkan pembinaan ideologi pancasila', NULL, 1, '[]', '%', 0.003, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, 0.003, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:43:53', '2022-08-09 04:43:53'),
(315, 235, 'Presentase partai politik yang mendapatkan pendidikan politik serta etika budaya poltik', NULL, 1, '[]', '%', 5, NULL, 0, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:46:28', '2022-08-09 04:46:28'),
(316, 236, 'Presentase pengurus Ormas yang aktif', NULL, 1, '[]', '78', 78, NULL, 78, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:47:46', '2022-08-09 04:47:46'),
(317, 237, 'persentase perkembangan kasus ketahanan ekonomi. sosial dan pelestarian budaya di 9 kecamatan', NULL, 1, '[]', '%', 0.33, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:50:45', '2022-08-09 04:50:45'),
(318, 238, 'Persentase Daerah Rawan Konflik', NULL, 1, '[]', '%', 88, NULL, 88, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, '2022-08-09 04:53:29', '2022-08-09 04:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `ta_rpjmd_sasaran_indikator`
--

CREATE TABLE `ta_rpjmd_sasaran_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_sasaran_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_sasaran_indikator_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rpjmd_sasaran_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_sasaran_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `rpjmd_sasaran_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_sasaran_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_sasaran_indikator_th0_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_realisasi_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_capaian_target` double DEFAULT NULL,
  `rpjmd_sasaran_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_rpjmd_sasaran_indikator`
--

INSERT INTO `ta_rpjmd_sasaran_indikator` (`id`, `rpjmd_sasaran_id`, `rpjmd_sasaran_indikator_nama`, `rpjmd_sasaran_indikator_formula`, `rpjmd_sasaran_indikator_nilai_jenis`, `rpjmd_sasaran_indikator_nilai_json`, `rpjmd_sasaran_indikator_satuan`, `rpjmd_sasaran_indikator_th0_realisasi_target`, `rpjmd_sasaran_indikator_th0_realisasi_pagu`, `rpjmd_sasaran_indikator_th1_target`, `rpjmd_sasaran_indikator_th1_pagu`, `rpjmd_sasaran_indikator_th1_realisasi_target`, `rpjmd_sasaran_indikator_th1_realisasi_pagu`, `rpjmd_sasaran_indikator_th1_capaian_target`, `rpjmd_sasaran_indikator_th1_capaian_pagu`, `rpjmd_sasaran_indikator_th2_target`, `rpjmd_sasaran_indikator_th2_pagu`, `rpjmd_sasaran_indikator_th2_realisasi_target`, `rpjmd_sasaran_indikator_th2_realisasi_pagu`, `rpjmd_sasaran_indikator_th2_capaian_target`, `rpjmd_sasaran_indikator_th2_capaian_pagu`, `rpjmd_sasaran_indikator_th3_target`, `rpjmd_sasaran_indikator_th3_pagu`, `rpjmd_sasaran_indikator_th3_realisasi_target`, `rpjmd_sasaran_indikator_th3_realisasi_pagu`, `rpjmd_sasaran_indikator_th3_capaian_target`, `rpjmd_sasaran_indikator_th3_capaian_pagu`, `rpjmd_sasaran_indikator_th4_target`, `rpjmd_sasaran_indikator_th4_pagu`, `rpjmd_sasaran_indikator_th4_realisasi_target`, `rpjmd_sasaran_indikator_th4_realisasi_pagu`, `rpjmd_sasaran_indikator_th4_capaian_target`, `rpjmd_sasaran_indikator_th4_capaian_pagu`, `rpjmd_sasaran_indikator_th5_target`, `rpjmd_sasaran_indikator_th5_pagu`, `rpjmd_sasaran_indikator_th5_realisasi_target`, `rpjmd_sasaran_indikator_th5_realisasi_pagu`, `rpjmd_sasaran_indikator_th5_capaian_target`, `rpjmd_sasaran_indikator_th5_capaian_pagu`, `rpjmd_sasaran_indikator_th6_target`, `rpjmd_sasaran_indikator_th6_pagu`, `rpjmd_sasaran_indikator_th6_realisasi_target`, `rpjmd_sasaran_indikator_th6_realisasi_pagu`, `rpjmd_sasaran_indikator_th6_capaian_target`, `rpjmd_sasaran_indikator_th6_capaian_pagu`, `created_at`, `updated_at`) VALUES
(1, 1, 'Indeks Desa Membangun (IDM) Kab. Morowali', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0.6147, NULL, NULL, NULL, NULL, NULL, 0.6647, NULL, NULL, NULL, NULL, NULL, 0.7147, NULL, NULL, NULL, NULL, NULL, 0.7647, NULL, NULL, NULL, NULL, NULL, 0.7647, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:39:00', '2022-08-04 02:39:00'),
(2, 1, 'Persentase Status Desa Maju', NULL, 1, '[]', '%', 7, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:39:58', '2022-08-04 02:39:58'),
(3, 2, 'Opini hasil pemeriksaan oleh BPK', NULL, 1, '[]', 'Opini', 100, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:43:36', '2022-08-04 02:43:36'),
(4, 3, 'Nilai akuntabilitas kinerja Pemerintah (SAKIP)', NULL, 2, '[{\"nama\":\"AA\",\"nilai\":\"100\"},{\"nama\":\"A\",\"nilai\":\"90\"},{\"nama\":\"BB\",\"nilai\":\"80\"},{\"nama\":\"B\",\"nilai\":\"65\"},{\"nama\":\"CC\",\"nilai\":\"60\"},{\"nama\":\"C\",\"nilai\":\"50\"},{\"nama\":\"D\",\"nilai\":\"40\"},{\"nama\":\"Na\",\"nilai\":\"0\"}]', 'Predikat', 50, NULL, 50, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:46:27', '2022-08-04 02:46:27'),
(5, 4, 'Indeks kepuasan masyarakat', NULL, 2, '[{\"nama\":\"AA\",\"nilai\":\"100\"},{\"nama\":\"A\",\"nilai\":\"90\"},{\"nama\":\"BB\",\"nilai\":\"80\"},{\"nama\":\"B\",\"nilai\":\"65\"},{\"nama\":\"CC\",\"nilai\":\"60\"},{\"nama\":\"C\",\"nilai\":\"50\"},{\"nama\":\"D\",\"nilai\":\"40\"},{\"nama\":\"Na\",\"nilai\":\"0\"}]', 'Predikat', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:49:25', '2022-08-04 02:49:25'),
(6, 5, 'Nilai Tukar Nelayan (NTN)', NULL, 1, '[]', '%', 0, NULL, 103, NULL, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:55:33', '2022-08-04 02:55:33'),
(7, 5, 'Nilai Tukar Petani (NTP)', NULL, 1, '[]', '%', 95, NULL, 97.5, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:56:51', '2022-08-04 02:56:51'),
(8, 6, 'Skor Pola Pangan Harapan (SPPH)', NULL, 1, '[]', 'Poin', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:58:01', '2022-08-04 02:58:01'),
(9, 7, 'Persentase PMKS yang terpenuhi Kebutuhan Dasarnya', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:59:26', '2022-08-04 02:59:26'),
(10, 8, 'PDRB Perkapita', NULL, 1, '[]', 'Juta', 237.72, NULL, 281.01, NULL, NULL, NULL, NULL, NULL, 356.2, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, 400, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:03:21', '2022-08-04 03:03:21'),
(11, 9, 'Pertumbuhan Ekonomi', NULL, 1, '[]', '%', 112.2, NULL, 20.2, NULL, NULL, NULL, NULL, NULL, 28.93, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:04:32', '2022-08-04 03:04:32'),
(12, 10, 'Tingkat Pengganguran Terbuka (TPT)', NULL, 1, '[]', '%', 2.89, NULL, 3.03, NULL, NULL, NULL, NULL, NULL, 5.21, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:12:57', '2022-08-04 03:12:57'),
(13, 11, 'Presentase Penduduk Miskin', NULL, 1, '[]', '%', 14.34, NULL, 13.75, NULL, NULL, NULL, NULL, NULL, 13.14, NULL, NULL, NULL, NULL, NULL, 13.1, NULL, NULL, NULL, NULL, NULL, 12.75, NULL, NULL, NULL, NULL, NULL, 12.4, NULL, NULL, NULL, NULL, NULL, 12.4, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:16:22', '2022-08-04 03:16:22'),
(14, 12, 'Gini Rasio', NULL, 1, '[]', 'Indeks', 0.304, NULL, 0.304, NULL, NULL, NULL, NULL, NULL, 0.304, NULL, NULL, NULL, NULL, NULL, 0.3, NULL, NULL, NULL, NULL, NULL, 0.3, NULL, NULL, NULL, NULL, NULL, 0.3, NULL, NULL, NULL, NULL, NULL, 0.3, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:18:39', '2022-08-04 03:18:39'),
(15, 13, 'Pertumbuhan Pembentukan Modal Tetap Bruto (PMTB)', NULL, 1, '[]', '%', 6.38, NULL, 13.09, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:20:18', '2022-08-04 03:20:18'),
(16, 14, 'Indeks Kerukunan Beragama', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:27:33', '2022-08-04 03:27:33'),
(17, 15, 'Peningkatan prestasi olahraga', NULL, 1, '[]', 'Jumlah Medali Juara', 3, NULL, 19, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:28:57', '2022-08-04 03:28:57'),
(18, 15, 'Tingkat partisipasi pemuda dalam organisasi kepemudaan', NULL, 1, '[]', '%', 65, NULL, 55.3, NULL, NULL, NULL, NULL, NULL, 60.22, NULL, NULL, NULL, NULL, NULL, 68.55, NULL, NULL, NULL, NULL, NULL, 75.5, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:30:02', '2022-08-04 03:30:02'),
(19, 16, 'Indeks Pembangunan Gender (IPG)', NULL, 1, '[]', 'Indeks', 84.88, NULL, 84.71, NULL, NULL, NULL, NULL, NULL, 84.89, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:31:33', '2022-08-04 03:31:33'),
(20, 17, 'Persentase Budaya Lokal yang dilestarikan', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:32:57', '2022-08-04 03:32:57'),
(21, 17, 'Persentase Kesenian Lokal yang dilestarikan', NULL, 1, '[]', '%', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:33:40', '2022-08-04 03:33:40'),
(22, 18, 'Harapan lama sekolah', NULL, 1, '[]', 'Tahun', 12.89, NULL, 13.31, NULL, NULL, NULL, NULL, NULL, 13.34, NULL, NULL, NULL, NULL, NULL, 13.34, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, 14.3, NULL, NULL, NULL, NULL, NULL, 14.3, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:35:26', '2022-08-04 03:35:26'),
(23, 18, 'Indeks Pendidikan', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:36:59', '2022-08-04 03:36:59'),
(24, 18, 'Rata-rata lama Sekolah', NULL, 1, '[]', 'Tahun', 8.98, NULL, 9.11, NULL, NULL, NULL, NULL, NULL, 9.33, NULL, NULL, NULL, NULL, NULL, 9.7, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:38:06', '2022-08-04 03:38:06'),
(25, 19, 'Angka Stunting', NULL, 1, '[]', '%', 34.8, NULL, 12, NULL, NULL, NULL, NULL, NULL, 7.6, NULL, NULL, NULL, NULL, NULL, 7.6, NULL, NULL, NULL, NULL, NULL, 7.1, NULL, NULL, NULL, NULL, NULL, 6.6, NULL, NULL, NULL, NULL, NULL, 6.1, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:39:41', '2022-08-04 03:39:41'),
(26, 19, 'Indeks Kesehatan', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, 69.33, NULL, NULL, NULL, NULL, NULL, 69.5, NULL, NULL, NULL, NULL, NULL, 69.5, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:40:37', '2022-08-04 03:40:37'),
(27, 19, 'Usia Harapan Hidup', NULL, 1, '[]', 'Tahun', 68.45, NULL, 68.77, NULL, NULL, NULL, NULL, NULL, 69.18, NULL, NULL, NULL, NULL, NULL, 69.18, NULL, NULL, NULL, NULL, NULL, 69.33, NULL, NULL, NULL, NULL, NULL, 69.5, NULL, NULL, NULL, NULL, NULL, 69.5, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:41:46', '2022-08-04 03:41:46'),
(28, 22, 'Indeks Rawan Bencana', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:48:53', '2022-08-04 03:48:53'),
(29, 22, 'Persentase Desa Tangguh Bencana', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15.87, NULL, NULL, NULL, NULL, NULL, 17.46, NULL, NULL, NULL, NULL, NULL, 19.84, NULL, NULL, NULL, NULL, NULL, 19.84, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:49:49', '2022-08-04 03:49:49'),
(30, 24, 'Cakupan Layanan Kebakaran skala Kabupaten', NULL, 1, '[]', '%', 75, NULL, 85, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:51:05', '2022-08-04 03:51:05'),
(31, 23, 'Cakupan Pelayanan Persampahan Kota', NULL, 1, '[]', '%', 78, NULL, 80.1, NULL, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:52:13', '2022-08-04 03:52:13'),
(32, 25, 'Angka Kriminalitas', NULL, 1, '[]', '%', 12, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, '2022-08-04 03:53:13', '2022-08-04 03:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `ta_rpjmd_tujuan_indikator`
--

CREATE TABLE `ta_rpjmd_tujuan_indikator` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_tujuan_id` bigint(20) UNSIGNED NOT NULL,
  `rpjmd_tujuan_indikator_nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rpjmd_tujuan_indikator_formula` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_tujuan_indikator_nilai_jenis` tinyint(4) DEFAULT NULL,
  `rpjmd_tujuan_indikator_nilai_json` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_tujuan_indikator_satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpjmd_tujuan_indikator_th0_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th0_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th1_capaian_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th2_capaian_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th3_capaian_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th4_capaian_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th5_capaian_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_realisasi_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_realisasi_pagu` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_capaian_target` double DEFAULT NULL,
  `rpjmd_tujuan_indikator_th6_capaian_pagu` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ta_rpjmd_tujuan_indikator`
--

INSERT INTO `ta_rpjmd_tujuan_indikator` (`id`, `rpjmd_tujuan_id`, `rpjmd_tujuan_indikator_nama`, `rpjmd_tujuan_indikator_formula`, `rpjmd_tujuan_indikator_nilai_jenis`, `rpjmd_tujuan_indikator_nilai_json`, `rpjmd_tujuan_indikator_satuan`, `rpjmd_tujuan_indikator_th0_realisasi_target`, `rpjmd_tujuan_indikator_th0_realisasi_pagu`, `rpjmd_tujuan_indikator_th1_target`, `rpjmd_tujuan_indikator_th1_pagu`, `rpjmd_tujuan_indikator_th1_realisasi_target`, `rpjmd_tujuan_indikator_th1_realisasi_pagu`, `rpjmd_tujuan_indikator_th1_capaian_target`, `rpjmd_tujuan_indikator_th1_capaian_pagu`, `rpjmd_tujuan_indikator_th2_target`, `rpjmd_tujuan_indikator_th2_pagu`, `rpjmd_tujuan_indikator_th2_realisasi_target`, `rpjmd_tujuan_indikator_th2_realisasi_pagu`, `rpjmd_tujuan_indikator_th2_capaian_target`, `rpjmd_tujuan_indikator_th2_capaian_pagu`, `rpjmd_tujuan_indikator_th3_target`, `rpjmd_tujuan_indikator_th3_pagu`, `rpjmd_tujuan_indikator_th3_realisasi_target`, `rpjmd_tujuan_indikator_th3_realisasi_pagu`, `rpjmd_tujuan_indikator_th3_capaian_target`, `rpjmd_tujuan_indikator_th3_capaian_pagu`, `rpjmd_tujuan_indikator_th4_target`, `rpjmd_tujuan_indikator_th4_pagu`, `rpjmd_tujuan_indikator_th4_realisasi_target`, `rpjmd_tujuan_indikator_th4_realisasi_pagu`, `rpjmd_tujuan_indikator_th4_capaian_target`, `rpjmd_tujuan_indikator_th4_capaian_pagu`, `rpjmd_tujuan_indikator_th5_target`, `rpjmd_tujuan_indikator_th5_pagu`, `rpjmd_tujuan_indikator_th5_realisasi_target`, `rpjmd_tujuan_indikator_th5_realisasi_pagu`, `rpjmd_tujuan_indikator_th5_capaian_target`, `rpjmd_tujuan_indikator_th5_capaian_pagu`, `rpjmd_tujuan_indikator_th6_target`, `rpjmd_tujuan_indikator_th6_pagu`, `rpjmd_tujuan_indikator_th6_realisasi_target`, `rpjmd_tujuan_indikator_th6_realisasi_pagu`, `rpjmd_tujuan_indikator_th6_capaian_target`, `rpjmd_tujuan_indikator_th6_capaian_pagu`, `created_at`, `updated_at`) VALUES
(1, 1, 'Indeks Reformasi Birokrasi Kab. Morowali', NULL, 2, '[{\"nama\":\"AA\",\"nilai\":\"100\"},{\"nama\":\"A\",\"nilai\":\"90\"},{\"nama\":\"BB\",\"nilai\":\"80\"},{\"nama\":\"B\",\"nilai\":\"65\"},{\"nama\":\"CC\",\"nilai\":\"60\"},{\"nama\":\"C\",\"nilai\":\"50\"},{\"nama\":\"D\",\"nilai\":\"40\"},{\"nama\":\"Na\",\"nilai\":\"0\"}]', 'Predikat', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:26:42', '2022-08-04 02:26:42'),
(2, 2, 'Indeks Pembangunan Ekonomi Inklusif', NULL, 1, '[]', 'Indeks', 5.24, NULL, 5.37, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:30:08', '2022-08-04 02:30:08'),
(3, 3, 'Indeks Pembangunan Manusia (IPM)', NULL, 1, '[]', 'Indeks', 0, NULL, 72.02, NULL, NULL, NULL, NULL, NULL, 72.21, NULL, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:31:39', '2022-08-04 02:31:39'),
(4, 4, 'Indeks Infrastruktur Kabupaten', NULL, 1, '[]', 'Indeks', 1.25, NULL, 1.25, NULL, NULL, NULL, NULL, NULL, 1.25, NULL, NULL, NULL, NULL, NULL, 1.26, NULL, NULL, NULL, NULL, NULL, 1.26, NULL, NULL, NULL, NULL, NULL, 1.51, NULL, NULL, NULL, NULL, NULL, 1.51, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:35:29', '2022-08-04 02:35:29'),
(5, 5, 'Indeks Kualitas Lingkungan Hidup (IKLH)', NULL, 1, '[]', 'Indeks', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, '2022-08-04 02:36:49', '2022-08-04 02:36:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_login_username_unique` (`login_username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_bidang`
--
ALTER TABLE `ref_bidang`
  ADD PRIMARY KEY (`permen_ver`,`urusan_kode`,`bidang_kode`);

--
-- Indexes for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  ADD PRIMARY KEY (`kecamatan_id`);

--
-- Indexes for table `ref_kegiatan`
--
ALTER TABLE `ref_kegiatan`
  ADD PRIMARY KEY (`permen_ver`,`urusan_kode`,`bidang_kode`,`program_kode`,`kegiatan_kode`);

--
-- Indexes for table `ref_kelurahan`
--
ALTER TABLE `ref_kelurahan`
  ADD PRIMARY KEY (`kecamatan_id`,`kelurahan_id`);

--
-- Indexes for table `ref_login_opd`
--
ALTER TABLE `ref_login_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_opd`
--
ALTER TABLE `ref_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_program`
--
ALTER TABLE `ref_program`
  ADD PRIMARY KEY (`permen_ver`,`urusan_kode`,`bidang_kode`,`program_kode`);

--
-- Indexes for table `ref_renstra_kegiatan`
--
ALTER TABLE `ref_renstra_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_renstra_kegiatan_rpjmd_program_id_foreign` (`rpjmd_program_id`);

--
-- Indexes for table `ref_renstra_sasaran`
--
ALTER TABLE `ref_renstra_sasaran`
  ADD PRIMARY KEY (`opd_id`,`renstra_tujuan_kode`,`renstra_sasaran_kode`);

--
-- Indexes for table `ref_renstra_sasaran_indikator`
--
ALTER TABLE `ref_renstra_sasaran_indikator`
  ADD PRIMARY KEY (`opd_id`,`renstra_tujuan_kode`,`renstra_sasaran_kode`,`renstra_sasaran_indikator_kode`);

--
-- Indexes for table `ref_renstra_sub_kegiatan`
--
ALTER TABLE `ref_renstra_sub_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_renstra_sub_kegiatan_renstra_kegiatan_id_foreign` (`renstra_kegiatan_id`);

--
-- Indexes for table `ref_renstra_tujuan`
--
ALTER TABLE `ref_renstra_tujuan`
  ADD PRIMARY KEY (`opd_id`,`renstra_tujuan_kode`);

--
-- Indexes for table `ref_renstra_tujuan_indikator`
--
ALTER TABLE `ref_renstra_tujuan_indikator`
  ADD PRIMARY KEY (`opd_id`,`renstra_tujuan_kode`,`renstra_tujuan_indikator_kode`);

--
-- Indexes for table `ref_rkpd_sub_kegiatan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rkpd_sub_kegiatan_opd_id_foreign` (`opd_id`);

--
-- Indexes for table `ref_rkpd_sub_kegiatan_indikator`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rkpd_sub_kegiatan_indikator_rkpd_sub_kegiatan_id_foreign` (`rkpd_sub_kegiatan_id`);

--
-- Indexes for table `ref_rkpd_sub_kegiatan_triwulan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_triwulan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_renstra_triwulan` (`renstra_sub_kegiatan_indikator_id`);

--
-- Indexes for table `ref_rpjmd`
--
ALTER TABLE `ref_rpjmd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_rpjmd_misi`
--
ALTER TABLE `ref_rpjmd_misi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rpjmd_misi_rpjmd_visi_id_foreign` (`rpjmd_visi_id`);

--
-- Indexes for table `ref_rpjmd_program`
--
ALTER TABLE `ref_rpjmd_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rpjmd_program_rpjmd_sasaran_id_foreign` (`rpjmd_sasaran_id`),
  ADD KEY `ref_rpjmd_program_opd_id_foreign` (`opd_id`);

--
-- Indexes for table `ref_rpjmd_sasaran`
--
ALTER TABLE `ref_rpjmd_sasaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rpjmd_sasaran_rpjmd_tujuan_id_foreign` (`rpjmd_tujuan_id`);

--
-- Indexes for table `ref_rpjmd_tujuan`
--
ALTER TABLE `ref_rpjmd_tujuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_rpjmd_tujuan_rpjmd_misi_id_foreign` (`rpjmd_misi_id`);

--
-- Indexes for table `ref_rpjmd_visi`
--
ALTER TABLE `ref_rpjmd_visi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_sub_kegiatan`
--
ALTER TABLE `ref_sub_kegiatan`
  ADD PRIMARY KEY (`permen_ver`,`urusan_kode`,`bidang_kode`,`program_kode`,`kegiatan_kode`,`sub_kegiatan_kode`);

--
-- Indexes for table `ref_sumber_dana`
--
ALTER TABLE `ref_sumber_dana`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_urusan`
--
ALTER TABLE `ref_urusan`
  ADD PRIMARY KEY (`permen_ver`,`urusan_kode`);

--
-- Indexes for table `ta_renstra_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_kegiatan_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ta_renstra_kegiatan_indikator_renstra_kegiatan_id_foreign` (`renstra_kegiatan_id`);

--
-- Indexes for table `ta_renstra_sub_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_sub_kegiatan_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_renstra_sub_kegiatan` (`renstra_sub_kegiatan_id`);

--
-- Indexes for table `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
--
ALTER TABLE `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign_rkpd` (`rkpd_sub_kegiatan_indikator_id`),
  ADD KEY `foreign_sumber_dana` (`sumber_dana_id`);

--
-- Indexes for table `ta_rpjmd_program_indikator`
--
ALTER TABLE `ta_rpjmd_program_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ta_rpjmd_program_indikator_rpjmd_program_id_foreign` (`rpjmd_program_id`);

--
-- Indexes for table `ta_rpjmd_sasaran_indikator`
--
ALTER TABLE `ta_rpjmd_sasaran_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ta_rpjmd_sasaran_indikator_rpjmd_sasaran_id_foreign` (`rpjmd_sasaran_id`);

--
-- Indexes for table `ta_rpjmd_tujuan_indikator`
--
ALTER TABLE `ta_rpjmd_tujuan_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ta_rpjmd_tujuan_indikator_rpjmd_tujuan_id_foreign` (`rpjmd_tujuan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_login_opd`
--
ALTER TABLE `ref_login_opd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ref_opd`
--
ALTER TABLE `ref_opd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ref_renstra_kegiatan`
--
ALTER TABLE `ref_renstra_kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_renstra_sub_kegiatan`
--
ALTER TABLE `ref_renstra_sub_kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_rkpd_sub_kegiatan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_rkpd_sub_kegiatan_indikator`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_rkpd_sub_kegiatan_triwulan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_triwulan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_rpjmd`
--
ALTER TABLE `ref_rpjmd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_rpjmd_misi`
--
ALTER TABLE `ref_rpjmd_misi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_rpjmd_program`
--
ALTER TABLE `ref_rpjmd_program`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `ref_rpjmd_sasaran`
--
ALTER TABLE `ref_rpjmd_sasaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ref_rpjmd_tujuan`
--
ALTER TABLE `ref_rpjmd_tujuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_rpjmd_visi`
--
ALTER TABLE `ref_rpjmd_visi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_sumber_dana`
--
ALTER TABLE `ref_sumber_dana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ta_renstra_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_kegiatan_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ta_renstra_sub_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_sub_kegiatan_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
--
ALTER TABLE `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ta_rpjmd_program_indikator`
--
ALTER TABLE `ta_rpjmd_program_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `ta_rpjmd_sasaran_indikator`
--
ALTER TABLE `ta_rpjmd_sasaran_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ta_rpjmd_tujuan_indikator`
--
ALTER TABLE `ta_rpjmd_tujuan_indikator`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ref_bidang`
--
ALTER TABLE `ref_bidang`
  ADD CONSTRAINT `foreign_bidang` FOREIGN KEY (`permen_ver`,`urusan_kode`) REFERENCES `ref_urusan` (`permen_ver`, `urusan_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_kegiatan`
--
ALTER TABLE `ref_kegiatan`
  ADD CONSTRAINT `foreign_kegiatan` FOREIGN KEY (`permen_ver`,`urusan_kode`,`bidang_kode`,`program_kode`) REFERENCES `ref_program` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_kelurahan`
--
ALTER TABLE `ref_kelurahan`
  ADD CONSTRAINT `ref_kelurahan_kecamatan_id_foreign` FOREIGN KEY (`kecamatan_id`) REFERENCES `ref_kecamatan` (`kecamatan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_program`
--
ALTER TABLE `ref_program`
  ADD CONSTRAINT `foreign_program` FOREIGN KEY (`permen_ver`,`urusan_kode`,`bidang_kode`) REFERENCES `ref_bidang` (`permen_ver`, `urusan_kode`, `bidang_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_kegiatan`
--
ALTER TABLE `ref_renstra_kegiatan`
  ADD CONSTRAINT `ref_renstra_kegiatan_rpjmd_program_id_foreign` FOREIGN KEY (`rpjmd_program_id`) REFERENCES `ref_rpjmd_program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_sasaran`
--
ALTER TABLE `ref_renstra_sasaran`
  ADD CONSTRAINT `foreign_renstra_sasaran` FOREIGN KEY (`opd_id`,`renstra_tujuan_kode`) REFERENCES `ref_renstra_tujuan` (`opd_id`, `renstra_tujuan_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_renstra_sasaran_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_sasaran_indikator`
--
ALTER TABLE `ref_renstra_sasaran_indikator`
  ADD CONSTRAINT `foreign_renstra_sasaran_indikator` FOREIGN KEY (`opd_id`,`renstra_tujuan_kode`,`renstra_sasaran_kode`) REFERENCES `ref_renstra_sasaran` (`opd_id`, `renstra_tujuan_kode`, `renstra_sasaran_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_renstra_sasaran_indikator_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_sub_kegiatan`
--
ALTER TABLE `ref_renstra_sub_kegiatan`
  ADD CONSTRAINT `ref_renstra_sub_kegiatan_renstra_kegiatan_id_foreign` FOREIGN KEY (`renstra_kegiatan_id`) REFERENCES `ref_renstra_kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_tujuan`
--
ALTER TABLE `ref_renstra_tujuan`
  ADD CONSTRAINT `ref_renstra_tujuan_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_renstra_tujuan_indikator`
--
ALTER TABLE `ref_renstra_tujuan_indikator`
  ADD CONSTRAINT `foreign_renstra_tujuan_indikator` FOREIGN KEY (`opd_id`,`renstra_tujuan_kode`) REFERENCES `ref_renstra_tujuan` (`opd_id`, `renstra_tujuan_kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_renstra_tujuan_indikator_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rkpd_sub_kegiatan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan`
  ADD CONSTRAINT `ref_rkpd_sub_kegiatan_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rkpd_sub_kegiatan_indikator`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_indikator`
  ADD CONSTRAINT `ref_rkpd_sub_kegiatan_indikator_rkpd_sub_kegiatan_id_foreign` FOREIGN KEY (`rkpd_sub_kegiatan_id`) REFERENCES `ref_rkpd_sub_kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rkpd_sub_kegiatan_triwulan`
--
ALTER TABLE `ref_rkpd_sub_kegiatan_triwulan`
  ADD CONSTRAINT `foreign_renstra_triwulan` FOREIGN KEY (`renstra_sub_kegiatan_indikator_id`) REFERENCES `ta_renstra_sub_kegiatan_indikator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rpjmd_misi`
--
ALTER TABLE `ref_rpjmd_misi`
  ADD CONSTRAINT `ref_rpjmd_misi_rpjmd_visi_id_foreign` FOREIGN KEY (`rpjmd_visi_id`) REFERENCES `ref_rpjmd_visi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rpjmd_program`
--
ALTER TABLE `ref_rpjmd_program`
  ADD CONSTRAINT `ref_rpjmd_program_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `ref_opd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_rpjmd_program_rpjmd_sasaran_id_foreign` FOREIGN KEY (`rpjmd_sasaran_id`) REFERENCES `ref_rpjmd_sasaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rpjmd_sasaran`
--
ALTER TABLE `ref_rpjmd_sasaran`
  ADD CONSTRAINT `ref_rpjmd_sasaran_rpjmd_tujuan_id_foreign` FOREIGN KEY (`rpjmd_tujuan_id`) REFERENCES `ref_rpjmd_tujuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_rpjmd_tujuan`
--
ALTER TABLE `ref_rpjmd_tujuan`
  ADD CONSTRAINT `ref_rpjmd_tujuan_rpjmd_misi_id_foreign` FOREIGN KEY (`rpjmd_misi_id`) REFERENCES `ref_rpjmd_misi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ref_sub_kegiatan`
--
ALTER TABLE `ref_sub_kegiatan`
  ADD CONSTRAINT `foreign_sub_kegiatan` FOREIGN KEY (`permen_ver`,`urusan_kode`,`bidang_kode`,`program_kode`,`kegiatan_kode`) REFERENCES `ref_kegiatan` (`permen_ver`, `urusan_kode`, `bidang_kode`, `program_kode`, `kegiatan_kode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_renstra_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_kegiatan_indikator`
  ADD CONSTRAINT `ta_renstra_kegiatan_indikator_renstra_kegiatan_id_foreign` FOREIGN KEY (`renstra_kegiatan_id`) REFERENCES `ref_renstra_kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_renstra_sub_kegiatan_indikator`
--
ALTER TABLE `ta_renstra_sub_kegiatan_indikator`
  ADD CONSTRAINT `foreign_renstra_sub_kegiatan` FOREIGN KEY (`renstra_sub_kegiatan_id`) REFERENCES `ref_renstra_sub_kegiatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
--
ALTER TABLE `ta_rkpd_sub_kegiatan_indikator_sumber_dana`
  ADD CONSTRAINT `foreign_rkpd` FOREIGN KEY (`rkpd_sub_kegiatan_indikator_id`) REFERENCES `ref_rkpd_sub_kegiatan_indikator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreign_sumber_dana` FOREIGN KEY (`sumber_dana_id`) REFERENCES `ref_sumber_dana` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_rpjmd_program_indikator`
--
ALTER TABLE `ta_rpjmd_program_indikator`
  ADD CONSTRAINT `ta_rpjmd_program_indikator_rpjmd_program_id_foreign` FOREIGN KEY (`rpjmd_program_id`) REFERENCES `ref_rpjmd_program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_rpjmd_sasaran_indikator`
--
ALTER TABLE `ta_rpjmd_sasaran_indikator`
  ADD CONSTRAINT `ta_rpjmd_sasaran_indikator_rpjmd_sasaran_id_foreign` FOREIGN KEY (`rpjmd_sasaran_id`) REFERENCES `ref_rpjmd_sasaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ta_rpjmd_tujuan_indikator`
--
ALTER TABLE `ta_rpjmd_tujuan_indikator`
  ADD CONSTRAINT `ta_rpjmd_tujuan_indikator_rpjmd_tujuan_id_foreign` FOREIGN KEY (`rpjmd_tujuan_id`) REFERENCES `ref_rpjmd_tujuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
