-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2016 at 11:31 PM
-- Server version: 10.0.27-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 5.6.17-3ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `red_hut_hostel`
--

CREATE TABLE `red_hut_hostel` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_hut_hostel`
--

INSERT INTO `red_hut_hostel` (`id`, `title`, `details`, `location`) VALUES
(1, 'Guesthouse of Mavignola', '<p>The structure of St. Anthony of Mavignola has 24 beds in three dorms and an apartment for two thirds of carers as well as classroom teaching.</p>\r\n<p>For the food, the Park has an agreement with some local restaurants.</p>\r\n<p>From St. Anthony of Mavignola, located in the Val Rendena, you can easily access to some of the most interesting valleys of the park: Val Genova, val Nambrone, Vallesinella, val val Brenta and Agola.</p>\r\n<p>The property, which also functions as a center for educational activities with schools, is available as a venue for courses, seminars, internships and other educational activities for one or more days.</p>\r\n<p>The park, in addition to ensuring logistic support, ensuring the cooperation of its operators to carry out educational activities and excursions depth of the naturalistic aspects of the protected area.</p>', '<p><img src="images/posizione sant\'antonio.PNG" width="400" height="300"/><img src="images/posizione sant\'antonio2.PNG" alt="" width="400" height="300" style=margin-left:20px /></p>'),
(2, 'Guesthouse of Valagola', 'The property, which also functions as a center for educational activities with schools, is available as a venue for courses, seminars, internships and other educational activities for one or more days.\r\n\r\n \r\n\r\nThe park, in addition to ensuring logistic support, ensuring the cooperation of its operators to carry out educational activities and excursions depth of the naturalistic aspects of the protected area.', '<p><img src="images/posizione valagola.PNG" width="400" height="300"/><img src="images/posizione valagola2.PNG" alt="" width="400" height="300" style=margin-left:20px /></p>'),
(3, 'Guesthouse Maso Doss', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `red_hut_hostel_images`
--

CREATE TABLE `red_hut_hostel_images` (
  `id` int(11) NOT NULL,
  `hut_hostel_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_hut_hostel_images`
--

INSERT INTO `red_hut_hostel_images` (`id`, `hut_hostel_id`, `image`) VALUES
(1, 1, 'RTEmagicC_mavignola_01.jpg'),
(2, 1, '71879_sala-da-pranzo.jpg'),
(3, 2, 'RTEmagicC_Casina_Valagola_01.jpg'),
(4, 2, '05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `red_news`
--

CREATE TABLE `red_news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publishdate` date NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_news`
--

INSERT INTO `red_news` (`id`, `title`, `publishdate`, `image`) VALUES
(1, 'We are happy to welcome to our family Yoghi, a newborn bear.', '2016-08-25', '00-black-bear-cub-vladivostok-russia-01-27-02-15.jpg'),
(2, 'The park will be closed, due to some special maintenance needed by some of our buildings.', '2016-09-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `red_page`
--

CREATE TABLE `red_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_page`
--

INSERT INTO `red_page` (`id`, `name`, `title`, `body`) VALUES
(1, 'aboutus', 'Redstone Park', 'Redstone Park is the largest protected area of Trentino. Located in the western part of Trentino Province - Italy, it is 620,517 km^2 wide: it includes Adamello and Brenta mountainous groups, divided by Rendena Valley and bordered by Non Valley, Sole Valley and Giudicarie Valley. It is endowed with 80 lakes and with Adamello Glacier, one of the largest glaciers in Europe. Its fauna is among the richest of the Alps and includes all animal species which find their habitat on the mountains, bear and steinbock as well. Rich woods and meadows, fruits and flowers which are rare to find, thousands of insects, birds and other animals whose life is determinant for the biological equilibria of the Park and of the Earth, need now more than ever to be protected, and with Your help too.'),
(2, 'aboutus_history', 'Recent history:', '<p><strong>2003</strong></p>\r\n<p>Revision of the Provincial Plan in 2003 extended the boundaries of the Park even further, bringing the protected area up to the present 620.52 km&sup2;.</p>\r\n<p><strong>2006</strong></p>\r\n<p>Join the Community\'s environmental EMAS registration number IT-000576 and adherence to the European Charter for Sustainable Tourism.</p>\r\n<p><strong>2007</strong></p>\r\n<p>Provincial law is enacted on forests and nature protection (LP 23 May 2007 No 11). "Government of mountain and forest land, watercourses and protected&nbsp;areas" which replaces and integrates the LP 18/88.</p>\r\n<p><strong>2008</strong></p>\r\n<p>The park has achieved recognition as the Adamello Brenta Geopark, becoming part of the European Network and Global Geoparks: a network of protected&nbsp;areas that work together to valorise the geological heritage of the Earth under the auspices of UNESCO.</p>\r\n<p><strong>2009</strong></p>\r\n<p>The Group of Brenta Dolomites with its stone castles with towers, steeples, spiers and huge walls ... has joined the World Natural Heritage Site.</p>\r\n<p><strong>2010</strong></p>\r\n<p>Antonio Caola became the president of Natural Park (2010-today)</p>\r\n<p><strong>2011</strong></p>\r\n<p>Roberto Zoanetti became the director of Natural Park (2011-today)</p>'),
(3, 'aboutus_rules', '10 rules to respect the Park', '<div id="c2630" class="col-md-6">\r\n<div class="csc-header csc-header-n1">\r\n<h3 class="vivere"><img title="Vignetta di Osvaldo con i fiori" src="images/RTEmagicC_vignetta_osvaldo_con_fiori_01.gif.gif" alt="Vignetta di Osvaldo con i fiori" width="120" height="88" /></h3>\r\n</div>\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">Respect flowers and plants, their colours and scents are also there for those coming after you.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2631" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext"><img title="Vignetta Osvaldo spaventato dai cani" src="images/RTEmagicC_vignetta_osvaldo_con_cane_03.gif.gif" alt="Vignetta Osvaldo spaventato dai cani" /></p>\r\n<p class="bodytext">When you see animals, keep your distance. You could frighten them.&nbsp; They are also afraid of dogs, so keep them under control at all times.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2632" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext"><img title="Vignetta di Osvaldo e gli anfibi" src="images/RTEmagicC_vignetta_osvaldo_con_rana_01.gif.gif" alt="Vignetta di Osvaldo e gli anfibi" /></p>\r\n<p class="bodytext">Amphibians, reptiles and invertebrates (insects, molluscs, etc) are also fundamental to the balance of nature and deserve your respect.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2633" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;<img title="Vignetta Oscaldo e il pericolo del fuoco" src="images/RTEmagicC_vignetta_osvaldo_con_fuoco_01.gif.gif" alt="Vignetta Oscaldo e il pericolo del fuoco" />&nbsp;</p>\r\n<p class="bodytext">The worst enemy of a wood is fire.&nbsp; If you want to light a fire, use the designated sites provided by the Park or a special fireplace at least 50 metres from the edge of the wood.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2634" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext"><img title="Vignetta di Osvaldo e Mountan bike" src="images/RTEmagicC_vignetta_osvaldo_con_bici_01.gif.gif" alt="Vignetta di Osvaldo e Mountan bike" /></p>\r\n<p class="bodytext">To respect flowers, animals and walkers, cycle on roads only.&nbsp; When on footpaths, push your bike.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2635" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;<img title="Vignetta di Osvaldo e i fossili" src="images/RTEmagicC_vignetta_osvaldo_con_fossili_01.gif.gif" alt="Vignetta di Osvaldo e i fossili" /></p>\r\n<p class="bodytext">Minerals and fossils should be left where they are.&nbsp; They have been there for millions of years (thanks also to the respect of those who preceded you).</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2636" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;<img title="Vignetta di Osvaldo disturbato dalla musica" src="images/RTEmagicC_vignetta_osvaldo_con_musica_01.gif.gif" alt="Vignetta di Osvaldo disturbato dalla musica" />&nbsp;<span lang="EN-GB">Lower your voice and sharpen your senses.&nbsp; The Park is quite another tune.</span></p>\r\n</div>\r\n</div>\r\n<div id="c2637" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;&nbsp;<img title="Vignetta di Osvaldo disturbato dai campeggiatori" src="images/RTEmagicC_vignetta_osvaldo_con_tende_01.gif.gif" alt="Vignetta di Osvaldo disturbato dai campeggiatori" /><span lang="EN-GB">To avoid disturbing the magical balance of the Park, camping is not permitted</span></p>\r\n</div>\r\n</div>\r\n<div id="c2638" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;<img title="Vignetta di Osvaldo col permesso raccolta funghi" src="images/RTEmagicC_vignetta_osvaldo_con_funghi_01.gif.gif" alt="Vignetta di Osvaldo col permesso raccolta funghi" /></p>\r\n<p class="bodytext">You can collect fungi almost everywhere, but you need a permit issued by the municipality.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div id="c2639" class="col-md-6">\r\n<div class="csc-textpic-text">\r\n<p class="bodytext">&nbsp;<img title="Vignetta di Osvaldo che trova un residuato bellico" src="images/RTEmagicC_vignetta_osvaldo_con_reb_01.gif.gif" alt="Vignetta di Osvaldo che trova un residuato bellico" /></p>\r\n<p class="bodytext">If you find items left from the war, do not pick them up. It is prohibited and could be dangerous.&nbsp; Report your find to the Park.</p>\r\n<p class="bodytext">&nbsp;</p>\r\n</div>\r\n</div>\r\n'),
(4, 'get_here', 'How to get here', '<div>\r\n<p><img src="images/RTEmagicC_come_raggiungerci_01.jpg.jpg" alt="" width="220" height="200" align="right" /></p>\r\n<p>Giudicarie side:<br />From Trento, take the Gardesana Occidentale SS 45 trunk road to Sarche, then continue to Comano Terme and Tione (SS 237). Just before Comano Terme, there is a turning for the southern part of the Brenta Group (Val d&rsquo;Ambi&eacute;z and Val d&rsquo;Algone - SS 421). From Tione, head south on the SS 237 for the valleys of Breguzzo and Daone-Fumo. Head north (SS 239) for the Val Rendena. After Strembo (Park Headquarters), continue for 7 km and the Val Genova begins at Caris&ograve;lo. All towns and villages in these valleys are connected to the provincial capital, Trento, by public transport.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div><img style="margin-right: 20px;" src="images/Villa_Santi_h.jpg" alt="" width="220" height="200" align="left" />\r\n<p>Val di Non and Val di Sole side:</p>\r\n<p>From Trento, head north on the Brennero SS 12 trunk road as far as San Michele all&rsquo;Adige (A22 exit). Continue on the SS 43 and at Rocchetta you enter the Val di Non. Follow the SP 73 provincial road on the right of the Noce river to Tuenno (start of the Val di Tovel) and then Cles.  Just after Rocchetta there is a turning for Andalo, Molveno and the Altopiano della Paganella (SS 421), eastern access to the central chain of the Brenta and the Campa subgroup.  After Cles, the bridge over the Mostizzolo on the Noce river marks the boundary between the Val di Non and the Val di Sole. Access to the north Brenta chain is from Mal&eacute; and Dimaro.  Access to the Presanella Group is from the high Val di Sole.</p>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `red_territory`
--

CREATE TABLE `red_territory` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_territory`
--

INSERT INTO `red_territory` (`id`, `title`, `image`, `category`, `details`) VALUES
(1, 'Mountains', '', 1, ''),
(2, 'Lakes', 'RTEmagicC_Laghetto_Mandrone_territorio_2.jpg', 1, '<p>In the Adamello Brenta Natural Park there are 48 lakes. Some are lying in the basins open and bright high altitude , others reflect in their waters surrounding the dense forests. The distribution of lakes in the two sectors of the Park, is very different.Picture of the pond Mandrone.</p>\r\n<p><strong>The lakes nell\'Adamello - Presanella</strong><br /><br />Nell\'Adamello -Presanella , where the hardness and impermeability of the rock favor the stagnation of water , there are 44 .</p>\r\n<p><strong>The lakes in the Brenta Dolomites</strong></p>\r\n<p><br />In the Brenta lakes are only 4, as surface water easily tend to disappear into the depths , due to the high permeability of limestone and dolomite .The lonely lakes of the Brenta , in addition to Tovel Lake Spinale, on the mountain , to Valagola and the tiny pond Asbelz , the head of Val Jon .</p>'),
(3, 'Glaciers', '', 1, ''),
(4, 'Valleys', '', 1, ''),
(5, 'Bear', 'orso-marsicano-e-cuccioli.jpg', 2, '<p class="bodytext">Majestic and fascinating, the brown bear (Ursus arctos L.) has always aroused man\'s interest, to the extent that its history has often been interwoven with that of our species.&nbsp;</p>\r\n<p class="bodytext">Persecuted in every way possible for centuries, the bear remained confined in a limited area of the western Trentino which, to protect the plantigrade, became the Adamello Brenta Nature Park.</p>\r\n<p class="bodytext">In 1996, to avoid the imminent extinction of the species, the Park launched the Life Ursus reintroduction project. Ten brown bears were introduced between 1999 and 2002. These adapted well to the new living environment and originated a population which today numbers more than 20.</p>\r\n<p class="bodytext">The definitive return of the species to the Alps is, however, still a long way off. Despite the suitable environment throughout most of the Alps, the future of the bear is closely bound to development of a culture of cohabitation between men<span class="Apple-converted-space"> <br /></span></p>\r\n<p class="bodytext">and bears. The Park\'s commitment therefore continues through scientific research and an awareness heightening campaign run by the Brown Bear Research and Conservation Group in the context of the Bear Project.</p>\r\n<p class="bodytext">The park is also a partner of the LIFE + project ARCTOS</p>\r\n<p class="bodytext">Brown Bear Conservation: coordinated actions for the areal Alpine and Apennine, an initiative to encourage the protection of the brown bear populations in the Alps and the Apennines and to support their numerical expansion.</p>'),
(6, 'Fox', '', 2, ''),
(7, 'Squirrel', '', 2, ''),
(8, 'Forests', '59041-004-7F34BA3A.jpg', 3, '<p class="bodytext"><strong>The coniferous forests</strong><br /><br />The mantle of green coniferous forest is the predominant and most characteristic trait of the forest cover of the Park. A constant of the landscape that calls to mind the savage primitive environments, but also a resource with which the communities of the valleys have woven an unbreakable bond. The coniferous forests are spread throughout the protected area. Because of its good resistance to cold of the species that compose them, are on steep slopes of the Park the best conditions for development. At the top you push, as a rule, up to 1800-2000 meters, while below are a bit everywhere in contact with the formations of deciduous trees. Its forests, spruce forests, occupying almost the entire mountain plain in the north of the Park, while to the south are often intermingled with beech formations. On the slopes, fresh faces to the north of the semi mountainous areas, between 1000 and 1500 m of altitude, the spruce forests are interspersed at times, the forests of fir, for example in Val Genova and in&nbsp;Val di Tovel, but also on eastern edge of the Brenta. At the top, in the plane subalpine spruce mixes almost always the larch, which at the upper limit of the forest often gives rise to pure larch . At this altitude you can also find the beautiful - but not common - pine, which form the nuclei of a certain size just in a few locations, such as in Val di Fumo and Presanella. Another type of coniferous forest is formed by Scots pine, the disclosure of which is restricted to areas of low altitude of some sectors of the Brenta, in sunny places, often on poor soils and rocks.</p>'),
(9, 'Grasslands', '', 3, ''),
(10, 'Rhododendrons', '', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `red_territory_category`
--

CREATE TABLE `red_territory_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_territory_category`
--

INSERT INTO `red_territory_category` (`id`, `title`, `image`, `details`) VALUES
(1, 'Environment', 'Parco-naturale-Adamello-Brenta_imagefullwide.jpg', 'The environment of the Park is typical of the central southern Alps with predominantly coniferous woods covering the slopes of the mountains up to an altitude of 1800 m.  Above this, the forests which occupy a third of the Park give way to Alpine meadows and rock vegetation extending to above the 2500 m line.   The area occupied by the Park is complex and diversified - fir, beech and larch forests, flower strewn meadows, grassland, pastures, torrents, peat bogs and inaccessible rocks.  At high altitudes, the landscape is spectacular and unique, dominated by the accentuated geological and geomorphologic diversity of the two mountain ranges. '),
(2, 'Animals', 'RTEmagicC_volpe_fauna_01.jpg', '<p>In mountains which still provide a home for the brown bear, it is not surprising that the wildlife is extraordinary - chamoix, red and roe deer and eagles. And also steinbock, foxes, badgers, martens, black grouse, capercaillie, marmots, ptarmigan and numerous other large and small animals.</p>\r\n<p>Thanks to its unspoilt and diversified environment, the Adamello Brenta Nature Park boasts an extraordinary wealth of animals.</p>\r\n<p>All the typical Alpine species are present, in particular the brown bear (Ursus arctos), symbol of the Park, which hovered on the brink of extinction and is today in expansion, thanks to a specific reintroduction project. The other "great carnivores" (wolf and lynx) are absent while the fox (Vulpes vulpes), badger (Meles meles), stone marten (Martes foina), pine marten (Martes martes), stoat (Mustela erminea) and weasel (Mustela nivalis) are common. The presence of mountain ungulates is particularly outstanding. As well as a consistent population of chamoix (Rupicapra rupicapra), the Park also boasts a colony of steinbock (Capraibex) the result of a multi-year reintroduction project. The Park\'s ungulates include the red deer (Cervus elaphus), roe deer (Capreolus capreolus) and mouflon (Ovis musimon), the latter the result of introduction projects initiated at the beginning of the 1970s.  The rodent population in the Park is equally rich and interesting. Among the most common and characteristic are the red squirrel (Sciurus vulgaris) and Alpine marmot (Marmota marmota). There are also moderately large populations of lagomorphs, the European hare (Lepus europaeus) and mountain hare (Lepus  timidus). The birds present in the Park include numerous typical Alpine species, first and foremost all the Galliformes represented by the ptarmigan (Lagopus mutus), rock partridge (Alectoris graeca), black grouse (Tetrao tetrix), capercaillie (Tetrao urogallus) and hazel grouse (Bonasa bonasia). The raptors nesting in the Park include the golden eagle (Aquila chrysaetos), common buzzard (Buteo buteo), goshawk (Accipiter gentilis), sparrowhawk (Accipiter nisus), honey buzzard (Pernis apivorus) and kestrel (Falco tinnunculus).</p>'),
(3, 'Plants', 'RTEmagicC_Per_teaser_valli_01.jpg', '<p><big>The wealth and variety of plants and vegetation found in the Adamello Brenta Nature Park are equalled in only a few other parts of the Alps.The presence of two separate sectors with different geological characteristics (the calcareous-sedimentary rocks of the Brenta chain and the intrusive crystalline rocks of the Adamello-Presanella) has encouraged the natural development of endemisms and characteristic plant associations and this is particularly evident in the bands of vegetation above the tree line. From the valley floor and the mountain slopes covered by vast forests to the high Alpine meadows where the pioneer plants defy the harsh conditions, intense cold and winds and where the last flowers cling tenaciously to the rocks, the entire plant landscape of the Park is of great interest to naturalists and of considerable visual impact. "Junior Ranger" diplomas will be presented.</big></p>'),
(4, 'Culture', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `red_trail`
--

CREATE TABLE `red_trail` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `difficulty` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_trail`
--

INSERT INTO `red_trail` (`id`, `code`, `image`, `title`, `difficulty`, `details`) VALUES
(1, 'HLTRP', 'harlequin2.jpg', 'Harlequin Lake Trail', 1, '<p>Length: 0.48 km, one way.<br />Elevation change: Trailhead at 2069 m (36 m elevation). <br />Trailhead: Located on the north side of the West Entrance Road, 3 km west of Madison Junction. The trailhead is not well-marked, but on the opposite side of the road is a visitor turnout that overlooks the Madison River.</p>\r\n<p>This is a short, enjoyable hike for campers staying at Madison Campground. The trail wanders through lodgepole pine that burned in the 1988 fires to a IO-acre lake that is rimmed with cattails, rushes and yellow pond-lily pads.</p>\r\n<p>Harlequin Lake was known as "Secret Lake" during the late 1940s and 50s because of its secluded location near the road. At that time, trumpeter swans were frequent nesters at the lake but in 1958, the lake was named after the colorful duck. On the northern edge is a beaver lodge, and elk frequent this lake in the early summer and fall as well. But the lake itself is considered barren of fish. It is between 1 and 3 m deep, and most of the lake freezes during winter.</p>'),
(2, 'BTRP', '', 'Boucher', 1, ''),
(3, 'DCTRP', '', 'Deer Creek', 1, ''),
(4, 'PMTRP', 'purple-mountain-trail.jpg', 'Purple Mountain', 3, '<p>Length: 4.18 km, one way.<br />Elevation change: Trailhead at 2084 m (484 m gain). <br />Trailhead: Located at Madison Junction, about 0.48 km north of the junction on the Madison-Norris Road. The trailhead begins at the barricade on the west side of the road, where there is a small turnout for parking.</p>\r\n<p>Most hikers staying at Madison Campground can approach the trailhead on foot by hiking past the campground entrance station, crossing the road, and following a path to the Park Service employee-housing area. From there, roughly follow the road east, and route-find through the development to the trailhead.</p>\r\n<p>Following the highway also is possible, but heavy traffic and narrow shoulders make the highway hazardous for hikers. The trailhead starts at the western edge of a Gibbon River meadow, and the area generally is saturated by springs at the foot of the mountain and run off from nearby thermal Terrace Spring. Once into the trees, the trail begins a steep ascent of Purple Mountain (2570 m). From halfway up to the roundish summit are excellent views of the surrounding landscape, visible through thin stands of trees. Just to the south is National Park Mountain, which is part of the southern rim of Madison Canyon. Beyond the rim is the relatively level but undulating and extensive Madison Plateau. It was here during mid-August of 1988 that the man-caused Northfork Fire raced across the plateau and burned Purple Mountain. Campers staying in Madison Campground were not given adequate notice of the advancing threat. As the fire approached, most campers were out sight-seeing and, upon their return, were cut off and unable to claim their possessions for several days. Luckily, nobody was trapped or injured in the blaze. The extensive burn can be seen on the plateau. Purple Mountain, and Gibbon and Madison valleys. Purple Mountain was named in 1904 by geologist Arnold Hague, probably for weathered outcroppings of rhyolitic welded ash.Length: 0.48 km, one way. Elevation change: Trailhead at 2069 m (36 m elevation). Trailhead: Located on the north side of the West Entrance Road, 3 km west of Madison Junction. The trailhead is not well-marked, but on the opposite side of the road is a visitor turnout that overlooks the Madison River. This is a short, enjoyable hike for campers staying at Madison Campground. The trail wanders through lodgepole pine that burned in the 1988 fires to a IO-acre lake that is rimmed with cattails, rushes and yellow pond-lily pads. Harlequin Lake was known as "Secret Lake" during the late 1940s and 50s because of its secluded location near the road. At that time, trumpeter swans were frequent nesters at the lake but in 1958, the lake was named after the colorful duck. On the northern edge is a beaver lodge, and elk frequent this lake in the early summer and fall as well. But the lake itself is considered barren of fish. It is between 1 and 3 m deep, and most of the lake freezes during winter.</p>'),
(5, 'BATRP', '', 'Bright Angel', 3, ''),
(6, 'UJTRP', '', 'Uncle Jim', 3, ''),
(7, 'LLTRP', 'lostlaketrail-940x350.jpg', 'Lost Lake', 5, '<p>Length: 5 km, loop via Lost Lake and Petrified Tree. <br />Length from Roosevelt Lodge to:<br />Lost Creek Falls (spur trail) 0.4 km<br />Lost Lake 1.28 km<br />Petrified Tree 2.9 km<br />Tower Ranger Station (via Petrified Tree) 4.34 km<br />Elevation change: Trailhead at 1932 m (140 m gain). <br />Trailhead: The trail starts behind Roosevelt Lodge. Or, as an alternate route, start at the Petrified Tree, about a quarter mile east of the Blacktail Plateau Drive exit or about 2.2 km west of Tower Junction.<br />The trail begins directly behind Roosevelt Lodge. It crosses a footbridge and over a wet seep shrouded with ferns.</p>\r\n<p>From there a short spur trail leads to Lost Creek Falls, a 12 m plunge into a steep, dark, timber-covered canyon. From the junction to Lost Creek Falls, the trail climbs south up a steep 106 m rocky rim. On the bench above the rim, the trail then joins the horse trail and continues west to Lost Lake and Petrified Tree. The trail east heads to Roosevelt Corral and approximately 4 km to Tower Campground.<br />In 1975, an earthquake with an epicenter near Norris Geyser Basin shook the Yellowstone region. It brought down delicate spires in the Grand Canyon, and along this rim, large rockfalls tumbled down the canyon, nearly striking passing hikers.<br />The trail continues along the shore of Lost Lake, where beaver activity usually can be spotted. In late June through early July, the edges of this lake are covered with the arrow-shaped, leather-like leaves and yellow, baseball-sized flowers of yellow pond lilies. The trail follows the drainage of Lost Lake through Douglas fir and aspen, and emerges at the Petrified Tree parking area.</p>'),
(8, 'NKTRP', '', 'North Kaibab', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `red_trail_difficulty`
--

CREATE TABLE `red_trail_difficulty` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_trail_difficulty`
--

INSERT INTO `red_trail_difficulty` (`id`, `level`, `image`, `details`) VALUES
(1, 'Easy', 'muoversi_a_piedi_h - easy.jpg', '<ul>\r\n<li>for young and elderly</li>\r\n<li>someone in fair hiking condition</li>\r\n<li>trails are generally in good condition</li>\r\n<li>very little elevation gain</li>\r\n</ul>'),
(2, 'Moderate', '', '<ul>\r\n<li>someone in good hiking condition</li>\r\n<li>increased mileage</li>\r\n<li>trails are generally in good condition</li>\r\n<li>moderate elevation gain</li>\r\n</ul>'),
(3, 'Challenging', 'muoversi_a_piedi_h - Challenging.jpg', '<ul>\r\n<li>someone in good hiking condition</li>\r\n<li>increased mileage</li>\r\n<li>trails are generally in good condition</li>\r\n<li>significant elevation gain</li>\r\n</ul>'),
(4, 'Difficult', '', '<ul>\r\n<li>someone in excellent hiking condition</li>\r\n<li>significant increase in mileage</li>\r\n<li>trails are generally in good condition</li>\r\n<li>significant elevation gain</li>\r\n</ul>'),
(5, 'Very difficult', 'muoversi_a_piedi_h - Very difficult.jpg', '<ul>\r\n<li>someone in excellent hiking condition</li>\r\n<li>significant increase in mileage</li>\r\n<li>trails are not always in good condition</li>\r\n<li>significant elevation gain</li>\r\n</ul>'),
(6, 'Extreme', '', '<ul>\r\n<li>someone in exceptional hiking/climbing condition</li>\r\n<li>significant increase in mileage</li>\r\n<li>trails are not always available</li>\r\n<li>extreme elevation gain</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `red_trail_hut_hostel`
--

CREATE TABLE `red_trail_hut_hostel` (
  `id` int(11) NOT NULL,
  `trail_id` int(11) NOT NULL,
  `hut_hostel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_trail_hut_hostel`
--

INSERT INTO `red_trail_hut_hostel` (`id`, `trail_id`, `hut_hostel_id`) VALUES
(1, 1, 1),
(2, 4, 2),
(3, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `red_trail_territory`
--

CREATE TABLE `red_trail_territory` (
  `id` int(11) NOT NULL,
  `territory_id` int(11) NOT NULL,
  `trail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `red_trail_territory`
--

INSERT INTO `red_trail_territory` (`id`, `territory_id`, `trail_id`) VALUES
(1, 2, 1),
(2, 8, 1),
(3, 5, 4),
(4, 8, 4),
(5, 1, 4),
(6, 2, 7),
(7, 6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `red_hut_hostel`
--
ALTER TABLE `red_hut_hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_hut_hostel_images`
--
ALTER TABLE `red_hut_hostel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_news`
--
ALTER TABLE `red_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_page`
--
ALTER TABLE `red_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_territory`
--
ALTER TABLE `red_territory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_territory_category`
--
ALTER TABLE `red_territory_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_trail`
--
ALTER TABLE `red_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_trail_difficulty`
--
ALTER TABLE `red_trail_difficulty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_trail_hut_hostel`
--
ALTER TABLE `red_trail_hut_hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red_trail_territory`
--
ALTER TABLE `red_trail_territory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `red_hut_hostel`
--
ALTER TABLE `red_hut_hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `red_hut_hostel_images`
--
ALTER TABLE `red_hut_hostel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `red_news`
--
ALTER TABLE `red_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `red_page`
--
ALTER TABLE `red_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `red_territory`
--
ALTER TABLE `red_territory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `red_territory_category`
--
ALTER TABLE `red_territory_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `red_trail`
--
ALTER TABLE `red_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `red_trail_difficulty`
--
ALTER TABLE `red_trail_difficulty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `red_trail_hut_hostel`
--
ALTER TABLE `red_trail_hut_hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `red_trail_territory`
--
ALTER TABLE `red_trail_territory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
