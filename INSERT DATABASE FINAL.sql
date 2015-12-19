USE MOLECULAR_GASTRONOMYS

INSERT INTO tblGEOGRAPHY (GeographyName)
VALUES ('Peru'), ('Washington'), ('Italy'), ('Lebanon'), ('China'), ('England'), ('Arizona'), ('India'), ('California'), ('Brazil'), ('Idaho')

INSERT INTO tblMIXTURE_TYPE
VALUES ('Solution'),('Colloid'),('Suspension'),('Aerosol'),('Foam'),('Gel'),('Powder'),('Emulsion'), ('Liquid sol'), ('Solid foam'), ('Solid gel'), ('Solid sol')

INSERT INTO tblINGREDIENT_TYPE
VALUES ('Fruit'),('Vegetable'),('Dairy'),('Starch'),('Spice'),('Meat'),('Salt'),('Leavener'),('Fat'),('Herb')


INSERT INTO tblFLAVOR (FlavorName)
VALUES
('Sweet'), ('Spicy'), ('Sour'), ('Bitter'), ('Salty'), ('Unami/Savory'), ('Mineral'), ('Floral'),
('Vegetal'), ('Neutral')


INSERT INTO tblCOMPOUND_TYPE (CompoundTypeName)
VALUES 
('Fiber'), ('Simple Carbohydrate'), ('Complex Carbohydrate'), ('Trans fat'), ('Poly-Unsaturated Fat'), ('Poly-Saturated Fat'),('Protein'), ('Cholesterol'),  ('Vitamin'), ('Mineral'), ('Neutral')


INSERT INTO tblSENSATION (SensationName)
VALUES ('Astringent'),('Heat'),('Numbing'),('Cooling'),('Wet'),('Gritty'),('QQ'),('Rich'),('Smooth'),('Boozy')


INSERT INTO tblCOMPOSITE (CompositeName, CompositeDesc, MixtureTypeID)
VALUES
('Lemon Curd', 'A tart lemon spread', 1), ('Vanilla Ice Cream', 'a nice frozen treat', 3), ('Lamb Shank', 'lamb shoulder braised to perfection', 5), ('Scotch Eggs', 'traditionally 16th century combination of chopped sausage and soft boiled eggs', 7), ('Rose Cream', 'whipped cream infused', 9), 
('Baguette', 'french bread', 2), ('Chocolate ganache', 'A solid chocolate frosting', 8), ('Flan', 'a creamy milky sponge cake', 4), ('Pizza', 'Marinara sauce on flat bread, with cheese and a variety of other vegetables', 6), ('Paella', 'Spanish rice, shrimp, lobster, and a variety of other seafood and fresh vegetables', 10)

INSERT INTO tblCOMPOUND (CompoundTypeId, CompoundName, CompoundBoilingPoint, CompoundFreezingPoint)
VALUES 
(1, 'Lycopene', 660.9,-120.2), (2, 'Citral', 229,-157.9), (3, 'Leaf Aldehyde', 126,-107), (4, 'Estragole', 216,-515), 
(5, 'Linalool', 199,-73.4), (6, 'Zingiberene', 135,-116.9), (7, 'Capsaicin', 210,-302.1), (8, 'ally methyl sulfide', 92,-198.3), 
(9, 'malic acid', 322,-134.2), (10, 'hydroxy-alpha sanshool', 400, -513.1)


INSERT INTO tblINGREDIENT (IngredientName, IngredientTypeID)
VALUES ('Tomato',1),('Basil',10),('Parmesan Cheese',3), ('Flour',4),('Garlic',10),('Ginger',10),('Sichuan Peppercorn',5), ('Facing Heaven Chili Pepper',5), ('Cherry',1),('Lemon',1)


INSERT INTO tblCOMPOUND_PERCENTAGE (CompoundID, IngredientID, Percentage)
VALUES
(5, 8, 0.42869306493777359),(6, 1, 0.24170484613601095),(6, 1, 0.9983925842050746),(7, 5, 0.97376132338478505),(9, 7, 0.27576223744380568),(10, 2, 0.57309021939905569),(9, 2, 0.2842233770527679),(3, 4, 0.99964812559862681),(7, 3, 0.32619771333389636),(1, 9, 0.44070681752866014),
(7, 9, 0.50583322019053989),(8, 3, 0.062667333095645095),(7, 6, 0.78928067233087451),(3, 4, 0.29714763125839383),(8, 9, 0.41976086474189211),(4, 5, 0.15799683340577775),(9, 9, 0.15356458484668523),(6, 7, 0.27076781423921537),(10, 4, 0.51439242576879907),(9, 9, 0.15891248879890663),(4, 7, 0.24024446622365925),(3, 5, 0.2471278078664777),(10, 6, 0.67220521571020664),(8, 7, 0.039085522956852414),(10, 10, 0.70591422359400813)

INSERT INTO tblCOMPOSITE_INGREDIENT (CompositeID, IngredientID)
VALUES
(3, 8),(7, 6),(4, 7),(2, 7),(5, 4),(7, 9),(5, 6),(2, 3),(5, 4),(6, 7),(8, 1),(1, 3),(3, 1),(10, 7),(7, 2),(8, 3),(10, 4),(4, 10),(9, 4),(2, 9),(4, 1),(1, 8),(8, 6),(2, 8),(4, 7)



INSERT INTO tblGEOGRAPHY_INGREDIENT (GeographyID, IngredientID)
VALUES
(6, 7),(9, 3),(9, 1),(6, 5),(6, 4),(4, 7),(9, 8),(10, 4),(5, 6),(3, 2),(3, 2),(10, 3),(6, 5),(6, 4),(7, 8),(5, 6),(3, 5),(5, 2),(1, 10),(3, 8),(9, 8),(9, 2),(8, 5),(5, 3),(8, 6)





INSERT INTO tblCOMPOUND_SENSATION(CompoundID,SensationID)
VALUES
(10, 1),(3, 6),(1, 5),(7, 5),(2, 3),(7, 3),(4, 10),(4, 2),(6, 4),(4, 5),(9, 2),(2, 5),(4, 6),(10, 1),(8, 1),(1, 8),(8, 4),(7, 10),(9, 7),(1, 3),(1, 4),(7, 4),(4, 3),(2, 4),(10, 8)



INSERT INTO tblCOMPOUND_FLAVOR(CompoundID,FlavorID)
VALUES
(3, 7),(9, 8),(3, 7),(10, 7),(10, 3),(10, 9),(6, 5),(7, 4),(10, 4),(10, 1),(2, 7),(1, 6),(6, 2),(8, 5),(9, 8),(4, 5),(3, 6),(5, 9),(2, 9),(9, 6),(5, 1),(5, 8),(3, 6),(5, 7),(6, 4)






