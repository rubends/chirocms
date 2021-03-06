-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 mei 2016 om 19:38
-- Serverversie: 5.6.26
-- PHP-versie: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `id197075_cmsv2`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `albums`
--

INSERT INTO `albums` (`id`, `created_at`, `updated_at`) VALUES
(12, '2016-03-01 18:14:11', '2016-03-01 18:14:11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `album_photos`
--

CREATE TABLE IF NOT EXISTS `album_photos` (
  `id` int(10) unsigned NOT NULL,
  `album_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `album_translations`
--

CREATE TABLE IF NOT EXISTS `album_translations` (
  `id` int(10) unsigned NOT NULL,
  `album_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `album_translations`
--

INSERT INTO `album_translations` (`id`, `album_id`, `title`, `description`, `locale`) VALUES
(12, 12, 'Testalbum', '<p>werkt enkel wanneer de site in de root sta</p>\r\n', 'nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) unsigned NOT NULL,
  `posted_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `documents`
--

INSERT INTO `documents` (`id`, `posted_by`, `title`, `type`, `document`, `info`, `created_at`, `updated_at`) VALUES
(2, 'ruben@php.be', 'efef', 'brief', 'C:\\xampp\\tmp\\php5987.tmp', 'efefee', '2016-04-21 18:11:16', '2016-04-21 17:11:16'),
(3, 'ruben@php.be', 'testes', 'rest', 'chiroprof (2015_12_09 18_52_11 UTC)01a0f81a3f9b276d44bbd4462ce4af3f.jpg', 'ererer', '2016-04-21 18:16:51', '2016-04-21 17:16:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_26_173311_create_pages_table', 1),
('2016_01_27_131234_alter_pages_add_template_column', 2),
('2016_01_27_133703_alter_pages_add_order_columns', 3),
('2016_01_27_151613_create_posts_table', 4),
('2016_01_28_102813_alter_user_add_last_login_at_column', 5),
('2016_01_29_220950_alter_pages_add_hidden_column', 6),
('2016_01_30_123402_drop_content_title_columns', 6),
('2016_01_30_123520_create_table_page_translation', 6),
('2016_02_11_151113_create_albums_table', 7),
('2016_02_11_152106_create_album_translations_table', 7),
('2016_02_11_162836_create_album_photos_table', 7),
('2016_04_18_155338_add_level_column', 8),
('2016_04_18_192636_add_gsm_column', 9),
('2016_04_20_131848_create_verslagen_table', 10),
('2016_04_20_132422_create_verslags_table', 11),
('2016_04_20_142224_add_verslag_column', 12),
('2016_04_21_174606_create_documents_table', 13);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pages`
--

INSERT INTO `pages` (`id`, `name`, `uri`, `created_at`, `updated_at`, `template`, `parent_id`, `lft`, `rgt`, `depth`, `hidden`) VALUES
(6, NULL, '/', '2016-04-21 19:30:01', '2016-04-21 18:30:01', 'home', NULL, 1, 2, 0, 0),
(10, 'contact.form', 'contact', '2016-03-10 17:41:41', '2016-03-10 16:41:41', 'contactform', NULL, 17, 18, 0, 0),
(11, 'terms', 'terms-and-conditions', '2016-03-10 17:41:41', '2016-03-10 16:41:41', NULL, NULL, 19, 20, 0, 1),
(14, NULL, 'info', '2016-05-02 17:33:15', '2016-05-02 16:33:15', NULL, NULL, 3, 4, 0, 0),
(16, NULL, 'albums', '2016-03-10 17:41:41', '2016-03-10 16:41:41', 'photoalbums', NULL, 9, 10, 0, 0),
(17, NULL, 'agenda', '2016-05-02 17:34:18', '2016-05-02 16:34:18', 'calender', NULL, 5, 6, 0, 0),
(18, NULL, 'verhuur', '2016-03-10 17:41:41', '2016-03-10 16:41:41', NULL, NULL, 13, 16, 0, 0),
(19, NULL, 'programma', '2016-03-11 15:42:19', '2016-03-11 14:42:19', 'programma', NULL, 11, 12, 0, 0),
(20, NULL, 'verhuurform', '2016-03-10 17:41:41', '2016-03-10 16:41:41', 'verhuurform', 18, 14, 15, 1, 0),
(21, NULL, 'leidingsploeg', '2016-03-10 17:42:02', '2016-03-10 16:42:02', NULL, NULL, 7, 8, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `page_translations`
--

CREATE TABLE IF NOT EXISTS `page_translations` (
  `id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `locale`) VALUES
(1, 6, 'Home', '<h2>Chiro Sint Job</h2>\r\n\r\n<h1><a href="http://www.google.be">Roeland </a>is raar</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>de leukste jeugdbeweging van Sintjob en Claudia is cute</h3>\r\n\r\n<p>body p</p>\r\n\r\n<h1>body h1</h1>\r\n\r\n<h2>body h2</h2>\r\n\r\n<h3>body h3</h3>\r\n\r\n<pre>\r\nbody pre / formatted</pre>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n', 'nl'),
(5, 6, 'Startseite', '<h2>Welcome to Altea</h2>\r\n\r\n<h3>eine Perle innerhalb Europas.</h3>\r\n\r\n<p>Wir befinden uns in die Urbanisation Sierra Altea Golf &#39; in Altea La Vella . Es liegt in der Provinz Alicante an der Costa Blanca in Spanien. Altea la Vella ist 80km von er Flughafen Alicante und 120km von Flughafen Valencia entfernt. Welcome2Altea ist kein klassisches Ferien Ort. Unsere H&auml;user liegen in einem gr&uuml;nen und ruhigen Wohngebiet, wo es auch w&auml;hrend der Sommermonate relativ ruhig bleibt, da es keine Hotels gibt. Alle unsere H&auml;user verf&uuml;gen &uuml;ber drei Schlafzimmer.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60d3a44ef7.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d474024a.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d3fbd64f.jpg" style="width:30%" /></p>\r\n\r\n\r\n<p>Die H&auml;user sind 300m vom Golfplatz Don Cayo, 800 m vom Zentrum Altea la Vella und 2500m von der ruhigen K&uuml;ste &quot; La Olla entfernt . Die Weltgesundheitsorganisation hat die Region zu den ges&uuml;ndesten Mikroklima in Europa erkl&auml;rt. Die Luft enth&auml;lt eine gro&szlig;e Menge von Jod ideal f&uuml;r Lungenerkrankungen. Die hohe Anzahl von Sonnenstunden und die geringe Niederschl&auml;ge Tagen sorgen f&uuml;r ein nat&uuml;rliches Antidepressivum. Die Tagestemperatur liegen zwischen 15 &deg;C und 32 &deg;C.</p>\r\n<p><img alt="" src="/photos/shares/56b60cf9e550b.jpg" style="width:50%" /></p>\r\n\r\n<p>Da Sie in einer Bergregion sind, empfehlen wir, dass Sie ein Auto haben. Haustiere sind in unserem Haus erlaubt, wenn sie Unannehmlichkeiten verursachen.</p>\r\n\r\n<p>Unsere Initiative ist Teil der Sozialprojekt von VZW Wa-Cl, Diese Initiative ist Teil des sozialen Projekt des VZW Wa-cl, die sich richtet nach grosse Familien, den &auml;lteren, Rentner, Familien mit einem Pflege ben&ouml;tigt Familienmitglied. Sie K&ouml;nnen von unsurem Fachwissen profitieren. &nbsp;</p>\r\n\r\n<p>Bitte nemen Sie rechtzeitig Kontakt mit unsauf: info@welcome2altea.com oder 0034/965846246. Luc und Mireille w&uuml;nschen Ihnen einen angenehmen Aufenthalt und Urlaub.</p>\r\n', 'de'),
(7, 10, 'Contact', '<p>Neem gerust contact met ons op! U kan ons ook altijd bereiken op <em>04daziedevanhier</em>!</p>\r\n', 'nl'),
(8, 11, 'Algemene voorwaarden', '<div class="row">\r\n<div class="col-md-9 txt text-left col-centered">\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n', 'nl'),
(10, 11, 'Terms and conditions', '			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p>\r\n					By your reservation at W2A, you agree with these conditions. Welcome2Altea is further shortened W2A. W2A has always the right to adapt the general conditions.\r\n					</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<figure class="col-md-12">\r\n					<img src="../images/voorwaarden/voorwaarden.jpg" alt="voorwaarden" class="img-responsive img-center" width="702" height="205,5" />\r\n				</figure>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>1</span> Reservation.</p>\r\n					<p>Your reservation for a house is made by Internet, e-mail. This manner of reservation is for both parties binding. W2A will confirm the reservation within the 5 working days by e-mail. If you don''t receive a confirmation within the 5 working days after you send a reservation sheet, please contact without delay W2A. (0034-620719250)</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>2</span> Price.</p>\r\n					<p>You will find the prices in the price-table listed on our site www.welcome2altea.com. They are always valid of 1 June up to 31 May and can change every year.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>3</span> Payment.</p>\r\n					<p>For a reservation you will be charged by 25% of the total amount. Your payment must occur within 5 days after the affirmation, mentioned on the affirmative form. The rest of the reservation amount must be paid at last 6 weeks before your arrival. \r\n					In case of reservation within the 6 weeks before your arrival, the whole amount must be paid within the 5 days after you received the invoice. In case we didn''t receive a correct payment, W2A can cancel the reservation. W2A will send you an affirmative writing by e-mail after payment.</i>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>4</span> Cancellation.</p>\r\n					<p>The cancellation applies the following conditions:</p>\r\n					<ul>\r\n					    <li>Cancellation as from the day from reservation up to 42 days before the day of arrival: you are chargeable for 25% of the invoice amount.</li>\r\n					    <li>Cancellation as from the 42ste day up to the day before your day of arrival: you are chargeable for the whole invoice amount.</li>\r\n					    <li>Telephonically cancellation to W2A has to be passed simultaneously in writing, by e-mail! Directly after reception of the written cancellation, W2A sends you an cancellation affirmative/note.</li>\r\n					</ul>\r\n					<i>W2A recommend that you take an cancellation insurance. This you can do at each random insurance company within 14 days after invoice date.</i>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>5</span> Modification by the tenant.</p>\r\n					<p>If you wish to introduce a modification in your reservation, of which nature thus, then you transmit it direct by e-mail to W2A; cost &euro; 20, -.  Modifications in hiring period and/or change of holiday house is an ''overbooking''. See below.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>6</span> Overbooking by the tenant</p>\r\n					<p>If you wish to transfer to another holiday house, or modify the hiring period, then this is possible up to 6 weeks before starting of the hiring period of the holiday house earlier reserved;  cost amount = &euro; 50, -.  \r\n					If you wish to transfer after this confirmed period, then this is considered as cancellation and the cancellation conditions are undiminished effective (see point 4). Please take contact with W2A, if there is another possibility they will look for a solution.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>7</span> Domestic animals.</p>\r\n					<p>Domestic animals are not permitted. Please contact us for exceptions.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>8</span> Care for the holiday house and surroundings.</p>\r\n					<p>The rented holiday house must be inhabited with required care, also the rest of the surroundings. If the tenant does not behave himself as a good tenant or causes serious embarrassment or charge causes for its surroundings, he can be denied the further access to the holiday house without refund of the hiring sum.</p>\r\n					<p>If the tenant causes damage to the rented holiday-house and/or inventory, it has to be report immediate to W2A .  Repairings and/or replacements costs must be compensated immediately on the spot. The tenant is responsible for by him/its or by joint tenants and possible visitors caused damage, also if these are observed after departure.</p>\r\n					<p>To camp and barbeque-en in the adjacent gardens is strictly prohibited.</p>\r\n					<p>The tennis-field and the swimming pool has a domestic regulation.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>9</span> Water, gas en elektricity</p>\r\n					<p>Water, electricity and/or gas are included, unless differently declared on the page ''Prices'' of the site web from W2A.  A tenant must behave economically/ecologicly reasonable. Heat and cool with closed doors !  At extreme energy consumption, W2A is authorized to charge this extra. </p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>10</span> Maximum numbers of persons.</p>\r\n					<p>The description of the holiday house on our site, and the reservation sheet, mentions the maximum number of persons that in the holiday house can spend the night. This number can under no circumstances be exceeded, unless you have written authorisation from W2A. At overshooting the tenant can be denied the further access to the holiday house without revendication on refund of the hiring sum.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>11</span> Arrival and departure.</p>\r\n					<p>The holiday house is accessible from 15.00, and you have to leave the house on the day of departure at latest at 10h00. Other times are possible only in consultation with W2A .</p>\r\n					<p>During your stay you must keep the holiday house clean . The rented holiday home must always be whisked-clean after your stay and washed has to be thrown in the deposits outsite of the house. Dishes must also be clean in the cabinets.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"<span>12</span> Remaining costs.</p>\r\n					<p>“W2A charges for the obligatory final cleaning, 60&euro;, unless it is indicated differently. W2A charges a warranty of &euro; 200. After deducting possible damage, the rest of the warranty will be paid back within 14days, cash or by bank transfer after control by the administrator.</p>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>13</span> Liability.</p>\r\n					<p>W2A carries no liability for:</p>\r\n					<ul>\r\n					    <li>obbery, loss or damage, whatever nature during or as a result of a stay in the rented holiday house.</li>\r\n					    <li>Dysfunction of technical equipment and bursting out flow and/or water.</li>\r\n					    <li>Possible construction activities in the surroundings.</li>\r\n					    <li>W2A is not responsible for independent  undertaken actions of the tenant.</li>\r\n					    <li>W2A is not responsible for the information data of third parties.</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n			<div class="row">\r\n				<div class="col-md-9 txt text-left col-centered">\r\n					<p class="tit"><span>14</span> Complaints.</p>\r\n					<p>When the tenant has complaints during his stay, then they has to be passed without delay to W2A. It''s always possibly by telephone. By means of consultation with the owner, W2A will try the solve the complaints as fast and well as possible. When there is no satisfaction,  you have the right to confirm and comment the complaint in writing, yet at the latest within 14 days after the hiring period.</p>\r\n				</div>\r\n			</div>', 'en'),
(11, 11, 'Conditions g&eacute;n&eacute;rales de vente', '<div class="row">  <div class="col-md-9 txt text-left col-centered">  <p>  Welcome2Altea est abr&eacute;g&eacute; "W2A". Votre r&eacute;servation au "W2A" confirme que vous acceptez les conditions g&eacute;n&eacute;rales.   </p>  </div>  </div>  <div class="row">  <figure class="col-md-12">  <img src="../images/voorwaarden/voorwaarden.jpg" alt="voorwaarden" class="img-responsive img-center" width="702" height="205,5" />  </figure>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>1</span> Reservation.</p>  <p>  Par Internet, vous pouvez soumettre une demande de r&eacute;servation pour une propri&eacute;t&eacute; pour une certaine p&eacute;riode. Une r&eacute;servation est toujours fait par e-mail. Ce type de r&eacute;servation est obligatoire pour les deux parties. W2A vous r&eacute;pondra dans les 5 jours ouvrables. Si vous n''&ecirc;tes pas en possession d''une confirmation &eacute;crite dans les cinq jours ouvrables apr&egrave;s la r&eacute;servation, alors vous devez contacter W2A imm&eacute;diatement . (0034-620719250)</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>2</span> Prix.</p>  <p>  Les prix peuvent &ecirc;tre trouv&eacute;s dans le tableau de prix sur notre site www.welcome2altea.com. Ils sont valables du 1er Juin au 31 mai et peuvent &ecirc;tre revus chaque ann&eacute;e.  </p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>3</span> Paiement.</p>  <p>Lors de la r&eacute;servation, vous serez factur&eacute; 25% du total. Le paiement doit &ecirc;tre faite dans les cinq jours apr&egrave;s la date de la facturation. Le reste du montant doit &ecirc;tre en notre possession six semaines avant votre arriv&eacute;e. Si la r&eacute;servation est effectu&eacute;es dans les 6 semaines avant votre s&eacute;jour, le montant total doit &ecirc;tre pay&eacute; dans les cinq jours apr&egrave;s r&eacute;ception de la facture.</p>  <i>W2A vous enverra une confirmation par e-mail.</i>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>4</span> Annulation.</p>  <p>En cas d''annulation, les conditions suivantes sont applicables:</p>  <ul>  <li>Annulation a partir de la date de r&eacute;servation jusqu''&agrave; 42 jours avant de votre arriv&eacute;e; 25% du montant de la facture seront toujours payable.</li>  <li>Annulation inf&eacute;rieure a 42 journ&eacute;e avant de votre arriv&eacute;e; vous payez le montant totale de la facture.  Les annulations doivent &ecirc;tre faites par e-mail. Imm&eacute;diatement apr&egrave;s la r&eacute;ception d''annulation, W2A vous envoie une confirmation d''annulation / facture par mail.  </li>  <li>Si en circonstance W2A doit annuler votre r&eacute;servation, on vous proposera une alternative si possible. En refusant d''accepter cette alternative, W2A remboursera imm&eacute;diatement le montant d&eacute;j&agrave; pay&eacute;. Le locataire n''a pas le droits d''indemnisation.</li>  </ul>  <i>"W2A vous conseille de prendre une assurance d''annulation. Cela peut &ecirc;tre souscrite aupr&egrave;s d''une compagnie d''assurance dans les 14 jours apr&egrave;s la date de la facture.</i>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>5</span> Modification par le locataire.</p>  <p>Si vous voulez un changement d''une r&eacute;servation d&eacute;j&agrave; faites, d''aucune sorte, vous devez faire cella pae e-mail. Si un changement est possible, ce sera confirm&eacute;e par e-mail par W2A. Les co&ucirc;ts associ&eacute;s sont &euro; 20, -. Dans toutes autres cas, ce sera consid&eacute;r&eacute; comme une annulation et les concditions d''annulation du point 4 (que vous trouvez en haut) sont applicables.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>6</span> Animaux.</p>  <p>Les animaux sont interdits, sauf si vous obtenez notre accord pr&eacute;alable par e-mail. </p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>7</span> Assurer le logement et l''environnement.</p>  <p>La maison de vacances doit &ecirc;tre occup&eacute; avec soin et diligence, conform&eacute;ment &agrave; la tranquillit&eacute; de la r&eacute;gion. Si le locataire ne se comporte pas comme un bon locataire, W2A peut refuser l''acc&egrave;s a la maison, sans remboursement du loyer. Si le locataire cause des dommages, il doit pr&eacute;venir imm&eacute;diatement W2A. La r&eacute;paration et / ou les co&ucirc;ts doivent &ecirc;tre pay&eacute;s sur place. Le locataire est responsable de ses / ou de ses copropri&eacute;taires et les visiteurs de tout dommage caus&eacute;, m&ecirc;me si elle est d&eacute;tect&eacute;e apr&egrave;s le d&eacute;part. Camping et barbecue dans les jardins sont strictement interdite. Sur le court de tennis et piscine une r&eacute;glementation qui doit &ecirc;tre strictement respect&eacute;es. </p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>8</span> Eau, gaz et &eacute;lectricit&eacute;.</p>  <p>Le prix de location comprend l''eau, l''&eacute;lectricit&eacute; et / ou de gaz, sauf si indiquer contrairement. Un locataire devrait traiter l''utilisation de l''&eacute;nergie avec respect pour environnement. W2A a le droit de calculer le co&ucirc;t si la consommation d''&eacute;nergie est extr&ecirc;me.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>9</span> Le nombre de personnes maximal.</p>  <p>Le nombre maximum de personnes autoris&eacute;es qui peut loger dans la maison est clairement indiqu&eacute; sur le site www.welcome2altea.com et / ou sur la fiche de reservation qui a pass&eacute; le locataire . Ce nombre ne peut pas &ecirc;tre d&eacute;pass&eacute;, sauf si vous avez une permission &eacute;crite de W2A . En cas de d&eacute;passement , le locataire peut &ecirc;tre refuser l''acc&egrave;s &agrave; la maison sans remboursement du loyer .</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>10</span> Arriv&eacute;e et d&eacute;part.</p>  <p>La maison est accessible a partir de 15.00 et le jour du d&eacute;part, vous devez quitter la maison au plus tard &agrave; 10h00. Au d&eacute;part la maison doit &ecirc;tre balayer, les d&eacute;chets &eacute;loigner et la vaisselle propre et ranger. </p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>11</span> Les co&ucirc;ts.</p>  <p>W2A facturera un nettoyage obligatoire 60 &euro;, sauf si indiquer contrairement. W2A calcule une caution de 200 &euro;.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"<span>12</span> Responsabilit&eacute;.</p>  <p>W2A aura aucune responsabilit&eacute; pour:</p>  <ul>  <li>Vol, perte ou dommages de toute nature pendant ou apr&egrave;s un s&eacute;jour dans une de notre maison lou&eacute; par vous.</li>  <li>Un mal fonctionnement de l''&eacute;quipement technique et la perte de puissance et / ou une coupure d''eau.</li>  <li>Toute activit&eacute; de construction dans le voisinage de l''objet lou&eacute;.W2A est pas responsable de sa propre (sans les connaissances et l''autorisation expresse du satellite W2A) les actions du locataire.</li>  <li>W2A n''est pas responsable des renseignements de tiers, des donn&eacute;es, des excursions et autres activit&eacute;s</li>  </ul>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>13</span> Plaintes.</p>  <p>Si le locataire a des plaintes au cours de son s&eacute;jour, alors cela devrait &ecirc;tre transmis directement aux W2A. Gr&acirc;ce &agrave; des consultations avec le propri&eacute;taire il sera cherch&eacute; &agrave; r&eacute;soudre les plaintes aussi rapidement et efficacement que possible.</p>  </div>  </div>', 'fr'),
(12, 11, 'T&eacute;rminos y condiciones', '<div class="row">  <div class="col-md-9 txt text-left col-centered">  <p>  Welcome2Altea, abreviado "W2A". Si reserva en "W2A" confirma que est&aacute; de acuerdo con las siguientes condiciones. Siempre tenemos el derecho de modificar los t&eacute;rminos y condiciones previstos que le notificamos con antelaci&oacute;n.  </p>  </div>  </div>  <div class="row">  <figure class="col-md-12">  <img src="../images/voorwaarden/voorwaarden.jpg" alt="voorwaarden" class="img-responsive img-center" width="702" height="205,5" />  </figure>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>1</span> Reserva.</p>  <p>A trav&eacute;s de Internet, usted puede presentar una solicitud a "W2A" para reservar una propiedad por un per&iacute;odo determinado. Una reserva se realiza siempre por correo electr&oacute;nico. Este tipo de reserva es vinculante para ambas partes. W2A tendr&aacute; su reserva dentro de los 5 d&iacute;as h&aacute;biles por escrito o por correo electr&oacute;nico. Si en un plazo de cinco d&iacute;as h&aacute;biles despu&eacute;s de la reserva no est&aacute; en posesi&oacute;n de una confirmaci&oacute;n por escrito, por favor, comun&iacute;quenoslo inmediatamente. (0034 620.719.250)  Usted siempre tiene el derecho de anular o modificar su solicitud dentro de las siguientes 24 horas despu&eacute;s de la reserva. Si usted se encuentra incapaz de realizar una reserva definitiva dentro de este tiempo, su opci&oacute;n expira.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>2</span> Precio.</p>  <p>Los precios se pueden encontrar en la tabla de precios en nuestra web www.welcome2altea.com. Siempre son v&aacute;lidas del 1 de junio al 31 de mayo y pueden ser revisados anualmente.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>3</span> Pago.</p>  <p>Al realizar la reserva, usted tendr&aacute; que pagar por anticipado el 25% de la cantidad. El pago del mismo se tendr&aacute; que efectuar dentro de los 5 d&iacute;as despu&eacute;s de la fecha de confirmaci&oacute;n que aparece en el formulario de confirmaci&oacute;n. El resto del importe de la reserva debe ser abonado seis semanas antes de su llegada. Si la reserva es realizada antes de las 6 semanas de su estancia, se deber&aacute; pagar su totalidad dentro de los 5 d&iacute;as despu&eacute;s de la factura. En caso de no haberse realizado la transaccion dentro de los 5 dias, se anular&aacute; la reserva.   W2A le enviar&aacute; una confirmaci&oacute;n por escrito.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>4</span> Cancelaci&oacute;n.</p>  <p>Si usted quiere cancelar su reserva, se deber&aacute;n de cumplir las siguientes condiciones:</p>  <ul>  <li>Cancelaci&oacute;n desde la fecha de la reserva hasta 42 d&iacute;as antes de la llegada, el 25% del importe de la factura no ser&aacute; devuelta. </li>  <li>Cancelaci&oacute;n a partir del d&iacute;a 42&ordm; hasta el d&iacute;a de su llegada solo se devolver&aacute;n los gastos del dep&oacute;sito, limpieza y toallas.</li>  <li>Las cancelaciones deben hacerse por correo electronico. Inmediatamente despu&eacute;s de la recepci&oacute;n de la cancelaci&oacute;n por escrita, W2A env&iacute;a una confirmaci&oacute;n de la cancelaci&oacute;n / factura.  Si nos vemos obligados por cualquier circunstancia a anular su reserva, se le notificar&aacute; directamente y, a ser posible, se le ofrecer&aacute; una alternativa. Al no aceptar esta alternativa, o si no somos capaces de ofrecer una alternativa, W2A devolver&aacute; inmediatamente la cantidad ya pagada al inquilino. </li>  </ul>  <i>W2A le aconseja contratar un seguro de cancelaci&oacute;n. Esto se puede arreglar con cualquier compa&ntilde;&iacute;a de seguros dentro de los 14 d&iacute;as despu&eacute;s de la fecha de la factura.</i>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>5</span> Modificaciones por parte del inquilino.</p>  <p>Si quiere modificar su reserva, debe informar inmediatamente a W2A. Este cambio ser&aacute; confirmado por escrito por W2A. Los costes asociados son &euro; 20, -.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>6</span> Transferencias de inquilino</p>  <p>I&iquest;Desea reservar para otro d&iacute;a de fiesta, o cambiar el per&iacute;odo de alquiler?, entonces esto es posible hasta 6 semanas antes del per&iacute;odo de alquiler del alojamiento previamente reservado; los costes asociados son &euro; 50, -. Si llega m&aacute;s tarde que la fecha l&iacute;mite anterior deseada, se considerar&aacute; como una cancelaci&oacute;n y se aplicar&aacute;n las nuevas condiciones de reserva y cancelaci&oacute;n (v&eacute;ase el punto 4).</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>7</span> Mascotas.</p>  <p>En caso de querer traer sus mascotas, deber&aacute; informarnos previamente y ser&aacute; notificado en caso de ser posible.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>8</span> Asegurar la vivienda y el medio ambiente.</p>  <p>La casa alquilada debe de ser ocupado con el debido cuidado y diligencia, conforme con la tranquilidad de la zona. Si el inquilino no se comporta como un buen inquilino o causa graves molestias o inconvenientes a los alrededores, se le podr&aacute; negar el acceso a la propiedad sin reembolso de la factura.</p>  <p>Si el inquilino causa da&ntilde;os a la vivienda de alquiler y / o inventario, esto debe ser reportado inmediatamente al W2A. Los costos de reparaci&oacute;n y / o reemplazo relacionados se deben pagar en el acto. El inquilino es responsable de sus copropietarios y visita y los da&ntilde;os causados por estos, incluso si se detecta despu&eacute;s de su salida.</p>  <p>TCamping y barbacoas en los jardines adyacentes est&aacute; estrictamente prohibido.</p>  <p>En la pista de tenis y encontrar&aacute; las reglas de su uso.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>9</span> Agua, gas y electricidad</p>  <p>Agua, electricidad y / o gas est&aacute;n incluidos en el precio a menos que se indique lo contrario. Si usted abusa o despilfarra de estos recursos, W2A tiene derecho a pedirte y calcular el coste para el inquilino. Nos referimos a la tabla de precios en nuestro sitio, donde los recargos se enumeran bajo condiciones extremas de uso.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>10</span> El n&uacute;mero m&aacute;ximo de personas.</p>  <p>La descripci&oacute;n de la propiedad en nuestro sitio menciona el n&uacute;mero m&aacute;ximo de personas permitido que podr&aacute;n permanecer en la casa. Este n&uacute;mero se puede exceder en ning&uacute;n momento, a menos que haya un permiso escrito a W2A. Si se excede se les niega el reembolso de la renta.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>11</span> Llegada y salida.</p>  <p>TNo aceptamos llegadas antes de las 15:00 y salidas antes de las 10:00. Otras horas s&oacute;lo pueden ser aceptados en consulta con W2A.</p>  <p>Durante su estancia, se ha de limpiar la casa, hacer la colada y la vajilla ha de estar de vuelta a sus respectivos armarios.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"<span>12</span> Otros costes.</p>  <p>W2A cobrar&aacute; por la limpieza final &euro; 60 para el bungalow de tres dormitorios, a menos que se indique lo contrario. W2A calcula un dep&oacute;sito de 200 &euro; para el bungalow de tres dormitorios. La fianza ser&aacute; devuelta despu&eacute;s de la inspecci&oacute;n del propietario. Cualquier da&ntilde;o ser&aacute; notificado al inquilino por escrito o por correo electr&oacute;nico.</p>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>13</span> Responsabilidad.</p>  <p>W2A tendr&aacute; ninguna responsabilidad por:</p>  <ul>  <li>El robo, p&eacute;rdida o da&ntilde;o de cualquier tipo durante o despu&eacute;s de su estancia.</li>  <li>Aver&iacute;as de aparatos electr&oacute;nicos debido a ca&iacute;das de corriente.</li>  <li>Cualquier actividad de construcci&oacute;n en las proximidades de la propiedad arrendada.</li>  </ul>  </div>  </div>  <div class="row">  <div class="col-md-9 txt text-left col-centered">  <p class="tit"><span>14</span> Quejas.</p>  <p>En caso de que el inquilino tenga quejas durante su estancia, entonces este deber&aacute;n ser remitidas de inmediato a W2A, si es posible por tel&eacute;fono. A trav&eacute;s de la consulta con el propietario se tratar&aacute; de resolver las quejas lo m&aacute;s r&aacute;pido y eficazmente posible. Si ambas partes no quedan satisfechos, deber&aacute; ser comunicado dentro de 14 d&iacute;as despu&eacute;s de su salida.</p>  <i>W2A no se hace responsable (sin el conocimiento y autorizaci&oacute;n expresa del W2A) de acciones del inquilino.</i>  <i>W2A no es responsable de ninguna informaci&oacute;n de terceros, datos, excursiones y otras actividades en el lugar.</i>  </div>  </div>', 'es'),
(13, 11, 'Allgemeine Gesch&auml;ftsbedingungen', '			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p>					Welcome2Altea weiter abgekürzt "W2A". Weil die Reservierung im "W2A" bestätigt, erklären Sie sich mit diesen Bedingungen. Wir haben immer das Recht vor, die Allgemeinen Geschäftsbedingungen zur Verfügung gestellt zu modifizieren, dass wir Ihnen mitteilen, von dieser Zeit.					</p>				</div>			</div>			<div class="row">				<figure class="col-md-12">					<img src="../images/voorwaarden/voorwaarden.jpg" alt="voorwaarden" class="img-responsive img-center" width="702" height="205,5" />				</figure>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>1</span> Reservierung.</p>					<p>					Durch Internet können Sie eine Anfrage zu "W2A", um eine Immobilie zu einem bestimmten Zeitraum zu buchen einreichen. Eine Reservierung ist immer per E-Mail erfolgen. Diese Art der Reservierung ist für beide Parteien verbindlich. W2A die Reservierung innerhalb von 5 Arbeitstagen schriftlich oder per E-Mail-Anhang an Sie haben. Sind Sie innerhalb von fünf Werktagen nach die Buchung wurde nicht im Besitz einer schriftlichen Bestätigung, dann sollten Sie sofort Kontakt mit W2A. (0034-620719250)					Sie sind jederzeit berechtigt, eine Option, auf einem Grundstück von bis zu 24 Stunden dauern. Wenn Sie nicht imstande, jede definitive Reservierung innerhalb dieser Zeit machen, verfällt Ihre Option..</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>2</span> Preis.</p>					<p>					Die Preise können in der Preistabelle auf unserer Website www.W2A.com gefunden werden. Sie sind immer gültig vom 1. Juni bis 31. Mai und kann jährlich überprüft werden.					</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>3</span> Zahlung.</p>					<p>Und jeder Wäsche Gebühr (€ 10 pro Person) berechnet - Bei der Buchung erhalten Sie 25% der Gesamtbetrag und die Kaution (200 €), Endreinigung (€ 60) zu sein. Deren Bezahlung erfolgt innerhalb von 14 Tagen nach Bestätigung Datum auf der Buchungsbestätigung angegebenen werden. Der Rest der Buchungsbetrag muss 6 Wochen vor Ihrer Ankunft in unserem Besitz aufgenommen werden. Buchungen innerhalb von 6 Wochen vor Ihrem Aufenthalt gemacht, muss der gesamte Betrag bezahlt werden auf einmal innerhalb von 5 Tagen nach Rechnungseingang. Im Falle der vorzeitigen oder unvollständige Zahlung W2A hat das Recht, die Buchung zu stornieren. W2A erhalten Sie eine schriftliche Bestätigung zu senden.</p>					<i>ACHTUNG: Nur die Anzahlung, Reinigung und Wäschekosten erstattet, wenn Sie eine Stornierungsversicherung abgeschlossen haben!</i>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>4</span> Stornieren.</p>					<p>Bei Stornierung die folgenden Bedingungen:</p>					<ul>					    <li>Stornierung ab dem Zeitpunkt der Buchung bis 42 Tage vor Anreise, du schuldest 25% des Rechnungsbetrages. Die Reinigung und Wäschekosten tatsächlich erstattet.</li>					    <li>Stornierung vom 42. Tag bis zum Tag Ihrer Ankunft werden Sie den gesamten Rechnungsbetrag mit Ausnahme der Anzahlung, Reinigung und Wäschekosten zu finden.						Stornierungen müssen telefonisch unter W2A gemacht werden und gleichzeitig schriftlich, per Post oder Fax bestätigt werden. Unmittelbar nach Eingang der schriftlichen stornierens W2A sendet eine Stornobestätigung / Rechnung.						</li>					    <li>Wenn von irgendeinem Umstand W2A Willen Stornierung der bereits reservierten Unterkunft gezwungen, wird gegeben, direkt an den Mieter unter bieten eine Alternative mitgeteilt und, wenn möglich, werden. Durch diese Alternative nicht zu akzeptieren, oder nicht in der Lage, eine Alternative anzubieten, werden W2A unverzüglich erstatten die bereits vom Mieter gezahlten Betrag. Der Mieter hat keinen Anspruch mehr oder außer der Erstattung dieses Betrages.</li>					</ul>					<i>"W2A" wird Sie beraten, eine Reisestornierensversicherung. Dies kann mit jedem Versicherungsunternehmen innerhalb von 14 Tagen nach Rechnungsdatum oder über die Website www.welcome2altea.com genommen werden.</i>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>5</span> Veränderungen durch den Mieter.</p>					<p>Wenn Sie möchten, eine Änderung um Bereits getroffene Vereinbarungen getroffen werden, gleich welcher Art, sollten Sie dies sofort auf W2A melden. Diese Änderung wird schriftlich von W2A bestätigt werden. Die damit verbundenen Kosten sind € 20, -. Änderungen der Mietdauer und / oder Änderung der Unterkunft, Transfers.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>6</span> Transfers durch Mieter.</p>					<p>Möchten Sie für einen anderen Urlaub zu buchen, oder ändern Sie die Mietdauer wollen, dann ist das möglich bis 6 Wochen vor der Mietzeit der zuvor reservierten Unterkunft; die damit verbundenen Kosten sind € 50, -. Wenn Sie später als der oben genannten Frist Wunsch, zu übertragen, dann wird es als als Stornierung und Neubuchung und Stornierungsbedingungen gelten (siehe Punkt 4).</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>7</span> Haustiere.</p>					<p>Haustiere sind nicht erlaubt, wenn Sie unsere vorherige Zustimmung erhalten per Post.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>8</span> Stellen Sie sicher Wohnen und Umwelt.</p>					<p>Die gemieteten Ferienhaus muss mit Sorgfalt besetzt werden, in Übereinstimmung mit der Ruhe der Umgebung. Wenn der Mieter nicht als eine gute Mieter zu verhalten oder verursacht schwere Belästigungen oder Unannehmlichkeiten in die Umgebung, es kann weiter Zugang zum Urlaub ohne Erstattung der Miete verweigert werden.</p>					<p>Wenn der Mieter verursacht Schäden an der gemieteten Unterkunft und / oder Inventar, sind diese umgehend an W2A gemeldet werden. Die damit verbundenen Reparaturen und / oder Ersatzkosten müssen vor Ort bezahlt werden. Der Mieter haftet für sein / ihr oder durch gemeinsame Mieter und Besucher ein Schaden verursacht wird, auch wenn es nach der Abreise festgestellt wird.</p>					<p>Camping und Grillen in den angrenzenden Gärten ist streng verboten.</p>					<p>Auf dem Tennisplatz und Pool hängt Hausregeln, die unbedingt beachtet werden müssen.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>9</span> Wasser, Gas und Strom</p>					<p>Die Preise W2A Ihnen beinhalten Wasser, Strom und / oder Gas, sofern nicht anders angegeben. Eine wirtschaftliche Mieter sollten mit Energie und die Nutzung der Klimaanlage oder Heizung umzugehen, um Fenster und Türen geschlossen zu halten. Bei extremen Energieverbrauchs ist für diesen W2A berechtigt, Sie zu bitten, und berechnen die Kosten an den Mieter verantwortlich. Wir verweisen auf die Preistabelle auf unserer Website, wo die Zuschläge sind unter extremen Nutzung aufgeführt, damit Sie während Ihres Aufenthaltes, dies zu vermeiden.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>10</span> Maximale Anzahl der Personen.</p>					<p>Die Beschreibung des Eigentums auf unserer Website erwähnt, die maximale Anzahl von Personen erlaubt, im Haus zu bleiben. Diese Nummer kann jederzeit überschritten werden, es sei denn Sie die Erlaubnis von W2A geschrieben haben. Bei Überschreitung werden die Mieter Zugang zum Haus weiter ohne Rückerstattung der Miete verweigert.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>11</span> An- und Abreise.</p>					<p>Der Urlaub kann von 15:00 beinhalten, und Sie müssen am Tag der Abreise, um das Haus bis spätestens 10:00 Uhr zu verlassen. Andere Zeiten können nur in Absprache mit W2A akzeptiert.</p>					<p>Während Ihres Aufenthalts müssen Sie das Haus selbst zu reinigen und die Wäsche. Die Mietwohnungen sollte immer sein "besenrein" am Ende ihres Aufenthalts, von Ihnen ausgefüllt werden. Geschirr Zubehör zurück auch sauber in den Schränken.</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"<span>12</span> Sonstige Kosten.</p>					<p>W2A wird für die Endreinigung 60 € für die drei-Zimmer-Bungalow verlangen, sofern nicht anders angegeben. W2A berechnet eine Anzahlung von 200 € für die drei-Zimmer-Bungalow. Dies ist nach Abzug der Schäden, in bar, per Über erstattet nach einer Inspektion durch den Administrator. Jeder Schaden W2A wird der Mieter schriftlich oder per E-Mail über dieses.					</p>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>13</span> Haftung.</p>					<p>W2A nimmt keine Haftung für haben:</p>					<ul>					    <li>Diebstahl, Verlust oder Schäden jeder Art, während oder nach einem Aufenthalt in einer Wohnung von Ihnen angemietet.</li>					    <li>Verlassen Sie oder deaktivieren Sie die Funktionsweise der technischen Ausrüstung und der Verlust von Energie und / oder Wasser.</li>					    <li>Jede Bautätigkeit in der Nähe des Leasinggegenstandes.</li>					</ul>				</div>			</div>			<div class="row">				<div class="col-md-9 txt text-left col-centered">					<p class="tit"><span>14</span> Beanstandungen.</p>					<p>Sollte der Mieter unerwartet Beschwerden während seines Aufenthalts, dann sollte dies umgehend auf W2A telefonisch weitergeleitet werden, wenn möglich. Durch Absprache mit dem Eigentümer beantragt wird, Beschwerden so schnell und effektiv wie möglich zu lösen. Kann eine wie das andere ist nicht zur Zufriedenheit beider Parteien beigelegt, so ist die Beschwerde so schnell wie möglich, spätestens jedoch 14 Tage nach Ende der Mietzeit, bis sie schriftlich bestätigt und erklärt werden.</p>					<i>W2A haftet nicht für ihre eigenen (ohne das Wissen und ausdrückliche Genehmigung von W2A) Handlungen des Mieters.</i>					<br />					<i>W2A ist nicht verantwortlich für fremde Informationen, Daten, Ausflüge und andere Aktivitäten vor Ort verantwortlich.</i>				</div>			</div>', 'de'),
(15, 6, 'Home', '<h2>Welcome to Altea&nbsp;</h2>\r\n\r\n<h3>a gem within Europe.</h3>\r\n\r\n<p>We are situated in the Urbaniszation &ldquo;Sierra Altea Golf&rdquo;in Altea La Vella, province of Alicante at the Costa Blanca in Spain. Alicante Airport is 80 km from Altea la Vella, Valencia airport at 120km. Welcome2Altea is not a classic place for a holiday. Our houses are located in a residential green and quiet urbanization, where even during the summer months remains relatively quiet as there are no hotels available. All our houses have three bedrooms.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60d3a44ef7.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d474024a.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d3fbd64f.jpg" style="width:30%" /></p>\r\n\r\n<p>The houses are situated 300m from the golf course Don Cayo, 800m from the center of Altea la Vella, at 2500m from the quiet shore &#39;la Olla&#39;. The World Health Organization has declared the region to the healthiest microclimate of Europe: the air contains a large amount of iodine ideal for lung diseases, the high number of sunshine hours makes for a natural antidepressant and the limited rainfall can overwinter saved. The daytime temperature lying between 15 &deg; C and 32 &deg; C.</p>\r\n\r\n<p>Considering you are in a mountainous region, we recommend that you have a car. Pets are allowed in our house if they do not cause inconvenience&nbsp; after consulting us first.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60cf9e550b.jpg" style="width:50%" /></p>\r\n\r\n<p>Our initiative is part of the social project of VZW Wa-Cl dedicated to large families, the elderly, retired people and families in which a family member needs care. Must contact us before so that we can prepare your stay. For your questions: info[AT]welcome2altea.com or 0034/965846246. If you need care or counseling, we ask that you deliver to us a care sheet for your home care service or GP. Reimbursement of care and / or medical costs varies from country to country. In advance request approval to your health insurance fund is always desirable.</p>\r\n\r\n<p>People with health problems and / or mental worries can stay here with the family are helped in their own language, we give you the necessary information.&nbsp; Old age or illness should not stop you to have a nice holiday.</p>\r\n', 'en'),
(18, 10, 'Contact', '<p>Don&#39;t hesitate to contact us! You can also reach us via&nbsp;<a href="tel:0034965846246">0034/965846246</a>!</p>\r\n', 'en'),
(22, 6, 'Accueil', '<h2>Welcome 2 Altea</h2>\r\n\r\n<h3>une perle au sein de l&#39;Europe.</h3>\r\n\r\n<p>Nous nous situons dans l&#39;Urbanisation Sierra Altea Golf&#39; &agrave; Altea La Vella. Il est situ&eacute; dans la province d&#39;Alicante, sur la Costa Blanca en Espagne. L&#39;a&eacute;roport d&#39;Alicante est &agrave; 80 km, l&#39;a&eacute;roport de Valence &agrave; 120 km. Welcome2Altea n&#39;est pas un jour f&eacute;ri&eacute; classique. On est situ&eacute; dans une urbanisation vert et calme et r&eacute;sidentiel, o&ugrave; m&ecirc;me pendant les mois d&#39;&eacute;t&eacute; il reste relativement calme&nbsp;car il n&#39;y a pas d&#39;h&ocirc;tels.&nbsp;Toutes nos maisons ont trois chambres &agrave; coucher. Vous avez acc&egrave;s&nbsp; a une piste de tennis et une grande piscine commune.</p>\r\n\r\n\r\n<p><img alt="" src="/photos/shares/56b60d3a44ef7.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d474024a.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d3fbd64f.jpg" style="width:30%" /></p>\r\n\r\n<p>Les maisons sont situ&eacute;es &agrave; 300m du golf de Don Cayo, &agrave; 800m du centre d&#39;Altea la Vella et &agrave; 2500m de la plage tranquille &#39;La Olla&#39;. L&#39;Organisation mondiale de la Sant&eacute; a d&eacute;clar&eacute; la r&eacute;gion la plus saine microclimat de l&#39;Europe: l&#39;air contient une grande quantit&eacute; d&#39;iode id&eacute;al pour les maladies pulmonaires. Le nombre &eacute;lev&eacute; d&#39;heures d&#39;ensoleillement en fait un antid&eacute;presseur naturel et la pluviom&eacute;trie limit&eacute;e fait qu&rsquo;on peut y passer l&#39;hiver agr&eacute;able. La temp&eacute;rature diurne comprise entre 15 &deg;C et 32 &deg;C.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60cf9e550b.jpg" style="width:50%" /></p>\r\n\r\n<p>Consid&eacute;rant que vous &ecirc;tes dans une r&eacute;gion montagneuse, nous recommandons que vous avez une voiture. Les animaux sont accept&eacute;s dans notre complexe si elles ne causent pas de d&eacute;sagr&eacute;ments.</p>\r\n\r\n<p>Cette initiative s&#39;inscrit dans le cadre du projet social de l&#39;ASBL Wa​​-Cl. Contactez nous &agrave; temps, afin que nous puissions adapter votre s&eacute;jour &agrave; vos questions: info@welcome2altea.com ou 0034/965846246. Luc et Mireille vous souhaitons un agr&eacute;able s&eacute;jour et des bonnes vacances.</p>\r\n', 'fr'),
(23, 6, 'Inicio', '<h2>Welcome to Altea</h2>\r\n\r\n<h3>una joya dentro de Europa.</h3>\r\n\r\n<p>Nos situamos en la Urbanizaci&oacute;n Sierra Altea Golf en Altea La Vella. Se encuentra ubicado en la provincia de Alicante en la Costa Blanca en Espa&ntilde;a. El aeropuerto de Alicante est&aacute; a 70 km de Altea la Vella, el aeropuerto de Valencia a 130 kilometros. Welcome2Altea no es un complejo de vacaciones cl&aacute;sico. Nuestras casas est&aacute;n situadas en una zona residencial de una urbanizaci&oacute;n tranquila y verde, donde incluso durante los meses de verano sigue siendo relativamente tranquila, ya que no hay hoteles en Altea la Vella. Todas nuestras casas cuentan con tres dormitorios.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60d3a44ef7.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d474024a.jpg" style="width:30%" /><img alt="" src="/photos/shares/56b60d3fbd64f.jpg" style="width:30%" /></p>\r\n\r\n<p>Las casas est&aacute;n situadas a 300 metros del campo de Golf Don Cayo, a 800 metros del centro de Altea la Vella, a 2500m de la playa tranquila La Olla. La Organizaci&oacute;n Mundial de la Salud ha declarado la regi&oacute;n como el microclima m&aacute;s sano de Europa: el aire contiene una gran cantidad de yodo ideal para enfermedades pulmonares, el elevado n&uacute;mero de horas de sol lo convierte en un antidepresivo natural y las precipitaciones son limitadas durante el invierno. Las temperaturas durante el oscilan son entre los 15 &deg; C y los 32 &deg; C.</p>\r\n\r\n<p><img alt="" src="/photos/shares/56b60cf9e550b.jpg" style="width:50%" /></p>\r\n\r\n<p>Teniendo en cuenta que est&aacute; en una regi&oacute;n monta&ntilde;osa, le recomendamos que tienen un coche. Se admiten mascotas en nuestra casa si no causan molestias.</p>\r\n\r\n<p>Nuestra iniciativa se enmarca en el proyecto social de VZW Wa-Cl dedicada a las familias numerosas, los ancianos, las personas y las familias jubilados en la que necesita un cuidado de la familia. Debe ponerse en contacto con nosotros para que podemos adaptar su estancia a sus preguntas: info@welcome2altea.com o 0034/965846246.</p>\r\n\r\n<p>Luc y Mireille le deseamos una estancia agradable y vacaciones.</p>\r\n', 'es'),
(24, 10, 'Kontakt', '', 'de'),
(25, 10, 'Contacto', '', 'es'),
(26, 10, 'Contact', '', 'fr'),
(32, 14, 'Info', '<h2><strong>De Zondag</strong></h2>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Wemels en ribbels spelen van 14 tot 17u<br />\r\n			Oudere afdelingen spelen van 14 tot 18u</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>De leiding kan telaatkomers terug naar huis sturen, vroeger hoeft ook niet.</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\n<strong>De afdelingen</strong></p>\r\n\r\n<hr />\r\n<table border="0" cellpadding="1" cellspacing="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Wemels</p>\r\n			</td>\r\n			<td>Ribbels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speelclub</td>\r\n			<td>Lira&#39;s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dora&#39;s</td>\r\n			<td>Tito&#39;s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Keti&#39;s</td>\r\n			<td>Aspi&#39;s</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<h2><strong>Uniform</strong></h2>\r\n\r\n<p>Er wordt verwacht dat alle leden op Chiro activiteiten volledig in uniform zijn. Voor Wemels en Ribbels volstaat een t-shirt en trui. Voor alle andere afdelingen bestaat het uniform uit:</p>\r\n\r\n<ul>\r\n	<li>Sokken in de afdelingskleur</li>\r\n	<li>Chiroshort of rok</li>\r\n	<li>T-shirt van Chiro Sint-Job</li>\r\n	<li>Trui van Chiro Sint-Job</li>\r\n</ul>\r\n\r\n<p>Te koop ik Banier of in het 2e handswinkeltje.<br />\r\n--&gt; Ilse Tuymans, De Gauw 82, SintJob, 0477575985</p>\r\n\r\n<hr />\r\n<h2><strong>Inschrijven</strong></h2>\r\n', 'nl');
INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `locale`) VALUES
(33, 14, 'Information & Prices', '<h2>OUR HOMES:</h2>\r\n\r\n<ul>\r\n	<li>3 bedrooms. In the big bungalows you will find two bedrooms with one double bed or two single beds and a large bedroom for four people with two single beds and one bunk bed.&nbsp;In the smaller duplex get one bedroom with one double bed, one bedroom with two single beds and a bedroom with onesingle bed and bunk beds.</li>\r\n	<li>Double&nbsp; couvert pitch for the car,</li>\r\n	<li>Solarium with BBQ</li>\r\n	<li>A built-in kitchen with the necessary amenities like a coffee maker, refrigerator with freezer and the necessary utensils, cooking pots</li>\r\n	<li>2 bathrooms with shower / bath, toilet</li>\r\n	<li>A guest toilet with sink,</li>\r\n	<li>A storage room with washing machine and iron and ironing board, cleaning things</li>\r\n	<li>A spacious lounge / dining room with a built-in cassette (not present in the smaler house) on wood or gas and fans for the summer,</li>\r\n	<li>Two terraces with panoramic views,</li>\r\n	<li>A large (10 * 20M) swimming pool with sunbathing area,</li>\r\n	<li>A tennis court,</li>\r\n	<li>In the living room you will also find a TV, DVD player, radio-CD player, a small library of books and DVDs</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="7" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p><strong>HUIS/DUPLEX 107m&sup2;</strong></p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>per Day</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Week</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Weeks</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Weeks</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Weeks</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept till Juni</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;115,00</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;490</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1090</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1290</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July - August</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;790</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1390</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1890</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;2290</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="7" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p><strong>HUIS/BUNGALOW 147m&sup2;</strong></p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>per Day</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Week</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Weeks</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Weeks</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Weeks</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept till Juni</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;119</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;590</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;990</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1290</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1590</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July - August</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;950</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1750</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;2350</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;2950</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Price advantage: the longer and/or the earlier you rent, the cheaper the price/day.</p>\r\n\r\n<p>Bookings made before April 1for high season, give an automatic right to a 10% price preference.</p>\r\n\r\n<p><strong>LONG WINTER STAY IS POSSIBLE 1/10 to 31/05</strong></p>\r\n\r\n<p>If you are renting for longer as one month , the electricity consumption ( &euro; 0.25 / kWh) is not included in the price below.</p>\r\n\r\n<table border="0" cellpadding="7" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 MONTHS</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 MONTHS</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 MONTS</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>5 MONTHS</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>6 MONTHS</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>HUIS/BUNGALOW/DUPLEX (107M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1690</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;2490</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;3190</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;3790</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;4290</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>HUIS/BUNGALOW (147M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;1890</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;2690</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;3390</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;3990</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro;4490</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>EXTRA COST :</h2>\r\n\r\n<p>If the house broom clean and tidy is left, then the final cleaning is included in the price. In other cases, there is &euro; 60 from the deposit withheld.</p>\r\n\r\n<p>Gas: 1 bottle / month is free, additional bottles = &euro; 18 / bottle</p>\r\n\r\n<p>Towels &euro; 10 p / p (two bath towels and two smaller towels).</p>\r\n\r\n<p>The price of the sheets are always included.</p>\r\n\r\n<p>Deposit = &euro; 200 / house.</p>\r\n\r\n<h2>WHEELCHAIRS:</h2>\r\n\r\n<p>our properties are suitable for mobile and less mobile people. Wheelchair-dependent people, however we will have to refer you to our colleagues.</p>\r\n', 'en'),
(34, 14, 'Informations & Prix', '<h2>NOS MAISONS:</h2>\r\n\r\n<ul>\r\n	<li>3 chambres &agrave; couchers. Dans nos grand bungalow vous avez 2 chambres avec un lit double ou 2 lits simple et une grande chambre avec 2 lits simple et un lit superpos&eacute;. Dans notre duplexe de 107m&sup2; vous trouvez une chambres &agrave; coucher avec un lit double, une chambre avec un lit simple et une cambre&nbsp;avec un lit double et un lit superpos&eacute;.</li>\r\n	<li>parking priv&eacute; pour 2 voitures,</li>\r\n	<li>solarium avec BBQ,</li>\r\n	<li>une cuisine &eacute;quip&eacute;e avec r&eacute;frig&eacute;rateur-cong&eacute;lateur, machine &agrave; caf&eacute;, &hellip;</li>\r\n	<li>deux salles de bain avec douche/bain, lavabo&nbsp; et toilette,</li>\r\n	<li>une toilette visiteurs avec lavabo,</li>\r\n	<li>un d&eacute;barra avec&nbsp; lave-linge,</li>\r\n	<li>le salon/salle &agrave; manger, est &eacute;quiper d&#39;une t&eacute;l&eacute;vision avec DVD et une radio cassette.&nbsp; Vous trouvez aussi un feux ouvert avec une cassette enserr&eacute;e (pas dans le duplexe) dt des ventilateurs.</li>\r\n	<li>deux terrasses ensoleill&eacute;es + meubles de patio et une vue panoramique sur le terrain de golf, la mer, la montagne et les villes Altea, Albir et Benidorm.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>MAISON/BUNGALOW 107M&sup2;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1<br />\r\n			Jour</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Semaine</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Semaines</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Semaines</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Semaines</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept &agrave; Juin</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro; 109,00</p>\r\n			</td>\r\n			<td>\r\n			<p>490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1090&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Juillet et Ao&ucirc;t</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2290&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>MAISON/BUNGALOW 147M&sup2;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1<br />\r\n			Jour</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Semaine</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Semaines</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Semaines</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Semaines</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept &agrave; Juin</p>\r\n			</td>\r\n			<td>\r\n			<p>119&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>590&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1590&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Juillet et Ao&ucirc;t</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>950&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1750&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2350&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2950&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Le plus longtemps que vous restez, le plus bon marcher c&rsquo;est! Les r&eacute;servations, faites avant le1 avril, ont une r&eacute;duction de 10&nbsp;%.</p>\r\n\r\n<p><strong>L&#39;HIVERNAGE EST POSSIBLE DU DU 1/10 AU 31/05</strong></p>\r\n\r\n<p>Les frais d&#39;&eacute;lectricit&eacute; (0,25&euro;/kWh) ne sont pas inclus pendant l&#39;hivernage.</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>5 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>6 MND</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>MAISON/DUPLEXE (107M&sup2;) 3 C&agrave;C</p>\r\n			</td>\r\n			<td>\r\n			<p>1690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3190&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MAISON/BUNGALOW (147M&sup2;) 3 C&agrave;C</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4490&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>LES FRAITS SUPL&Eacute;MENTAIRES</h2>\r\n\r\n<p>Si au d&eacute;part, la maison est balayer et bien rang&eacute;, le nettoyage final est inclus dans le prix . Dans d&#39;autres cas, 60&euro;&nbsp; seront retenu du d&eacute;p&ocirc;t de garantie.</p>\r\n\r\n<p>Gaz:&nbsp;1 bouteille par mois est inclus&nbsp;; par bouteille extra on demande15 &euro;.</p>\r\n\r\n<p>Caution:&nbsp;200&euro;. Un ch&egrave;que est possible.</p>\r\n\r\n<p>Serviettes:&nbsp;&euro; 10 pp (2 grandes et 2 normales).</p>\r\n', 'fr'),
(35, 14, 'Información & Precios', '<h2>NUESTROS BUNGALOWS:</h2>\r\n\r\n<ul>\r\n	<li>Los bungalows grandes disponen de tres dormitorios; dos dormitorios con una cama doble o dos camas individuales y un amplio dormitorio para cuatro personas con dos camas individuales y una litera.</li>\r\n	<li>El d&uacute;plex peque&ntilde;o dispone tambi&eacute;n de tres dormitorios de una habitaci&oacute;n con una cama individuale, una habitaci&oacute;n con una cama de matrimonio para dos personas y un dormitorio con una litera y una cama individual.</li>\r\n	<li>Un aparcamiento para 2 coches,</li>\r\n	<li>Solario con barbacoa (no en el duplex peque&ntilde;o)</li>\r\n	<li>Una cocina integrada con sus comodidades, como una cafetera, nevera con congelador y otros utensilios como ollas, cubiertos, ...</li>\r\n	<li>2 ba&ntilde;os con ducha / ba&ntilde;era, aseo</li>\r\n	<li>Un aseo con lavabo,</li>\r\n	<li>Un trastero con lavadora y plancha y tabla de planchar, escobas, aspiradora, ...</li>\r\n	<li>Un amplio sal&oacute;n / comedor con un sistema incorporado de casete (no presente en la planta baja), chimenea a madera o gas y ventiladores para el verano,</li>\r\n	<li>Dos terrazas con vistas panor&aacute;micas,</li>\r\n	<li>Una piscina com&uacute;n grande (10x20m) con solario,</li>\r\n	<li>Una pista de tenis,</li>\r\n	<li>En el sal&oacute;n tambi&eacute;n encontrar&aacute; un televisor, reproductor de DVD, radio-CD, una peque&ntilde;a biblioteca de libros y DVDs</li>\r\n</ul>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>&nbsp;</p>\r\n\r\n			<p>CASA/DUPLEX 107m&sup2;<br />\r\n			&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>El d&iacute;a</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 semana</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 semanas</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 semanas</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 semanas</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept hasta Junio</p>\r\n			</td>\r\n			<td>\r\n			<p>105,00 &euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1090&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Julio y agosto</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2290&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>CASA/BUNGALOW 147m&sup2;<br />\r\n			&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>El dia</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 semana</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 semanas</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 semanas</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 semanas</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept hasta Junio</p>\r\n			</td>\r\n			<td>\r\n			<p>119&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>590&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1590&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Julio y agosto</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>950&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1750&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2350&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2950&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ventaja de precio: cuanto m&aacute;s tiempo alquile el bungalow, m&aacute;s barato ser&aacute; el precio al d&iacute;a . Las reservas realizadas antes de la temporada alta del 1 de abril tendr&aacute;n un descuento del 10 %.</p>\r\n\r\n<p><strong>SE PUEDE INVERNAR DESDE EL 01/10 AL 31/05</strong></p>\r\n\r\n<p>Si usted alquila m&aacute;s de un mes, el consumo de electricidad ( &euro; 0.25 / kWh ) no est&aacute; incluido en el precio.</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 MES</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 MES</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 MES</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>5 MES</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>6 MES</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>CASA/DUPLEX (107M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>1690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3190&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>CASA/BUNGALOW (147M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4490&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>COSTES EXTRA:</h2>\r\n\r\n<p>Si el bungalow est&aacute; limpio y ordenado, el coste de limpieza estar&aacute; incluido. En caso contrario, se restar&aacute;n &euro; 60 al dep&oacute;sito retenido.</p>\r\n\r\n<p>Gas : 1 botella/mes gratis, botellas adicionales: &euro; 18 / botella</p>\r\n\r\n<p>Toallas &euro; 10 p/p (tendr&aacute; a su disposici&oacute;n 2 toallas grandes y dos peque&ntilde;as) .</p>\r\n\r\n<p>Las s&aacute;banas siempre est&aacute;n incluidas.</p>\r\n\r\n<p>Dep&oacute;sito: &euro; 200/casa.</p>\r\n\r\n<h2>SILLAS DE RUEDAS:</h2>\r\n\r\n<p>Nuestras propiedades no est&aacute;n homologadas para sillas de ruedas, pero si para personas con movilidad reducida.</p>\r\n', 'es'),
(36, 14, 'Informationen & Preise', '<h2>UNSERE H&Auml;USER:</h2>\r\n\r\n<ul>\r\n	<li>3 Schlafzimmer. In den gro&szlig;en Bungalows finden Sie zwei Schlafzimmer mit einem Doppelbett oder zwei Einzelbetten und einem gro&szlig;en Schlafzimmer f&uuml;r vier Personen mit zwei Einzelbetten und ein Etagenbett.&nbsp;In der kleineren Duplex bekommen Sie ein Schlafzimmer mit einem Doppelbett, ein Schlafzimmer mit Zweipersonenbett und ein Schlafzimmer mit einem Doppelbett und Etagenbetten.</li>\r\n	<li>Eine Doppelstellplatz f&uuml;r das Auto,</li>\r\n	<li>Solarium mit BBQ</li>\r\n	<li>Eine Einbauk&uuml;che mit den notwendigen Annehmlichkeiten wie eine Kaffeemaschine, K&uuml;hlschrank mit Gefrierfach und notwendigen Utensilien, Kocht&ouml;pfe, ...</li>\r\n	<li>2 Badezimmer mit Dusche / Bad, WC</li>\r\n	<li>Ein G&auml;ste-WC mit Waschbecken,</li>\r\n	<li>Ein Abstellraum mit Waschmaschine und B&uuml;geleisen und B&uuml;gelbrett, Putzzeug, ...</li>\r\n	<li>Ein ger&auml;umiges Wohn / Esszimmer mit einem eingebauten Kassette (nicht im Duplex) auf Holz oder Gas und Ventilatoren f&uuml;r den Sommer,</li>\r\n	<li>Zwei Terrassen mit Panoramablick,</li>\r\n	<li>Eine gro&szlig;e (10 * 20M) Swimmingpool mit Liegewiese,</li>\r\n	<li>Ein Tennisplatz,</li>\r\n	<li>Im Wohnzimmer finden Sie auch einen Fernseher, DVD-Player, Radio-CD-Player, eine kleine Bibliothek f&uuml;r B&uuml;cher und DVDs</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p><strong>HAUS/DUPLEX 107m&sup2;</strong></p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>pro Tag</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Woche</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Wochen</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Wochen</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Wochen</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept bis Juni</p>\r\n			</td>\r\n			<td>\r\n			<p>&euro; 105,00</p>\r\n			</td>\r\n			<td>\r\n			<p>490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1090&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Juli + Augustus</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2290&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p><strong>HAUS/BUNGALOW 147m&sup2;</strong></p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>pro Tag</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>1 Woche</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 Wochen</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 Wochen</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 Wochen</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sept t.e.m Juni</p>\r\n			</td>\r\n			<td>\r\n			<p>119&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>590&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1290&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1590&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>20/12 tot 4/1</p>\r\n			</td>\r\n			<td>\r\n			<p>-</p>\r\n			</td>\r\n			<td>\r\n			<p>950&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>1750&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2350&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2950&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Preisvorteil: Je l&auml;nger und / oder je fr&uuml;her Sie mieten, desto g&uuml;nstiger der Preis/Tag.</p>\r\n\r\n<p>Die Buchungen f&uuml;r die Hochsaison gemacht &lt;1 April geben ein automatisches Preisvorteil vom 10%.</p>\r\n\r\n<p><strong>&Uuml;BERWINTEREN IST M&Ouml;GLICH 1/10 bis 31/05</strong></p>\r\n\r\n<p>Wenn Sie mieten f&uuml;r mehr als einen Monat ist der Stromverbrauch (0,25 &euro; / kWh) nicht in Preis inbegriffen.</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0" style="width:70%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>2 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>3 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>4 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>5 MND</p>\r\n			</th>\r\n			<th scope="col">\r\n			<p>6 MND</p>\r\n			</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>HAUS/DUPLEX (107M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>1690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2490&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3190&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3790&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4290&euro;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>HAUS/BUNGALOW (147M2)</p>\r\n			</td>\r\n			<td>\r\n			<p>1890&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>2690&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3390&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>3990&euro;</p>\r\n			</td>\r\n			<td>\r\n			<p>4490&euro;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Zusatzkosten:</h2>\r\n\r\n<p>Wenn das Haus besenrein und ordentlich hinterlassen wird, dann ist die Endreinigung im Preis inbegriffen. In anderen F&auml;llen wird 60 &euro; von der Kaution einbehalten.</p>\r\n\r\n<p>Gas: 1 Flasche / Monat ist kostenlos, zus&auml;tzliche Flaschen = &euro; 18 / Flasche</p>\r\n\r\n<p>Handt&uuml;cher &euro; 10 p / p (zwei Badet&uuml;cher und zwei kleinere sind verf&uuml;gbar).</p>\r\n\r\n<p><strong>Kaution = 200 &euro; / Haus.</strong></p>\r\n\r\n<h2>Rollstuhlfahrer:</h2>\r\n\r\n<p>Unsere Objekte sind geeignet f&uuml;r mobile und weniger mobile Menschen. Rollstuhl-abh&auml;ngige Menschen jedoch m&uuml;ssen wir&nbsp; unsere Kolleginnen und Kollegen empfehlen.</p>\r\n', 'de'),
(42, 16, 'Foto''s', '<p>Content is replaced by template</p>\r\n', 'nl'),
(43, 16, 'Photos', '<p>Content is replaced by template.</p>\r\n', 'en'),
(44, 16, 'Fotos', '<p>Content is replaced by template.</p>\r\n', 'es'),
(45, 16, 'Fotos', '<p>Content is replaced by template.</p>\r\n', 'de'),
(46, 17, 'Agenda', '<h2><strong>Avondchiro&#39;s</strong></h2>\r\n\r\n<p>tijdens de examens dus</p>\r\n\r\n<h2><strong>Eindactiviteit</strong></h2>\r\n\r\n<p>ja, best wel leuk.</p>\r\n\r\n<h2><strong>Kamp</strong></h2>\r\n\r\n<p>We vertrekken 1 augustus. Wemels en ribbels op 3 augustus en aspis op voorwacht den 31e.</p>\r\n', 'nl'),
(47, 18, 'Verhuur', '<p>BEL NIET NAAR BARTJE</p>\r\n\r\n<p><a href="verhuurform">verhuurform</a></p>\r\n', 'nl'),
(48, 19, 'Programmaboekje', '', 'nl'),
(49, 20, 'verhuurformulier', '', 'nl'),
(50, 21, 'Leidingsploeg', '<p>Van wie krijg je leiding?</p>\r\n', 'nl');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@host.local', 'ba9f763ebdf1180af8e6b2cbe2b53b2300a1a799fcf14d09eb5375891284da12', '2016-01-27 01:51:24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `body`, `excerpt`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 4, 'test', 'test', '<p>bla</p>\r\n', '<p>testyy</p>\r\n', '2016-03-22 18:09:28', '2016-03-22 17:09:39', '2016-03-22 17:09:39');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `gsm` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `last_login_at`, `type`, `gsm`) VALUES
(4, 'Ruben', 'rubendeswaef@gmail.com', '$2y$10$spN3UdE0HIZnvvMX3q7p0eBLkwS0JsxAvHyxfT5zNsAO04ZzHzHMG', 'wnaqGhtsgrFAlLFpjWeHZAtXa4AflUvZ8xLHCVGObYdJNeQChDW4YfGSa9pk', '2016-05-02 17:27:37', '2016-05-02 16:27:37', '2016-05-02 16:27:37', 3, '0471202465'),
(8, 'admin', 'admin@test.be', '$2y$10$FgH6N0qzBd9h78exQTdaKu3AW3qymsX.FgWTYYghOr7p2UOtr0WdK', NULL, '2016-05-02 16:36:34', '2016-05-02 16:36:34', NULL, 3, '420');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `verslags`
--

CREATE TABLE IF NOT EXISTS `verslags` (
  `id` int(10) unsigned NOT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `verslag` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `verslags`
--

INSERT INTO `verslags` (`id`, `poster`, `name`, `info`, `remember_token`, `created_at`, `updated_at`, `verslag`) VALUES
(57, 'Ruben', 'finaltest', 'hupsa', NULL, '2016-04-20 17:57:49', '2016-04-20 17:57:49', '3ed89ca28c4c9a744c1c6229c6bb7d32.docx'),
(58, 'testen', 'teetetee', 'etet', NULL, '2016-04-20 18:47:00', '2016-04-20 18:47:00', '93e078aeff0235ba0c9f9a9f64ebfb51.docx'),
(59, 'test', 'claudia', 'hey claudia', NULL, '2016-04-20 18:49:15', '2016-04-20 18:49:15', 'bf66ca37fcae573d887d66e2bd9aa90a.docx'),
(60, 'test', 'testdisabled', '', NULL, '2016-04-21 09:43:11', '2016-04-21 09:43:11', 'fcc4862f551164e700479c86fe50e662.docx'),
(61, 'Ruben', 'Mailtest2', 'hey ik test de mails', NULL, '2016-04-24 11:22:26', '2016-04-24 11:22:26', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx021ccd20f107b0c29184b0491c2fcbbd.docx'),
(62, 'Ruben', 'Mailtest3', 'hey ik test de mails', NULL, '2016-04-24 11:24:25', '2016-04-24 11:24:25', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx368e96efe609321ced8e9c028c2cc251.docx'),
(63, 'Ruben', 'Mailtest4', 'hey ik test de mails', NULL, '2016-04-24 11:26:49', '2016-04-24 11:26:49', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx0e261193cecc09892c8140b5e321453f.docx'),
(64, 'Ruben', 'mailtest5', 'Zou het hebben gewerkt?', NULL, '2016-04-24 11:27:43', '2016-04-24 11:27:43', 'liefste peter (2015_12_09 18_52_11 UTC).docx264473e750ff4b64aebd4e182f6474e8.docx'),
(65, 'Ruben', 'mailtest6', 'SMTP is gefixt', NULL, '2016-04-24 11:33:23', '2016-04-24 11:33:23', 'TITO GESPLITSTEN DAG (2015_12_09 18_52_11 UTC).docxb519d09b6c611e47a6962a1d3c27c93b.docx'),
(66, 'Ruben', 'ddtest', 'eeee', NULL, '2016-04-24 11:40:20', '2016-04-24 11:40:20', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx2dcd96ebdc822958a4f449ea12b64a18.docx'),
(67, 'Ruben', 'usertest', 'tetete', NULL, '2016-04-24 11:55:52', '2016-04-24 11:55:52', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxcaf36470dec42e6e275c7024e16c3c8f.docx'),
(68, 'Ruben', 'usertest2', 'tetete', NULL, '2016-04-24 11:56:21', '2016-04-24 11:56:21', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxea70c3a840ad77814786d937a56c5838.docx'),
(69, 'Ruben', 'ddtest4', 'tetete', NULL, '2016-04-24 13:24:41', '2016-04-24 13:24:41', 'Evaluatie 2015-2016 (2015_12_09 18_52_11 UTC).docadcb074bc966003e9812c1d134794f4f.doc'),
(70, 'Ruben', 'ddtest5', 'y', NULL, '2016-04-24 13:26:48', '2016-04-24 13:26:48', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxb622888c53d239d57746bd7d56f40411.docx'),
(71, 'Ruben', 'ddtest6', 'tetet', NULL, '2016-04-24 13:27:49', '2016-04-24 13:27:49', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxea9ea7d3e3aedab54e1d5682114754ea.docx'),
(73, 'Ruben', 'ddtest7', 'tetet', NULL, '2016-04-24 13:29:22', '2016-04-24 13:29:22', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx4f5dac770d839c79f895194292d13a42.docx'),
(75, 'Ruben', 'ddtest8', 'tetet', NULL, '2016-04-24 13:30:49', '2016-04-24 13:30:49', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx7230d9ff2dfab46a590388f3ea7d12e3.docx'),
(77, 'Ruben', 'ddtest9', 'tetet', NULL, '2016-04-24 13:31:07', '2016-04-24 13:31:07', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx87b828bb444577d4c5531f82d1c04782.docx'),
(79, 'Ruben', 'ddtest10', 'tetet', NULL, '2016-04-24 13:32:44', '2016-04-24 13:32:44', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx74727d466a3138d66d3e367f5a4e299c.docx'),
(80, 'Ruben', 'ddtest11', 'tetet', NULL, '2016-04-24 13:34:34', '2016-04-24 13:34:34', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxb0c872f35198e41f6b1803cdd8b213fb.docx'),
(81, 'Ruben', 'ddtest12', 'tetet', NULL, '2016-04-24 13:34:43', '2016-04-24 13:34:43', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx0e159a6cba24f275f119d6e2efeeff95.docx'),
(82, 'Ruben', 'ddtest13', 'tetet', NULL, '2016-04-24 13:35:15', '2016-04-24 13:35:15', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx467a28d289cf9f8fc2b170144d6d610f.docx'),
(83, 'Ruben', 'mailtest7', 'tetete', NULL, '2016-04-24 13:35:57', '2016-04-24 13:35:57', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx1fd7cdb2b219f66b01e4492d09a4afb6.docx'),
(84, 'Ruben', 'mailtest8', 'tetet', NULL, '2016-04-24 13:36:38', '2016-04-24 13:36:38', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx27150dab51d72cb1d52de4e7cb5c5401.docx'),
(85, 'Ruben', 'mailtest9', 'tetet', NULL, '2016-04-24 13:38:34', '2016-04-24 13:38:34', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx0ad669b307b251aec81798220c2182fe.docx'),
(86, 'Ruben', 'mailtest10', 'tetet', NULL, '2016-04-24 13:39:09', '2016-04-24 13:39:09', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxc2c823ac0685b2b4ab677fe613baba87.docx'),
(87, 'Ruben', 'mailtest11', 'tetet', NULL, '2016-04-24 13:39:22', '2016-04-24 13:39:22', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx0f4723edd68c91bbc32bb81f6c1697f8.docx'),
(88, 'Ruben', 'leidingtest', 'tet', NULL, '2016-04-24 13:43:54', '2016-04-24 13:43:54', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx6f7d7d4c93b99cdeb5b872615eea49ee.docx'),
(89, 'Ruben', 'final', 'tttt', NULL, '2016-04-24 13:44:51', '2016-04-24 13:44:51', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxf46b819c586652de766d2fb4e23a3d40.docx'),
(90, 'Ruben', 'queue', 'test', NULL, '2016-04-24 13:47:58', '2016-04-24 13:47:58', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docx0ee6ca2571f48f91bacb31453eca8f65.docx'),
(91, 'Ruben', 'queu2', 'tet', NULL, '2016-04-24 13:49:09', '2016-04-24 13:49:09', 'de_chinese_muur (2015_12_09 18_52_11 UTC).docxbe64aef6852d3a9dbd19f155df94c8ca.docx');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `album_photos`
--
ALTER TABLE `album_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `album_translations`
--
ALTER TABLE `album_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `album_translations_album_id_locale_unique` (`album_id`,`locale`),
  ADD KEY `album_translations_locale_index` (`locale`);

--
-- Indexen voor tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_document_unique` (`document`);

--
-- Indexen voor tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_uri_unique` (`uri`);

--
-- Indexen voor tabel `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`),
  ADD KEY `page_translations_locale_index` (`locale`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexen voor tabel `verslags`
--
ALTER TABLE `verslags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verslags_name_unique` (`name`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `album_photos`
--
ALTER TABLE `album_photos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `album_translations`
--
ALTER TABLE `album_translations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT voor een tabel `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `verslags`
--
ALTER TABLE `verslags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `album_translations`
--
ALTER TABLE `album_translations`
  ADD CONSTRAINT `album_translations_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
