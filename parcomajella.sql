-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Set 13, 2016 alle 14:33
-- Versione del server: 5.6.31-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_parcomajella`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ANIMALE`
--

CREATE TABLE IF NOT EXISTS `ANIMALE` (
  `NOME` varchar(500) NOT NULL,
  `THUMBNAIL` varchar(500) NOT NULL,
  `DESCRIZIONEBREVE` text NOT NULL,
  `DESCRIZIONELUNGA` text NOT NULL,
  PRIMARY KEY (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ANIMALE`
--

INSERT INTO `ANIMALE` (`NOME`, `THUMBNAIL`, `DESCRIZIONEBREVE`, `DESCRIZIONELUNGA`) VALUES
('Lupo appenninico', 'img/MAMMIFERI-Lupo-appenninico-incontro.jpg', 'Attualmente la popolazione del Parco si è stabilizzata ed è costituita da una decina di branchi riproduttivi con una consistenza complessiva di circa 70-80 individui, considerando sia gli animali presenti all’interno dei branchi che gli individui in dispersione.', ''),
('Orso bruno marsicano', 'img/MAMMIFERI-Orso-marsicano-primo-piano.jpg', 'Questa specie è difficilmente osservabile all''interno del Parco. I graffi degli artigli sui tronchi, i ciuffi di peli sugli alberi ricchi di resina, usati come grattatoi, e le orme su fango o su neve sono spesso gli unici segni che ne indicano la presenza. ', ''),
('Aquila reale', 'img/UCCELLI-Aquila-reale-volo.jpg', 'Con una apertura alare di oltre due metri, artigli robusti e con un becco estremamente affilato, l''Aquila reale è da sempre simbolo di maestosità. ', ''),
('Vipera di Orsini', 'img/RETTILI-Vipera-di-Orsini-particolare.jpg', 'A causa dell’indole docile e poco aggressiva, ma anche del debole veleno, utilizzato per paralizzare gli ortotteri di cui quasi esclusivamente si nutre, è considerata la vipera meno pericolosa d’Europa e risulta totalmente innocua per l’uomo.', ''),
('Coturnice', 'img/Coturnice.jpg', 'Si riconosce per il becco e le zampe rosso vivo, il piumaggio grigio ardesia con da numerose barre scure sui fianchi ed il capo contraddistinto da una striscia nera che dalla base del becco attraversa l''occhio, gira sotto l''orecchio per scendere sul petto. ', '_Alectoris graeca orlandoi_\r\nDi aspetto simile a una pernice, la Coturnice si riconosce per il becco e le zampe rosso vivo, il piumaggio grigio ardesia caratterizzato da numerose barre scure sui fianchi ed il capo contraddistinto da una striscia nera che dalla base del becco attraversa l''occhio, gira sotto l''orecchio per scendere sul petto.\r\nSpecie sedentaria, compie infatti solo migrazioni altitudinali tra le aree estive spesso ad alta quota e quelle di svernamento ad altitudini minori, è distribuita lungo la catena appenninica e in Sicilia, con due sottospecie distinte e diverse da quelle presenti sulle Alpi e sui Balcani.\r\nVive esclusivamente in ambienti rocciosi, alternati a ripidi pascoli e pendii pietrosi ma anche in presenza di arbusti, sulla Majella costituiti soprattutto da pini mughi. Il nido viene costruito in aree difficilmente accessibili ai predatori, generalmente tra le rocce, ben mimetizzato dalla vegetazione.'),
('Salamandrina di savi', 'img/ANFIBI-Salamandrina-di-Savi-in-acqua.jpg', 'Se disturbata può fingersi morta mettendo in atto un comportamento noto come tanatosi oppure solleva la coda verticalmente o la arrotola sul dorso, mostrando il vivace colore rosso delle parti ventrali, per disorientare i predatori.', ''),
('Salamandra', 'img/ANFIBI-Salamandra-appenninica-habitat-della-Salamandra.jpg', 'Anfibio Urodelo dall’aspetto tozzo e robusto, che raggiunge i 20 cm di lunghezza, la salamandra appenninica è resa  inconfondibile dalla presenza di macchie giallo-arancio di forma e dimensioni varie sul corpo nero lucente.', ''),
('Ululone appenninico', 'img/ANFIBI-Ululone-Appenninico-particolare.jpg', 'L''ululone è un piccolo rospo con caratteristica pupilla cuoriforme, lungo al massimo 5 cm, inconfondibile per la sua colorazione dorsale grigiastra che contrasta con il ventre vivacemente colorato di giallo intenso con macchie grigio-bluastre.', ''),
('Camoscio d''Abruzzo', 'img/MAMMIFERI-Camoscio-appenninico-montagna.jpg', 'Durante il periodo invernale i branchi di camoscio compiono degli spostamenti dalle aree estive e autunnali per arrivare a svernare nelle lunghe e selvagge valli presenti nel versante orientale del massiccio della Majella. ', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `CULTURA`
--

CREATE TABLE IF NOT EXISTS `CULTURA` (
  `NOME` varchar(500) NOT NULL,
  `NOMECOMPLETO` varchar(500) NOT NULL,
  `THUMBNAIL` varchar(500) DEFAULT NULL,
  `DESCRIZIONEBREVE` text NOT NULL,
  `DESCRIZIONE` text,
  `COMUNE` varchar(500) NOT NULL,
  `LOCALITA` varchar(500) NOT NULL,
  PRIMARY KEY (`NOME`),
  UNIQUE KEY `NOMECOMPLETO` (`NOMECOMPLETO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `CULTURA`
--

INSERT INTO `CULTURA` (`NOME`, `NOMECOMPLETO`, `THUMBNAIL`, `DESCRIZIONEBREVE`, `DESCRIZIONE`, `COMUNE`, `LOCALITA`) VALUES
('Madonna dell''Altare', 'Madonna dell''Altare', 'img/madonna-dell-altare-esterno.jpg', 'Il santuario è costruito nei pressi della Taverna, la grotta presso cui Pietro da Morrone sostò tra il 1235-1238. Il toponimo deriva dalla forma della roccia su cui la struttura è costruita. ', NULL, '', ''),
('Tombe rupestri', 'Tombe rupestri', 'img/Tombe-rupestri-Panoramica-sulle-tombe.jpg', 'È comunque possibile ipotizzare, vista la vicinanza con la chiesa di S. Liberatore, che un gruppo di eremiti vivesse nella zona intorno all’VIII–IX secolo e utilizzasse il complesso rupestre come luogo di culto.', NULL, '', ''),
('S. Angelo di Palombaro', 'S. Angelo di Palombaro', 'img/S-Angelo-di-Palombaro-alla-Grotta-Sant-Angelo.jpg', 'L’unica notizia sul complesso è presente in una bolla datata 1221 di Onorio III il quale conferma l’appartenenza delle chiese di S. Angelo e S. Flaviano di Palombaro al monastero di S. Martino in Valle. ', NULL, '', ''),
('S. Bartolomeo di Legio', 'S. Bartolomeo di Legio', 'img/S-Bartolomeo-in-Legio-interno.jpg', 'All''interno della chiesa vi è una piccola risorgenza d''acqua. È l''acqua di S. Bartolomeo, dalle proprietà taumaturgiche, che viene raccolta con un cucchiaio e mescolata con l’acqua di una sorgente sul lato destro del sottostante torrente Capo la Vena.', NULL, '', ''),
('Eremo di S. Germano', 'Eremo di S. Germano', 'img/s-germano-di-pacentro-borgo-Campo-di-Giove.jpg', 'La chiesa fu costruita nei primi decenni del XV secolo, come attesta la data (1428) incisa sull''architrave del portale di facciata. Il settore abitativo dovette sorgere nel XVIII o nel XIX secolo, come testimonia la fattura del portale d''ingresso. ', NULL, '', ''),
('S. Liberatore a Maiella', 'S. Liberatore a Maiella', 'img/S-Liberatore-a-Majella.jpg', 'Dopo il terremoto del 990 il priore Teobaldo (1007-1022) avviò la ricostruzione del monastero e del suo patrimonio fondiario in parte occupato dai conti di Chieti. Nel sec. XI i Normanni sottoposero il monastero alla loro influenza. ', NULL, '', ''),
('Eremo di S. Michele', 'Eremo di S. Michele', 'img/S-Michele-di-Pescocostanzo-esterno.jpg', 'Fino alla seconda guerra mondiale vi si celebravano due feste importanti l’8 Maggio e il 29 Settembre. I pellegrini raccoglievano nella grotta un sassolino che conservavano fino alla festa dell’anno successivo. Durante il secondo conflitto mondiale la grotta fu utilizzata come rifugio e base militare.', NULL, '', ''),
('S. Onofrio del Morrone', 'S. Onofrio del Morrone', 'img/S-Onofrio-al-Morrone-esterno.jpg', 'Quasi certamente l’eremo fu ristrutturato e non fondato da Pietro del Morrone. Secondo i biografi, fra Pietro si fece sistemare una cella sopra al monastero di S. Spirito di Sulmona e vi si trasferì nel giugno del 1293. ', 'Un lungo terrazzo dà accesso al complesso, restaurato dopo l’ultima guerra. La chiesa ha un impianto rettangolare ad aula con soffitto ligneo quattrocentesco. Sulla parete sinistra, in alto, vi sono due affreschi del XV sec. raffiguranti il Cristo Re e San Giovanni Battista. Sulla parete di fondo è la parte più antica dell’eremo: a sinistra un arco dà accesso ad un piccolo oratorio, a destra un corridoio dà accesso a due piccoli ambienti, identificati con le cellette di Pietro del Morrone e di Roberto da Salle. \r\nGli affreschi che ornano l’oratorio - una Crocifissione, una Madonna con il Bambino e i busti di San Mauro e Sant’Antonio ai lati di San Benedetto - sono tradizionalmente attribuiti a Gentile da Rocca (seconda metà del sec. XIII), ma studi recenti mettono in dubbio tale attribuzione. ', 'Sulmona (AQ)', 'Morrone, a circa 620 m. s.l.m.'),
('Tradizione e folklore', 'Tradizione e folklore', 'img/tradizione-e-folklore.jpg', 'Le feste popolari dei paesi del Parco sono testimonianze importanti di una cultura agro-silvo-pastorale, animate dalle motivazioni di sempre: l’auspicio di un buon raccolto, il timore del sopravvento della natura, la necessità di sconfiggere il male.', NULL, '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `FOTO`
--

CREATE TABLE IF NOT EXISTS `FOTO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(500) NOT NULL,
  `URL` varchar(500) NOT NULL,
  `TIPO` enum('HH','PERCORSO','PIANTA','ANIMALE','CULTURA','TERRITORIO','HOME','ALTRO') NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOME` (`NOME`),
  UNIQUE KEY `URL` (`URL`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dump dei dati per la tabella `FOTO`
--

INSERT INTO `FOTO` (`ID`, `NOME`, `URL`, `TIPO`) VALUES
(1, 'natura', 'img/Flora-del-Parco-fiori-roccia.jpg', 'HOME'),
(2, 'territorio', 'img/il-paesaggio-agrario-prati.jpg', 'HOME'),
(3, 'lupo', 'img/ForesteriaCasaDelLupo.jpg', 'HH'),
(4, 'lupo2', 'img/ForesteriaCasaDelLupo2.jpg', 'HH'),
(5, 'lupo3', 'img/ForesteriaCasaDelLupo3.jpg', 'HH'),
(6, 'lupo4', 'img/ForesteriaCasaDelLupo4.jpg', 'HH'),
(7, 'lupo5', 'img/ForesteriaCasaDelLupo5.jpg', 'HH'),
(8, 'lupo6', 'img/ForesteriaCasaDelLupo6.jpg', 'HH'),
(15, 'spirito', 'img/SentieroDelloSpirito.jpg', 'PERCORSO'),
(14, 'ForesteriaOstelloDeiQuarti', 'img/ForesteriaOstelloDeiQuarti.jpg', 'HH'),
(9, 'stazione', 'img/ForesteriaOstelloDellaStazione.jpg', 'HH'),
(10, 'stazione2', 'img/ForesteriaOstelloDellaStazione2.jpg', 'HH'),
(11, 'stazione3', 'img/ForesteriaOstelloDellaStazione3.jpg', 'HH'),
(12, 'stazione4', 'img/ForesteriaOstelloDellaStazione4.jpg', 'HH'),
(13, 'stazione5', 'img/ForesteriaOstelloDellaStazione5.jpg', 'HH'),
(16, 'spirito2', 'img/SentieroDelloSpirito2.jpg', 'PERCORSO'),
(17, 'spirito3', 'img/SentieroDelloSpirito3.jpg', 'PERCORSO'),
(18, 'spirito4', 'img/SentieroDelloSpirito4.jpg', 'PERCORSO'),
(19, 'spirito5', 'img/SentieroDelloSpirito5.jpg', 'PERCORSO'),
(20, 'spirito6', 'img/SentieroDelloSpirito6.jpg', 'PERCORSO'),
(21, 'spirito7', 'img/SentieroDelloSpirito7.jpg', 'PERCORSO'),
(22, 'spirito8', 'img/SentieroDelloSpirito8.jpg', 'PERCORSO'),
(23, 'liberta', 'img/SentieroDellaLiberta.jpg', 'PERCORSO'),
(24, 'liberta2', 'img/SentieroDellaLiberta2.jpg', 'PERCORSO'),
(25, 'liberta3', 'img/SentieroDellaLiberta3.jpg', 'PERCORSO'),
(26, 'liberta4', 'img/SentieroDellaLiberta4.jpg', 'PERCORSO'),
(27, 'liberta5', 'img/SentieroDellaLiberta5.jpg', 'PERCORSO'),
(28, 'liberta6', 'img/SentieroDellaLiberta6.jpg', 'PERCORSO'),
(29, 'liberta7', 'img/SentieroDellaLiberta7.jpg', 'PERCORSO'),
(30, 'liberta8', 'img/SentieroDellaLiberta8.jpg', 'PERCORSO'),
(31, 'liberta9', 'img/SentieroDellaLiberta9.jpg', 'PERCORSO'),
(32, 'liberta10', 'img/SentieroDellaLiberta10.jpg', 'PERCORSO'),
(33, 'acero', 'img/AceroDiLobel.jpg', 'PIANTA'),
(34, 'acero2', 'img/AceroDiLobel2.jpg', 'PIANTA'),
(35, 'acero3', 'img/AceroDiLobel3.jpg', 'PIANTA'),
(36, 'acero4', 'img/AceroDiLobel4.jpg', 'PIANTA'),
(37, 'ferro2', 'img/RavaDelFerro2.jpg', 'PERCORSO'),
(38, 'ferro', 'img/RavaDelFerro.jpg', 'PERCORSO'),
(39, 'ferro3', 'img/RavaDelFerro3.jpg', 'PERCORSO'),
(40, 'ferro4', 'img/RavaDelFerro4.jpg', 'PERCORSO'),
(41, 'ferro5', 'img/RavaDelFerro5.jpg', 'PERCORSO'),
(42, 'ferro6', 'img/RavaDelFerro6.jpg', 'PERCORSO'),
(43, 'ferro7', 'img/RavaDelFerro7.jpg', 'PERCORSO'),
(44, 'ferro8', 'img/RavaDelFerro8.jpg', 'PERCORSO'),
(45, 'ferro9', 'img/RavaDelFerro9.jpg', 'PERCORSO'),
(46, 'ferro10', 'img/RavaDelFerro10.jpg', 'PERCORSO'),
(47, 'ferro11', 'img/RavaDelFerro11.jpg', 'PERCORSO'),
(48, 'morrone', 'img/S-Onofrio-al-Morrone-esterno.jpg', 'CULTURA'),
(49, 'morrone2', 'img/SOnofrioDelMorrone2', 'CULTURA'),
(50, 'morrone3', 'img/SOnofrioDelMorrone3', 'CULTURA'),
(51, 'morrone4', 'img/SOnofrioDelMorrone4', 'CULTURA'),
(52, 'coturnice', 'img/Coturnice.jpg', 'ANIMALE'),
(53, 'coturnice3', 'img/Coturnice3.jpg', 'ANIMALE'),
(54, 'coturnice2', 'img/Coturnice2.jpg', 'ANIMALE'),
(55, 'coturnice4', 'img/Coturnice4.jpg', 'ANIMALE');

-- --------------------------------------------------------

--
-- Struttura della tabella `HH`
--

CREATE TABLE IF NOT EXISTS `HH` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id semplice',
  `NOME` varchar(500) NOT NULL COMMENT 'nome univoco',
  `THUMBNAIL` varchar(500) NOT NULL,
  `LUOGO` text,
  `IMMAGINELUOGO` varchar(500) DEFAULT NULL,
  `SERVIZI` text,
  `DESCRIZIONE` text,
  `DESCRIZIONEBREVE` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOME` (`NOME`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `HH`
--

INSERT INTO `HH` (`ID`, `NOME`, `THUMBNAIL`, `LUOGO`, `IMMAGINELUOGO`, `SERVIZI`, `DESCRIZIONE`, `DESCRIZIONEBREVE`) VALUES
(1, 'Foresteria Casa del Lupo', 'img/ForesteriaCasaDelLupo.jpg', 'Si trova a Caramanico Terme, cuore del Parco Nazionale della Majella che è un ideale punto di partenza per escursioni nella splendida Valle dell’Orfento, agli Eremi di Celestino V ed alle massime vette della Majella e del Morrone. E’ un funzionale Centro di Educazione Ambientale di interesse regionale dove vengono realizzati laboratori e campi per ragazzi delle scuole ed attività formative a tema naturalistico. ', 'img/MappaForesteriaCasaDelLupo.jpg', 'La Casa del Lupo possiede tredici camere con bagno personale, per un totale di 25 posti letto. Le camere sono singole, doppie e triple ed hanno l''ingresso direttamente dall''esterno e sei sono dotate di un piccolo terrazzo panoramico.\r\n \r\nA supporto delle camere trovate un''ampia sala da pranzo, una cucina a disposizione degli ospiti (uso da concordare), una sala riunioni, parcheggio interno, servizi per diversamente abili, servizio fax, internet wi-fi free, sala TV con salotto, laboratorio didattico.', 'Struttura dell''Ente Parco Nazionale della Majella, la Casa del Lupo rispetta l''ambiente e per questo adotta, nei limiti delle proprie possibilità, ogni accorgimento per salvaguardare le risorse naturali che utilizza, per risparmiare energia, per sensibilizzare i propri Ospiti al rispetto delle emergenze naturalistiche e culturali del territorio del Parco, aderisce a Legambiente Turismo, e si sta certificando come struttura Ecolabel.\r\n \r\nPromuove la cultura dell''accoglienza, del rispetto dell''ambiente e della sostenibilità nella gestione delle risorse naturali. Valorizza il territorio evidenziandone gli elementi naturali, culturali, artistici, gastronomici, con iniziative di educazione, promozione ed informazione.', 'Via del Vivaio, s.n.\r\nTel. 085.922343\r\nFax 085.922343\r\nhttp://www.casadellupo.it\r\ninfo@majambiente.it \r\n \r\nStruttura certifica Pan Parks Si trova a Caramanico Terme, cuore del Parco Nazionale della Majella è un ideale punto di partenza per escursioni nella splendida Valle dell’Orfento, agli Eremi di Celestino V ed alle massime vette della Majella e del Morrone.'),
(2, 'Foresteria L''Ostello della Stazione', 'img/ForesteriaOstelloDellaStazione.jpg', 'La foresteria del Parco "L''Ostello della Stazione" è sita nel comune di Cansano (AQ) costituisce un utile punto ricettivo per la visita e una base di partenza per conoscere il territorio circostante, con le sue attrattive naturalistiche e storico architettoniche.', 'img/MappaForesteriaOstelloDellaStazione.jpg', 'La struttura offre 16 posti letto, cucina, sala ricreativa, punto informativo, possibilità di noleggiare mountain bike e bici elettriche.\r\nNella parte esterna è disponibile un´area verde con tavoli, panche e gazebo in legno.\r\n \r\nL´Ostello della Stazione possiede quattro camere con bagno personale, per un totale di 16 posti letto. Le camere sono tutte a 4 posti disposti con letti a castello.\r\nA supporto delle camere trovate un´ampia sala da pranzo, una cucina a disposizione degli ospiti (uso da concordare), una sala riunioni ed un punto di orientamento alla visita del Parco Nazionale della Majella.', 'Frutto del restauro operato dall´Ente Parco attraverso il progetto "Al Parco in treno", che ha visto il recupero e la valorizzazione di strutture ferroviarie dismesse per la costruzione di una rete di servizio al turismo sostenibile la foresteria del Parco "L''Ostello della Stazione" sita nel comune di Cansano (AQ) costituisce un utile punto ricettivo per la visita e una base di partenza per conoscere il territorio circostante, con le sue attrattive naturalistiche e storico architettoniche. \r\n \r\nL''Ente Parco ha stipulato una convenzione con AGESCI Abruzzo per la nascita nei locali dell’Ostello della Base Scout Majella Cansano, dove vengono formate le nuove reclute con campi estivi e di volontariato del gruppo Scout AGESCI Abruzzo.', 'Località Stazione di Cansano\r\nTel. 085.4503239\r\nbase@agesciabruzzo.org\r\n \r\nFrutto del restauro operato dall´Ente Parco attraverso il progetto "Al Parco in treno", che ha visto il recupero e la valorizzazione di strutture ferroviarie dismesse per la costruzione di una rete di servizio al turismo sostenibile la foresteria del Parco "l''Ostello della Stazione" sita nel comune di Cansano (AQ) ...'),
(3, 'Ostello Macchia del Fresco', 'img/OstelloMacchiaDelFresco.jpg', NULL, NULL, NULL, NULL, 'Loc. Macchia del Fresco\r\nTel. 339.2615405\r\nFax 0872. 980970\r\nhttp://www.laportadelsole.eu\r\nostellomacchiadelfresco@gmail.com \r\n \r\nL''ostello del Parco si trova a Fara S. Martino (CH), città dell’acqua e della pasta. Porta naturale di accesso del versante orientale del Parco Nazionale della Majella, il paese è il luogo ideale di partenza per le escursioni nel Parco, la visita ai caratteristici borghi, alle aree faunistiche...'),
(4, 'Hotel Casa dell''Orso', 'img/HotelCasaDellOrso.jpg', NULL, NULL, NULL, NULL, 'località Sant''Antonio\r\nTel. 333.5889738\r\nhttp://casadellorso.wix.com/palena\r\nmarilenacasacchia@gmail.com\r\n \r\nLa Casa dell''Orso è dotata di: 10 camere arredate con gusto, con riscaldamento, servizi, TV, telefono e wi-fi; Sala ristorante; Sala lettura e TV; Area giochi per bambini; Area pic-nic; Area parcheggio Camper. Le camere arredate con eleganza, stile ed in armonia con la struttura, con servizi privati, TV ...'),
(5, 'Foresteria L''Ostello dei Quarti', 'img/ForesteriaLOstellodeiQuarti.jpg', NULL, NULL, NULL, NULL, 'Località stazione di Palena\r\nTel. 329.1570466\r\npallenium.coop@libero.it \r\n \r\nLa foresteria del Parco "l''Ostello dei Quarti" è immersa nello splendido altopiano di Quarto Santa Chiara un pianoro posto a circa 1250 m di quota. Suggestivo è lo scenario offerto dalla natura in ogni periodo dell''anno. La struttura molto accogliente, dispone di punto ristoro e cucina, sala ricreativa e ventiquattro...');

-- --------------------------------------------------------

--
-- Struttura della tabella `PERCORSO`
--

CREATE TABLE IF NOT EXISTS `PERCORSO` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DIFFICOLTA` enum('FACILE','MODERATO','IMPEGNATIVO','DIFFICILE','MOLTODIFFICILE','ESTREMO') DEFAULT NULL,
  `SIGLA` varchar(500) NOT NULL,
  `NOME` varchar(500) DEFAULT NULL,
  `THUMBNAIL` varchar(500) DEFAULT NULL,
  `DESCRIZIONEBREVE` text,
  `DESCRIZIONE` text,
  `DISLIVELLO` int(11) DEFAULT NULL,
  `INIZIO` varchar(500) DEFAULT NULL,
  `FINE` varchar(500) DEFAULT NULL,
  `DURATA` int(11) DEFAULT NULL,
  `LUNGHEZZA` int(11) DEFAULT NULL,
  `IMMAGINELUOGO` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIGLA` (`SIGLA`),
  UNIQUE KEY `NOME` (`NOME`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dump dei dati per la tabella `PERCORSO`
--

INSERT INTO `PERCORSO` (`ID`, `DIFFICOLTA`, `SIGLA`, `NOME`, `THUMBNAIL`, `DESCRIZIONEBREVE`, `DESCRIZIONE`, `DISLIVELLO`, `INIZIO`, `FINE`, `DURATA`, `LUNGHEZZA`, `IMMAGINELUOGO`) VALUES
(1, 'FACILE', 'L', 'Sentiero della Libertà', 'img/SentieroDellaLiberta.jpg', 'Sigla sentiero: L.\r\nTempo di percorrenza: 0h 30''.\r\nDislivello: 100 m.', 'La prima tappa del Sentiero della Libertà va da Sulmona a Campo di Giove, ripercorrendo strade sterrate e facili mulattiere che furono utilizzate sul finire della II Guerra Mondiale, dopo l’armistizio dell’8 settembre 1943, dai reclusi in fuga dal campo di prigionia di Fonte d’Amore che cercavano la salvezza, guidati dai partigiani verso i territori già liberati dagli Alleati. La partenza si trova sulla S.R. 487 nei pressi del cimitero di Sulmona, dove una mulattiera sale la dorsale del Colle Savente e giunge a un pianoro da cui s’intravede in lontananza la grande croce ai piedi del Colle Mitra. Tutta l’area del Colle Mitra e di Piano Pacile è disseminata di resti archeologici (vasche in pietra per la raccolta delle acque, mura megalitiche, tracce d’insediamenti fortificati e sepolture d’epoca preromana) che hanno restituito nel tempo una grande quantità di manufatti e reperti, dal paleolitico al medioevo. Si attraversa il pianoro rimanendo sul fianco sud del Colle Mitra e si raggiunge Fonte Pacile. Da qui si continua ancora in leggera salita per un breve tratto e s’inizia a scendere verso Cansano raggiungendo Fonte Sulmontina. Il sentiero procede attraverso una vasta zona di coltivi e pascoli che lambisce la ferrovia e sbuca sulla S.P. 55 nei pressi della chiesa rurale di S. Donato e del cimitero di Cansano. Si prosegue verso la frazione S. Nicola, dove si prende la sterrata che costeggia la linea ferroviaria Sulmona-Carpinone e si fa tappa presso la Fonte Ramarozzo. La sterrata sale agilmente verso Piano Cerreto, antica zona agricola dove si usano ancora tecniche di coltivazione tradizionali e dove l’assenza di erbicidi favorisce la sopravvivenza di specie vegetali ormai poco diffuse come l’Agrostemma githago o l’Isatis tinctoria. L’ultimo tratto del sentiero fiancheggia la dorsale di Serra Carpineto e sale lentamente verso Campo di Giove. L’itinerario attraversa angoli del Parco poco conosciuti, come il Colle Mitra e la Val Cerreto, che regalano panorami inaspettati sulle valli e le cime circostanti. Il periodo migliore è senza dubbio la primavera o l’autunno inoltrato. ', 1000, 'Sulmona', 'Campo di Giove.', 30, 22, 'img/MappaSentieroDellaLiberta.jpg'),
(3, 'MODERATO', 'CP', 'Sentiero delle Capanne', 'img/SentieroDelleCapanne.jpg', 'Sigla sentiero: CP\r\nTempo di percorrenza: 2h 40''\r\nDislivello: 250 m', NULL, 250, NULL, NULL, 300, NULL, NULL),
(4, 'MODERATO', 'A4', 'Piano d''Orta', 'img/PianoDOrta.jpg', 'Sigla sentiero: A4\r\nTempo di percorrenza: 3h 15''\r\nDislivello: 300 m', NULL, 300, NULL, NULL, 180, NULL, NULL),
(5, 'MODERATO', 'B7', 'Fonte Viola', 'img/FonteViola.jpg', 'Sigla sentiero: B7\r\nTempo di percorrenza: 4h 00''\r\nDislivello: 690 m', NULL, 690, NULL, NULL, 240, NULL, NULL),
(6, 'IMPEGNATIVO', 'A2', 'Musellaro - S. Tommaso', 'img/MusellaroSanTommaso.jpg', 'Sigla sentiero: A2\r\nTempo di percorrenza: 4h 10''\r\nDislivello: 400 m', NULL, 400, NULL, NULL, 250, NULL, NULL),
(7, 'IMPEGNATIVO', 'B2', 'Caramanico - S. Nicolao', 'img/CaramanicoTerme_SanNicolao.jpg', 'Sigla sentiero: B2\r\nTempo di percorrenza: 5h 20''\r\nDislivello: 465 m', NULL, 465, NULL, NULL, 320, NULL, NULL),
(8, 'IMPEGNATIVO', 'B6', 'Anello di Lama Bianca', 'img/AnellodiLamaBianca.jpg', 'Sigla sentiero: B6\r\nTempo di percorrenza: 3h 30''\r\nDislivello: 625 m', NULL, 625, NULL, NULL, 390, NULL, NULL),
(9, 'DIFFICILE', 'S', 'Schiena d''Asino', 'img/Schiena-dasino.jpg', 'Sigla sentiero: S\r\nTempo di percorrenza: 4h 40''\r\nDislivello: 850 m', NULL, 850, NULL, NULL, 280, NULL, NULL),
(10, 'DIFFICILE', 'B1', 'Decontra - Majelletta', 'img/DecontraMajelletta.jpg', 'Sigla sentiero: B1\r\nTempo di percorrenza: 5h 00''\r\nDislivello: 810 m', NULL, 810, NULL, NULL, 300, NULL, NULL),
(11, 'DIFFICILE', 'C2', 'Macchia Metola', 'img/MacchiaMetolaMajelletta.jpg', 'Sigla sentiero: C2\r\nTempo di percorrenza: 4h 30''\r\nDislivello: 800 m', NULL, 800, NULL, NULL, 290, NULL, NULL),
(12, 'MOLTODIFFICILE', 'B3', 'Monte Pescofalcone', 'img/MontePescofalcone.jpg', 'Sigla sentiero: B3\r\nTempo di percorrenza: 5h 00''\r\nDislivello: 1000 m', NULL, 1000, NULL, NULL, 300, NULL, NULL),
(13, 'MOLTODIFFICILE', 'B5', 'Rava del Ferro', 'img/RavaDelFerro.jpg', 'Sigla sentiero: B5\r\nTempo di percorrenza: 5h 20''\r\nDislivello: 1160 m', 'Il sentiero B5 permette, percorrendo la Rava del Ferro (“rava” è un toponimo locale con il quale si indicano ripidi canali rocciosi), di salire rapidamente (con tempi di cammino relativamente brevi) dal versante occidentale della montagna sulla zona sommitale del massiccio della Majella. Per giungere all’inizio del sentiero, da S. Eufemia a Majella si percorre in direzione di Passo San Leonardo la S.S. 487, fino all’incrocio per la località Lama Bianca e si percorre la strada asfaltata fino alla fine. Sul piazzale di fine strada il sentiero inizia a salire con alcuni tornanti nella faggeta e appena fuori dal bosco, devia a sinistra e con un traverso si arriva all’attacco del canalone, dove inizia la salita vera e propria. La progressione nel canale è faticosa a causa delle ghiaie mobili sulle quali si cammina, ma in compenso l’ambiente circostante è grandioso; si è infatti al centro di imponenti balze di roccia verticali. Interessante è la vegetazione presente: la Peverina di Thomas, il raro Glasto di Allioni e la Dripide spinosa, piante tipica dei macereti. Possibile è anche l’avvistamento di branchi di camoscio appenninico. Si prosegue all’interno del canalone fino all’uscita su di una piccola valle dal fondo arrotondato che si percorre per intero e in fondo alla quale, sulla destra, si riprende il sentiero che sale di nuovo ripido, segnato da omini in pietra. Continuando nella salita, si raggiunge un vasto pianoro d’alta quota dove il sentiero B5 incrocia il Sentiero del Parco, contraddistinto dalla lettera “P”. Qui, nei mesi di luglio ed agosto, fiorisce la rara Stella alpina appenninica (Leontopodium nivale), più piccola rispetto alla più famosa parente alpina. Dall’incrocio immettendosi sul sentiero del Parco, muovendosi verso destra, si può raggiungere la vetta più alta della Majella, Monte Amaro, con i suoi 2793 m. s.l.m., oppure deviando a sinistra in direzione dei Tre Portoni, si può percorre il sentiero in direzione del Monte Focalone.', 1160, 'piazzale fine strada Lama Bianca.', 'incrocio con Sentiero Parco (fra Tre Portoni e Monte Amaro)', 320, 3200, 'img/MappaRavaDelFerro.jpg'),
(14, 'MOLTODIFFICILE', 'F1', 'Bocca di Valle', 'img/BoccaDiValle.jpg', 'Sigla sentiero: F1\r\nTempo di percorrenza: 5h 40''\r\nDislivello: 1170 m', NULL, 1170, NULL, NULL, 340, NULL, NULL),
(15, 'ESTREMO', 'S2', 'Sentiero dello Spirito', 'img/S-Onofrio-al-Morrone-esterno.jpg', 'Sigla sentiero: S\r\nTempo di percorrenza: 9h 00''\r\nDislivello: 1800 m', 'La prima tappa del Sentiero dello Spirito conduce da Sulmona a Caramanico Terme effettuando la traversata del massiccio del Morrone. Prima di salire verso San Pietro, merita assolutamente una deviazione l’Eremo di Sant’Onofrio al Morrone. Il sentiero all’inizio sale gradualmente, per deviare poi nettamente a destra con la salita che si fa più ripida.\r\nCon stretti tornanti si attraversa una pineta finché il sentiero si immette su una carrareccia e poi ancora su sentiero fino all’Eremo di San Pietro. Da qui si sale in direzione sud, dentro una faggeta, per poi incrociare il sentiero R5, uscendo dal bosco dopo aver percorso un fosso che divide il “Colle dei cani”  da “Cimerone” si arriva a una splendida valletta interna alla dorsale, da dove con un dolce diagonale si raggiunge la sella sud della vetta del monte Morrone, da qui si sale sulla vetta del Monte Morrone. Dalla cima, passando per la sella Nord, si scende fino al rifugio Iaccio della Madonna e si prosegue, scendendo sul versante opposto del massiccio. Si raggiunge la strada interpoderale del Morrone (Q7), la si attraversa e in discesa si giunge a contrada San Vittorino, sul fiume Orta e infine a Caramanico Terme.', 1800, 'Abbazia Santo Spirito al Morrone (Sulmona)', 'Caramanico Terme', 540, 26, 'img/MappaSentieroDelloSpirito.jpg'),
(16, 'ESTREMO', 'P', 'Sentiero del Parco', 'img/SentieroDelParco.jpg', 'Sigla sentier*: P\r\nTempo di percorrenza: 12h 00''\r\nDislivello: 1500 m', NULL, 1500, NULL, NULL, 720, NULL, NULL),
(17, 'ESTREMO', 'O', 'Parete dell''Orso', 'img/PareteDellOrso.jpg', 'Sigla sentiero: O\r\nTempo di percorrenza: 6h 00''\r\nDislivello: 3000 m', NULL, 3000, NULL, NULL, 300, NULL, NULL),
(18, 'FACILE', 'A1', 'Caramanico - Salle', 'img/CaramanicoSalle.jpg', 'Sigla sentiero: A1\r\nTempo di percorrenza: 2h 00''\r\nDislivello: 90 m', NULL, 90, NULL, NULL, 119, NULL, NULL),
(19, 'FACILE', 'B8', 'Ponte San Cataldo', 'img/PonteSanCataldo.jpg', 'Sigla sentiero: B6\r\nTempo di percorrenza: 0h 30''\r\nDislivello: 90 m', NULL, 90, NULL, NULL, 30, NULL, NULL),
(20, 'FACILE', '2', 'Le "Scalelle"', 'img/LeScalelle.jpg', 'Sigla sentiero: 2\r\nTempo di percorrenza: 1h 30''\r\nDislivello: 120 m', NULL, 120, NULL, NULL, 90, NULL, NULL),
(21, 'FACILE', '6', 'Cascata della Cisterna', 'img/CascataDellaCisterna.jpg', 'Sigla sentiero: 6\r\nTempo di percorrenza: 0h 40''\r\nDislivello: 50 m', NULL, 50, NULL, NULL, 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `PERCORSOANIMALE`
--

CREATE TABLE IF NOT EXISTS `PERCORSOANIMALE` (
  `percorso` varchar(500) NOT NULL DEFAULT '',
  `animale` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`percorso`,`animale`),
  KEY `nome_ANIMALE` (`animale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `PERCORSOANIMALE`
--

INSERT INTO `PERCORSOANIMALE` (`percorso`, `animale`) VALUES
('Rava del Ferro', 'Coturnice');

-- --------------------------------------------------------

--
-- Struttura della tabella `PERCORSOCULTURA`
--

CREATE TABLE IF NOT EXISTS `PERCORSOCULTURA` (
  `percorso` varchar(500) NOT NULL DEFAULT '',
  `cultura` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`percorso`,`cultura`),
  KEY `nome_CULTURA` (`cultura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `PERCORSOCULTURA`
--

INSERT INTO `PERCORSOCULTURA` (`percorso`, `cultura`) VALUES
('Sentiero dello Spirito', 'S. Onofrio del Morrone');

-- --------------------------------------------------------

--
-- Struttura della tabella `PERCORSOHH`
--

CREATE TABLE IF NOT EXISTS `PERCORSOHH` (
  `percorso` varchar(500) NOT NULL DEFAULT '',
  `hh` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`percorso`,`hh`),
  KEY `nome_HH` (`hh`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `PERCORSOHH`
--

INSERT INTO `PERCORSOHH` (`percorso`, `hh`) VALUES
('Rava del Ferro', 'Foresteria Casa del Lupo'),
('Sentiero della Libertà', 'Foresteria L''Ostello della Stazione'),
('Sentiero dello Spirito', 'Foresteria Casa del Lupo');

-- --------------------------------------------------------

--
-- Struttura della tabella `PERCORSOPIANTA`
--

CREATE TABLE IF NOT EXISTS `PERCORSOPIANTA` (
  `percorso` varchar(500) NOT NULL DEFAULT '',
  `pianta` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`percorso`,`pianta`),
  FULLTEXT KEY `pianta` (`pianta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `PERCORSOPIANTA`
--

INSERT INTO `PERCORSOPIANTA` (`percorso`, `pianta`) VALUES
('Sentiero della Libertà', 'Acero di Lobel');

-- --------------------------------------------------------

--
-- Struttura della tabella `PIANTA`
--

CREATE TABLE IF NOT EXISTS `PIANTA` (
  `NOME` varchar(500) NOT NULL,
  `THUMBNAIL` varchar(500) DEFAULT NULL,
  `NOMESCIENTIFICO` text,
  `DESCRIZIONEBREVE` text,
  `DESCRIZIONELUNGA` text,
  `FAMIGLIA` text,
  `DISTRIBUZIONE` text,
  PRIMARY KEY (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `PIANTA`
--

INSERT INTO `PIANTA` (`NOME`, `THUMBNAIL`, `NOMESCIENTIFICO`, `DESCRIZIONEBREVE`, `DESCRIZIONELUNGA`, `FAMIGLIA`, `DISTRIBUZIONE`) VALUES
('acero di lobel', 'img/AceroDiLodel.jpg', 'Acer cappadocicum Gled. subsp. lobelii (Ten.) Murray.', 'Albero caducifoglio alto fino a 20 m, con tronco liscio e slanciato; le foglie sono opposte e con lamina palmato-lobata terminanti in punta acutissima, senza denti laterali. Il frutto è una disamara con ali divergenti ad angolo ottuso o piatto. Fiorisce tra aprile e maggio e matura i frutti tra settembre e ottobre.', 'Albero caducifoglio alto fino a 20 m, con tronco liscio e slanciato; le foglie sono opposte e con lamina palmato-lobata terminanti in punta acutissima, senza denti laterali. Il frutto è una disamara con ali divergenti ad angolo ottuso o piatto. Fiorisce tra aprile e maggio e matura i frutti tra settembre e ottobre. , Specie endemica dell’Appennino Centro-Meridionale.', 'aceraceae', 'Specie endemica dell’Appennino Centro-Meridionale.'),
('adonide curvata', 'img/Flora-del-parco-Adonide-curvata.jpg', 'aldo', 'Pianta erbacea perenne alta 5-20 cm, con vistosi fiori gialli costituiti da 8-18 petali. Fiorisce da giugno ad agosto, sui brecciai di altitudine tra i 2000 e 2500 m s.l.m.', 'Pianta erbacea perenne alta 5-20 cm, con vistosi fiori gialli costituiti da 8-18 petali. Fiorisce da giugno ad agosto, sui brecciai di altitudine tra i 2000 e 2500 m s.l.m.', 'ciao', 'ciao'),
('androsace abruzzese', 'img/Flora-del-parco-Androsace-abruzzese.jpg', NULL, 'Pianta alta 1-3 cm, con fusti legnosi alla base, corti, formanti un denso cespuglietto, con fiori bianchi o rosei isolati su lunghi peduncoli. Vegeta sulle rupi ombrose del piano alpino, oltre i 2300 m s.l.m., e fiorisce tra  giugno e luglio.', NULL, NULL, NULL),
('androsace appenninica', 'img/Flora-del-parco-androsace-villosa.jpg', NULL, 'Pianta alta 2-3 cm, con fusti legnosi, ramificati alla base, formanti densi cuscinetti, con fiori bianchi, soffusi di roseo al centro. Fiorisce a giugno-luglio nei pascoli pietrosi delle alte quote, oltre i 2000 m s.l.m.', NULL, NULL, NULL),
('aquilegia della majella', 'img/Flora-del-Parco-specie-Aquilegia.jpg', NULL, 'Pianta perenne, vischiosa, alta fino a 45 cm. Foglie addensate nella porzione inferiore del fusto. Fiori di 3-4 cm, da viola pallido ad azzurro chiaro fino a quasi bianchi, con caratteristici nettarii provvisti di sperone. Fiorisce da giugno a luglio.', NULL, NULL, NULL),
('astragalo aquilano', 'img/csm_Astragalus_aquilanus_2__fiore_e_frutto_LucianoDiMartino_copia_21eba7c044.jpg', NULL, 'Pianta erbacea perenne alta 30-50 cm con fusti legnosi alla base e foglie alterne, imparipennate, con segmenti strettamente ellittici. Fiori gialli riuniti su lunghi peduncoli, visibili a maggio-giugno. Vive in radure e pascoli della fascia submontana.', NULL, NULL, NULL),
('ciombolino abruzzese', 'img/Flora-del-Parco-specie-Ciombolino-abruzzese.jpg', NULL, 'Pianta erbacea perenne alta 10-20 cm con foglie opposte, arrotondate, con 3-5 lobi di cui l’apicale più grande. Fiori azzurri o violacei con sperone di circa 10 mm, visibili da giugno ad agosto. Vive su ghiaioni altomontani.', NULL, NULL, NULL),
('nigritella di widder', 'img/Flora-del-parco-nigritella.jpg', NULL, 'Pianta erbacea alta sino a 20 cm, con infiorescenza emisferica e fiori rosei, tendenti a sbiadire fin quasi al bianco con l’età, con profumo di cioccolata. Vegeta nei pascoli altomontani al di sopra dei 2000 m s.l.m.', NULL, NULL, NULL),
('scarpetta di venere', 'img/Flora-del-parco-scarpetta-di-venere.jpg', NULL, 'Pianta erbacea alta sino a 50 cm con 3-4 foglie abbraccianti il caule e 1 o 2 fiori grandi. Il fiore con il labello giallo e rigonfio ricorda una pantofola ed è il motivo che gli ha conferito il nome di "scarpetta di Venere". Fiorisce a maggio.', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
