CREATE TABLE `weedshop` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `weedshop` (name, item, price) VALUES
    ('SmokeOnTheWater','weed1',15),
	('SmokeOnTheWater','weed2',20),
    ('SmokeOnTheWater','weed3',25),
	('SmokeOnTheWater','weed4',13),
	('SmokeOnTheWater','weed5',14),
	('SmokeOnTheWater','weed6',16),
	('SmokeOnTheWater','weed7',11),
	('SmokeOnTheWater','weed8',10),
	('SmokeOnTheWater','weed9',15),
	('SmokeOnTheWater','weed10',12),
	('SmokeOnTheWater','weed11',5),
	('SmokeOnTheWater','weed12',7),
	('SmokeOnTheWater','weed13',8),
	('SmokeOnTheWater','weed14',10),
	('SmokeOnTheWater','weed15',11)
;

INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed1', 'Cannabis Médicinal', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed2', 'Résinne Médicinal', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed3', 'THC', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed4', 'Amnésia', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed5', 'Blue Cheese', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed6', 'Purple Haze', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed7', 'Orange Bud', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed8', 'White Widow', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed9', 'Bhuda Cheese', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed10', 'Royal roulé', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed11', 'Afghan Polm', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed12', 'Ketama Gold', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed13', 'Caramello', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed14', 'Hia', -1, 0, 1);
INSERT INTO `items` (`id`, `name`, `label`, `limit`, `rare`, `can_remove`) VALUES (NULL, 'weed15', 'King Hassan', -1, 0, 1);

