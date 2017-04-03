CREATE TABLE `card_types` (
  `card_type_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`card_type_id`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# Dumping data for table `card_types`
#

INSERT INTO `card_types` VALUES (1, 'Visa');
INSERT INTO `card_types` VALUES (2, 'American Express');

# --------------------------------------------------------

#
# Table structure for table `categories`
#

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`category_id`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

#
# Dumping data for table `categories`
#

INSERT INTO `categories` VALUES (1, 'Car');
INSERT INTO `categories` VALUES (2, 'VAN');

# --------------------------------------------------------

#
# Table structure for table `dates`
#

CREATE TABLE `dates` (
  `dates` varchar(15) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `dates`
#

INSERT INTO `dates` VALUES ('Jan/2005');
INSERT INTO `dates` VALUES ('Feb/2005');
INSERT INTO `dates` VALUES ('Jun/2005');
INSERT INTO `dates` VALUES ('Apr/2005');
INSERT INTO `dates` VALUES ('May/2005');
INSERT INTO `dates` VALUES ('Mar/2005');
INSERT INTO `dates` VALUES ('Jul/2005');
INSERT INTO `dates` VALUES ('Aug/2005');
INSERT INTO `dates` VALUES ('Sep/2005');
INSERT INTO `dates` VALUES ('Oct/2005');
INSERT INTO `dates` VALUES ('Nov/2005');
INSERT INTO `dates` VALUES ('Dec/2005');

# --------------------------------------------------------

#
# Table structure for table `days`
#

CREATE TABLE `days` (
  `days` char(2) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `days`
#

INSERT INTO `days` VALUES ('01');
INSERT INTO `days` VALUES ('02');
INSERT INTO `days` VALUES ('03');
INSERT INTO `days` VALUES ('04');
INSERT INTO `days` VALUES ('05');
INSERT INTO `days` VALUES ('06');
INSERT INTO `days` VALUES ('07');
INSERT INTO `days` VALUES ('08');
INSERT INTO `days` VALUES ('09');
INSERT INTO `days` VALUES ('10');
INSERT INTO `days` VALUES ('31');
INSERT INTO `days` VALUES ('11');
INSERT INTO `days` VALUES ('12');
INSERT INTO `days` VALUES ('13');
INSERT INTO `days` VALUES ('14');
INSERT INTO `days` VALUES ('15');
INSERT INTO `days` VALUES ('16');
INSERT INTO `days` VALUES ('17');
INSERT INTO `days` VALUES ('18');
INSERT INTO `days` VALUES ('19');
INSERT INTO `days` VALUES ('20');
INSERT INTO `days` VALUES ('21');
INSERT INTO `days` VALUES ('22');
INSERT INTO `days` VALUES ('23');
INSERT INTO `days` VALUES ('24');
INSERT INTO `days` VALUES ('25');
INSERT INTO `days` VALUES ('26');
INSERT INTO `days` VALUES ('27');
INSERT INTO `days` VALUES ('28');
INSERT INTO `days` VALUES ('29');
INSERT INTO `days` VALUES ('30');
INSERT INTO `days` VALUES ('31');

# --------------------------------------------------------

#
# Table structure for table `editorial_categories`
#

CREATE TABLE `editorial_categories` (
  `editorial_cat_id` int(11) NOT NULL auto_increment,
  `editorial_cat_name` varchar(50) default NULL,
  PRIMARY KEY  (`editorial_cat_id`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

#
# Dumping data for table `editorial_categories`
#

INSERT INTO `editorial_categories` VALUES (1, 'What');
INSERT INTO `editorial_categories` VALUES (2, 'New');
INSERT INTO `editorial_categories` VALUES (3, 'Weekly');
INSERT INTO `editorial_categories` VALUES (4, 'General');

# --------------------------------------------------------

#
# Table structure for table `editorials`
#

CREATE TABLE `editorials` (
  `article_id` int(11) NOT NULL auto_increment,
  `editorial_cat_id` int(11) default '0',
  `article_title` varchar(200) default NULL,
  `article_desc` text,
  `item_id` int(11) default '0',
  PRIMARY KEY  (`article_id`)
) TYPE=MyISAM AUTO_INCREMENT=6 ;

#
# Dumping data for table `editorials`
#

INSERT INTO `editorials` VALUES (1, 1, 'An Outstanding Vehicle', 'This is a very sophisticated car.', 2);
INSERT INTO `editorials` VALUES (2, 2, 'Honda Civic Tips and Tricks', 'How to manage your car.', 3);
INSERT INTO `editorials` VALUES (3, 3, 'Honda VIOS', 'Try it...', 9);
INSERT INTO `editorials` VALUES (4, 4, '<b><font color="brown">10% Discount on Reservation over P5000</font></b>', 'Renting of Cars is easier and convenient for people who needs travelling services for land based trips, airport services, birthdays, weddings, debut, motorcades and other ocassion.Covers Metro Manila and Out of Town trips from Northern, Central to Southern Luzon.\r\n', 0);

# --------------------------------------------------------

#
# Table structure for table `items`
#

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL auto_increment,
  `category_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `model` varchar(100) default NULL,
  `price` float NOT NULL default '0',
  `product_url` varchar(255) default NULL,
  `image_url` varchar(100) default NULL,
  `notes` text,
  `is_recommended` tinyint(4) default '0',
  `rating` int(11) default '0',
  `rating_count` int(11) default '0',
  PRIMARY KEY  (`item_id`)
) TYPE=MyISAM AUTO_INCREMENT=23 ;

#
# Dumping data for table `items`
#

INSERT INTO `items` VALUES (1, 2, 'Nissan Adventure', '2004', '3750.5', '', 'images/adventure_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\nEquipped with a pair of multi-reflector halogen headlamps, fin-type grille design, impact absorbing polypropylene bumpers, and white fender side makers. 15-inch 6-spoke aluminum wheels shod with 195/65 R15 tires complement the new fender flares and door claddings while the rear spare tire carrier enhances its SUV appeal.  \r\n4-spoke leather wrapped steering wheel with woodgrain and brushed aluminum accents, neatly re-styled door trims, European inspired matte finish wood paneling on the center panel and window controls, new air-conditioning control knobs and switches, and sleeker fender flares and door claddings for the exterior.  \r\nIndividual bucket seats up front, high quality fabric seat material. center console, service tray and cupholders at the back of the front seats, and sporty white meter gauges.equipped with thicker and newly contoured seats, while plush seat materials promote a more comfortable and relaxing interior. Road and engine noise are also minimized as the new Adventure is insulated further with sound and heat absorbing material, resulting to a quieter ride. \r\nMit-Air Dual Airconditioning system, Front facing third row seat that folds and tumbles, MMAS Keyless Entry with Alarm, and the Mitsubishi Motors Audio Design hi-fi audio system with an in-dash CD player, tuner and 6-speakers. ', 1, 6, 2);
INSERT INTO `items` VALUES (2, 1, 'Toyota Altis', '2004', '3000', '', 'images/Altis_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n4 speed automatic with Super ECT \r\nAirconditioning, Alarm System, Anti Rust \r\nAudio System with 6 speakers \r\nCentral Lock, Power Window \r\nAlloy Rims (15") \r\nSeat Hook, Reverse Sensor \r\nCarpet MAt, Stoneguard ', 0, 0, 0);
INSERT INTO `items` VALUES (3, 1, 'Honda Civic', '2005', '3500', '', 'images/Civic_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n13.2 gallon main unleaded fuel tank ;Power: 86 kW , 115 HP SAE @ 6,100 rpm; 110 ft lb , 149 Nm @ 4,500 rpm  \r\n4-Speed Manual Transmission with Clutch Locking System ; Power Steering ; adjustable steering wheel ; Increased wheel stroke.  \r\nPower steering ;3-point reel rear seat belts on driver side, passenger side and center side ;Three asymmetrical bench front facing rear seats with zero adjustments ;Rear view mirror ;Remote fuel filler door release ;Mechanical remote trunk/hatch release ;Upgraded cloth/velour seat upholstery with additional upgraded cloth/velour  \r\nAudio system with AM/FM; Four speaker(s) \r\nBody side molding ;Body color front and rear bumpers ;Driver and passenger internally adjustable black door mirrors ;Complex surface lens halogen bulb headlights ;Heat reflective glass ;Pearl paint ;Fixed rear window with defogger ;Tinted glass on cabin ;Weights: curb weight (lbs) 2,449 ;Windshield wipers with fixed intermittent wipe  ', 0, 0, 0);
INSERT INTO `items` VALUES (4, 2, 'Honda CRV', '2004', '3890', '', 'images/Crv_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n2,354 cc 2.4 liters in-line 4 front engine with 87 mm bore, 99 mm stroke, 9.6 compression ratio, double overhead cam, variable valve timing/camshaft and four valves per cylinder ; Unleaded fuel 87 ; Fuel economy EPA highway (mpg): 27 and EPA city (mpg): 22 ; Multi-point injection fuel system ; 15.3 gallon main unleaded fuel tank \r\nPower: 119 kW , 160 HP SAE @ 6,000 rpm; 162 ft lb , 220 Nm @ 3,600 rpm  \r\nFour-wheel ABS ; 4.438:1 axle ratio ; Four disc brakes including two ventilated discs ; Electronic brake distribution ; Immobilizer ; Fullsize steel rim rear spare carrier spare wheel ; Stability control ; Strut front suspension independent with stabilizer bar and coil springs , wishbone rear suspension independent with stabilizer bar and coil springs  \r\n2v power outlet: front and cargo and 1 ; Air conditioning ;Fixed mast antenna ;Audio anti-theft protection: code ;Audio system with AM/FM, CD player and cassette; Four speaker(s) ;Full dashboard console with covered storage box , partial floor console with open storage box , partial overhead console with covered storage box ;Low fuel level warning ;Remote power locks includes trunk/hatch ;Vehicle speed proportional power steering ;Front power windows with one one-touch , rear power windows ;Front reading lights ;3-point reel rear seat belts on driver side, passenger side and center side ;Remote fuel filler door release ;Remote control remote trunk/hatch release ;Front roof airbag ;Front seat back storage ', 0, 0, 0);
INSERT INTO `items` VALUES (5, 2, 'Toyota Hi-Ace', '1990', '2780', '', 'images/Hiace_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n2.7 litre petrol engine \r\n4-Speed Manual Transmission with Clutch Locking System ; Power Steering ; adjustable steering wheel ; Increased wheel stroke.  \r\nAll-Coil Spring Suspension ; All Coil Suspension System 2.7 Festival GS MT ; Increased front suspension mount rigidity. \r\nAM/FM Stereo Cassette \r\nSwivel Seats ; Reversible middle row and fold up back row for flexible seating and cargo handling \r\nImpact-Absorbing Bumpers ; Ball-joint mounted stabiliser bar to minimise body roll.  \r\nlarger door openings ; dash-mounted gate-type shift lever.  ', 0, 0, 0);
INSERT INTO `items` VALUES (6, 2, 'Nissan Urvan', '1994', '2750', '', 'images/nissanurvan_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\nGasoline,4-cyl. In-line, DOHC. Water cooled \r\nManual transmission 5-speed \r\nIndependent, double-wishbone torsion bar type with telescopic shock absorbers. Stabilizer. ; Rigid axle semi-elliptic leaf springs with telescopic shock absorbers \r\nAM/FM Stereo Cassette \r\nSwivel Seats ; Reversible middle row and fold up back row for flexible seating and cargo handling \r\nImpact-Absorbing Bumpers ; Ball-joint mounted stabiliser bar to minimise body roll.  \r\nlarger door openings ; dash-mounted gate-type shift lever.  ', 1, 15, 6);
INSERT INTO `items` VALUES (7, 2, 'Kia Pregio', '2003', '3100', '', 'images/Pregio_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>5-Speed Manual Transmission with Clutch Locking System \r\nPower Steering \r\nAll-Coil Spring Suspension ; All Coil Suspension System 2.7 Festival GS MT \r\nAM/FM Stereo Cassette \r\nSwivel Seats ; Reversible middle row and fold up back row for flexible seating and cargo handling \r\nImpact-Absorbing Bumpers \r\nJ2 4-Cylinder In-Line OHC Diesel Engine, 2665 cc Displacement \r\n', 1, 0, 0);
INSERT INTO `items` VALUES (8, 2, 'Toyota REVO', '2005', '4000', '', 'images/Revo_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n1.8 liter gasoline engine consumed one liter of fuel to every 7 kilometers. \r\n4-Speed Manual Transmission with Clutch Locking System ; Power Steering ; adjustable steering wheel ; Increased wheel stroke.  \r\nequipped with a pair of multi-reflector halogen headlamps, fin-type grille design, impact absorbing polypropylene bumpers, and white fender side makers. 15-inch 6-spoke aluminum wheels shod with 195/65 R15 tires complement the new fender flares and door claddings while the rear spare tire carrier enhances its SUV appeal.  \r\n4-spoke leather wrapped steering wheel with woodgrain and brushed aluminum accents, neatly re-styled door trims, European inspired matte finish wood paneling on the center panel and window controls, new air-conditioning control knobs and switches, and sleeker fender flares and door claddings for the exterior.  \r\nMit-Air Dual Airconditioning system, Front facing third row seat that folds and tumbles, MMAS Keyless Entry with Alarm, and the Mitsubishi Motors Audio Design hi-fi audio system with an in-dash CD player, tuner and 6-speakers. ', 0, 0, 0);
INSERT INTO `items` VALUES (9, 1, 'Honda VIOS', '2005', '3900', '', 'images/Vios_2.jpg', '<p><b><font color="#FF0000">METRO MANILA / AIRPORT SERVICES RATE: </font></b><b><font color="#FF0000"><BR>250\r\nPhp + gas / hr (minimum of 5 hrs)\r\n</font></b></p>\r\n2.7 litre petrol engine \r\n4-Speed automatic Transmission with Clutch Locking System ; Power Steering ; Power Lock; Power Window \r\nSRS Airbags - Driver\'s Seat ; SRS Airbags - Passenger\'s Seat \r\nAudio System with 6 speakers \r\nImpact-Absorbing Bumpers ; Ball-joint mounted stabiliser bar to minimise body roll.  ', 0, 0, 0);

# --------------------------------------------------------

#
# Table structure for table `location`
#

CREATE TABLE `location` (
  `location` varchar(20) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `location`
#

INSERT INTO `location` VALUES ('Muntinlupa City');
INSERT INTO `location` VALUES ('Makati City');
INSERT INTO `location` VALUES ('Quezon City');
INSERT INTO `location` VALUES ('Pasig City');

# --------------------------------------------------------

#
# Table structure for table `members`
#

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL auto_increment,
  `member_login` varchar(20) NOT NULL default '',
  `member_password` varchar(20) NOT NULL default '',
  `member_level` int(11) NOT NULL default '1',
  `first_name` varchar(50) NOT NULL default '',
  `last_name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `phone` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `notes` text,
  `card_type_id` int(11) default NULL,
  `card_number` varchar(50) default NULL,
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM AUTO_INCREMENT=6 ;

#
# Dumping data for table `members`
#

INSERT INTO `members` VALUES (1, 'admin', 'admin', 3, 'Administrator', 'Account', 'admin@localhost', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `members` VALUES (2, 'guest', 'guest', 1, 'Guest', 'Account', 'guest@localhost', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `members` VALUES (3, 'wawi', 'wawi', 3, 'wawi', 'narvasa', 'wawi@localhost', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `members` VALUES (4, 'jane', 'jane', 2, 'jane', 'narvasa', 'jane@localhost', NULL, NULL, NULL, 1, NULL);
INSERT INTO `members` VALUES (5, 'x', 'x', 1, 'x', 'x', 'x', 'x', 'x', NULL, 2, 'x');

# --------------------------------------------------------

#
# Table structure for table `orders`
#

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `member_id` int(11) NOT NULL default '0',
  `item_id` int(11) NOT NULL default '0',
  `quantity` int(11) NOT NULL default '0',
  `reservation_type` varchar(50) NOT NULL default '',
  `location` varchar(50) NOT NULL default '',
  `pulocation` varchar(50) NOT NULL default '',
  `pudate` varchar(15) NOT NULL default '',
  `puday` char(2) NOT NULL default '0',
  `putime` varchar(12) NOT NULL default '',
  `dolocation` varchar(50) NOT NULL default '',
  `dodate` varchar(15) NOT NULL default '',
  `doday` char(2) NOT NULL default '0',
  `dotime` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`order_id`)
) TYPE=MyISAM AUTO_INCREMENT=51 ;

#
# Dumping data for table `orders`
#

INSERT INTO `orders` VALUES (46, 1, 1, 1, 'Airport Services (P250/hr + gas min 5 hrs)', 'www', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');
INSERT INTO `orders` VALUES (47, 1, 6, 1, 'Out of Town', 'sdas', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');
INSERT INTO `orders` VALUES (44, 3, 5, 1, 'Airport Services (P250/hr + gas min 5 hrs)', 'sdsd', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');
INSERT INTO `orders` VALUES (39, 5, 1, 1, ' Metro Manila (P250/hr + gas min 5 hrs)', 'aa', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');
INSERT INTO `orders` VALUES (49, 1, 8, 1, ' Metro Manila (P250/hr + gas min 5 hrs)', 'sdfsdf', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');
INSERT INTO `orders` VALUES (50, 1, 8, 1, 'Airport Services (P250/hr + gas min 5 hrs)', 'WEQW', 'Makati City', 'Apr/2005', '01', '01:00 AM', 'Makati City', 'Apr/2005', '01', '01:00 AM');

# --------------------------------------------------------

#
# Table structure for table `reservation_type`
#

CREATE TABLE `reservation_type` (
  `reservation_type` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `reservation_type`
#

INSERT INTO `reservation_type` VALUES (' Metro Manila (P250/hr + gas min 5 hrs)');
INSERT INTO `reservation_type` VALUES ('Airport Services (P250/hr + gas min 5 hrs)');
INSERT INTO `reservation_type` VALUES ('Out of Town');

# --------------------------------------------------------

#
# Table structure for table `times`
#

CREATE TABLE `times` (
  `times` varchar(12) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `times`
#

INSERT INTO `times` VALUES ('01:00 AM');
INSERT INTO `times` VALUES ('02:00 AM');
INSERT INTO `times` VALUES ('03:00 AM');
INSERT INTO `times` VALUES ('04:00 AM');
INSERT INTO `times` VALUES ('05:00 AM');
INSERT INTO `times` VALUES ('06:00 AM');
INSERT INTO `times` VALUES ('07:00 AM');
INSERT INTO `times` VALUES ('08:00 AM');
INSERT INTO `times` VALUES ('09:00 AM');
INSERT INTO `times` VALUES ('10:00 AM');
INSERT INTO `times` VALUES ('11:00 AM');
INSERT INTO `times` VALUES ('12:00 PM');
INSERT INTO `times` VALUES ('01:00 PM');
INSERT INTO `times` VALUES ('02:00 PM');
INSERT INTO `times` VALUES ('03:00 PM');
INSERT INTO `times` VALUES ('04:00 PM');
INSERT INTO `times` VALUES ('05:00 PM');
INSERT INTO `times` VALUES ('06:00 PM');
INSERT INTO `times` VALUES ('07:00 PM');
INSERT INTO `times` VALUES ('08:00 PM');
INSERT INTO `times` VALUES ('09:00 PM');
INSERT INTO `times` VALUES ('10:00 PM');
INSERT INTO `times` VALUES ('11:00 PM');
INSERT INTO `times` VALUES ('12:00 AM');
    