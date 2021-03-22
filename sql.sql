ALTER TABLE `disc_ammo` 
ADD COLUMN `susturucu` INT NULL DEFAULT 0 
ADD COLUMN `fener` INT NULL DEFAULT 0
ADD COLUMN `tutamac` INT NULL DEFAULT 0
ADD COLUMN `kaplama` INT NULL DEFAULT 0
ADD COLUMN `durbun` INT NULL DEFAULT 0
ADD COLUMN `uzatilmis` INT NULL DEFAULT 0



INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'susturucu', 'susturucu', -1, 0, 1)
INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'fener', 'fener', -1, 0, 1)
INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'tutamac', 'tutamac', -1, 0, 1)
INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'kaplama', 'kaplama', -1, 0, 1)
INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'durbun', 'durbun', -1, 0, 1)
INSERT INTO `items` ( `name`, `label`, `limit`, `rare`, `can_remove`) VALUES ( 'uzatilmis', 'uzatilmis', -1, 0, 1)


susturucu -- silenciador
fener -- linterna 
tutamac -- mango
kaplama -- tinte
durbun -- mira
uzatilmis --cargador