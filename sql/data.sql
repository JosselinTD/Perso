TRUNCATE `project`;
INSERT INTO project(image, title, resume, description, link) VALUES
("assets/wam.png", "We Are The Models", "Petite? Grande? Taille 36 ou 48? Peu importe ! Sur WAM, découvrez les looks de femmes chic qui ont votre style et votre morphologie.", "Il va falloir y réfléchir...", "http://beta.wearethemodels.co"),
("assets/neurokiff.png", "Neurokiff", "Neurokiff est un objet design innovant qui permet de vivre une expérience hybride et inédite : percevoir en live ses émotions lors d'une dégustation de grands vins et/ou de plats gastronomiques.", "Il va falloir y réfléchir", "http://www.neurokiff.com"),
("assets/forge.png", "La Forge d'ivoire", "Le forgeur de mousse vous invite dans sa forge ! Choisissez parmi des modèles de série de haute qualité ou demandez un devis pour votre matériel de rêve !", "Projet en cours", "http://forge.josselin-td.fr"),
("assets/creascop.png", "Créascop 4", "Un modèle Excel de business plan financier, un modèle Word de plan d'affaires et un guide de création d'entreprise en SCOP.", "Il va falloir y réfléchir", "http://www.creascop.fr");

TRUNCATE `language`;
INSERT INTO language(title, logo, level) VALUES
("HTML", "assets/html5.png", 90),
("CSS", "assets/css3.png", 80),
("Javascript", "assets/javascript.png", 70),
("AngularJS", "assets/angular.png", 60),
("PHP", "assets/php.png", 80),
("Symfony2", "assets/symfony.png", 50);

TRUNCATE `technology`;
INSERT INTO technology(title, logo) VALUES
("Leap Motion", "assets/leap.png");

TRUNCATE `theory`;
INSERT INTO theory(title, level) VALUES
("Algorithmique", 90),
("Pattern", 60);

TRUNCATE `pole`;
INSERT INTO pole(title, value, color, highlight) VALUES
("Android", 3, "#76FF03", "#B2FF59"),
("Back-office", 2, "#FFC107", "#FFD54F"),
("Front-office", 5, "#2196F3", "#90CAF9");
