-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 02 oct. 2024 à 18:03
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sencine_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `synopsis` varchar(750) NOT NULL,
  `date_sortie` int(11) NOT NULL,
  `realisateur` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `lien_ba` varchar(250) NOT NULL,
  `cast` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `synopsis`, `date_sortie`, `realisateur`, `image_url`, `lien_ba`, `cast`) VALUES
(1, 'Touki Bouki', 'Mory, jeune berger un peu marginal, et Anta son amoureuse, étudiante provoquante, veulent partir pour Paris. Pour réaliser leur rêve, il ne leur manque que l\'argent du voyage. Mory décide de se le procurer par des moyens peu orthodoxes.', 1973, 'Djibril Diop Mambéty', 'images/films/1.jpg', 'https://youtu.be/xaWmfqrQjU4?si=MHZi9EohK3ZbtmsC', 'Magaye Niang, Myriam Niang'),
(2, 'Madame Brouette', 'Une femme décide d\'en finir avec les hommes et de faire sa vie toute seule. Cette résolution ne l\'empêchera de retomber amoureuse d\'un homme charmant en apparence mais qui se révélera être un vrai bougre.', 2002, 'Moussa Sène Absa', 'images/films/2.jpg', 'https://youtu.be/6B_yRuG1gPw?si=iCJCxgzrjXKuAoSv', 'Rokhaya Niang, Ababacar Sadikh Ba, Juliette Ba, Ibrahima Mbaye, Kadiatou Sy'),
(3, 'Guelwaar', 'Guelwaar, catholique et grand défenseur de l\'auto-détermination de l\'Afrique a été éliminé parce que ses paroles dérangeaient. On s\'aperçoit le matin de ses obsèques que son corps a disparu et l\'éloge funèbre se fait autour d\'un cercueil vide. A la suite d\'une erreur administrative, c\'est une puissante famille musulmane qui l\'a enterré et qui ne veut rien révéler pour ne pas perdre la face. Les deux communautés religieuses vont se dresser face à face en évoquant le souvenir de ce curieux personnage qui faisait trembler les autorités en fustigeant les aides internationales reçues par l\'Afrique.', 1992, 'Ousmane Sembène', 'images/films/3.jpg', 'https://youtu.be/oAA8MqwYrIs?si=EF00LjacadTqKc0F', 'Thierno Ndiaye, Oumar Seck, Marie Augustine Diatta, Mame Ndoumbé Diop'),
(4, 'Mossane', 'L\'histoire de Mossane, belle jeune fille qui fait tourner tous les coeurs dans son village de Mbissel. Ses parents l\'ont promise en mariage à Diogoye qui travail au Concorde Lafayette à Paris. Mais Mossane aime Fara, un jeune étudiant désargenté.', 1996, 'Safi Faye', 'images/films/4.jpg', 'https://youtu.be/FTfUL8YFQ6M?si=igJpCW8GwdWDjox1', 'Magou Seck, Alioune Konaré, Abou Camara'),
(5, 'La Pirogue', 'Un village de pêcheurs dans la grande banlieue de Dakar, d’où partent de nombreuses pirogues. Au terme d’une traversée souvent meurtrière, elles vont rejoindre les îles Canaries en territoire espagnol. Baye Laye est capitaine d’une pirogue de pêche, il devra conduire 30 hommes en Espagne. Ils ne se comprennent pas tous, certains n’ont jamais vu la mer et personne ne sait ce qui l’attend.', 2012, 'Moussa Touré', 'images/films/5.jpg', 'https://youtu.be/6_nmZCzwqWk?si=R2OE_aofyiBjbodJ', 'Souleymane Seye Ndiaye, Malamine Dramé, Laïty Fall, Mame Astou Diallo, Balla Diarra, Babacar Oualy'),
(6, 'Ceddo', 'Le film se situe au 17ème siècle au moment où l\'islam et le christianisme pénètrent l\'Afrique de l\'Ouest. Pour les deux religions, tous les moyens sont bons pour remplir la mosquée ou l\'église : armes à feu, alcool et pacotille de toute sorte. L\'imam, après avoir converti la famille royale et les grands dignitaires, se heurte au refus des \" Ceddos \", le peuple. Pour eux, adhérer à une religion étrangère, c\'est renoncer au spiritualisme africain.', 1977, 'Ousmane Sembène', 'images/films/6.jpg', 'https://youtu.be/9ipcync79CI?si=CheBt4O2NuUwRGrZ', 'Moustapha Yade, Tabatha Ndiaye, Mamadou Dioumé, Matoura Dia'),
(7, 'Le Mandat', 'Le jour où le facteur apporte à Ibrahima Dieng un mandat de 25 000 francs CFA de la part de son neveu, immigré à Paris, Ibrahima se montre généreux. Dans le quartier la nouvelle se répand et il aide sa famille et ses voisins, mais sans carte d\'identité la poste refuse de lui remettre l\'argent, ce qui est l\'origine d\'un long parcours du combattant dans les méandres de l\'administration sénégalaise…', 1968, 'Ousmane Sembène', 'images/films/7.jpg', 'https://youtu.be/L3LJ5RJ8wOg?si=UQ8VbG7NNyeopLvY', 'Makhouredia Guèye, Younousse Ndiaye, Isseu Niang, Mouss Diouf'),
(8, 'Saloum', 'Abattus en vol après avoir fui un coup d\'État en exfiltrant un baron de la drogue de Guinée-Bissau, les légendaires mercenaires connus sous le nom de Hyènes de Bangui - Chaka, Rafa et Minuit - doivent se cacher et faire profil bas afin de réparer leur avion et ne pas attirer l’attention sur les kilos d’or qu\'ils ont volés. Trouvant refuge dans un camp de vacances du Sine-Saloum, ils font de leur mieux pour se fondre parmi les vacanciers. Chaka cache un sombre secret : à l\'insu des autres Hyènes, il les a amenés ici pour une raison précise et lorsque son passé le rattrape, ses décisions ont des conséquences dévastatrices, menaçant de déchaîner l\'enfer sur eux.', 2021, 'Jean-Luc Herbelot', 'images/films/8.jpg', 'https://youtu.be/klP2POKyDLk?si=as6cADhuPknCUeUB', 'Yann Gaël, Mentor Ba, Roger Sallah, Evelyne Ily, Babacar Oualy, Bruno Henry, Abdou Basse Dia'),
(9, 'Hyènes', 'Colobane, une petite cité, endormie dans la chaleur poussiéreuse du Sahel, fantôme d\'une ville au charme foudroyé par la misère. Des griots annoncent à la population une incroyable nouvelle : Linguère Ramatou, trente ans après, devenue archi-milliardaire, est de retour. Fini la pauvreté. La population attend Linguère à l’entrée de la ville. Draman Drameh qui fut l’amant passionné de la jeune Linguère, se précipite le premier.', 1992, 'Djibril Diop Mambéty', 'images/films/9.jpg', 'https://youtu.be/FqO9FFwIAGA?si=UE3jjD7sbYggGqxp', 'Ami Diakhaté, Mansour Diouf, Makhouredia Guèye, Calgou Fall, Kaoru Egushi, Issa Samb'),
(10, 'Atlantique', 'Dans une banlieue populaire de Dakar, les ouvriers d’un chantier, sans salaire depuis des mois, décident de quitter le pays par l’océan pour un avenir meilleur. Parmi eux se trouve Souleiman, qui laisse derrière lui celle qu\'il aime, Ada, promise à un autre homme. Quelques jours après le départ en mer des garçons, un incendie dévaste la fête de mariage d’Ada et de mystérieuses fièvres s\'emparent des filles du quartier. Issa, jeune policier, débute une enquête, loin de se douter que les esprits des noyés sont revenus. Si certains viennent réclamer vengeance, Souleiman, lui, est revenu faire ses adieux à Ada.', 2019, 'Mati Diop', 'images/films/10.jpg', 'https://youtu.be/uy1wHjieq3w?si=3GfDBbmmr2yqFEHA', 'Mama Sané, Amadou Mbow, Ibrahima Mbaye, Diankou Sembène, Babacar Sylla'),
(11, 'Camp de Thiaroye', 'Un épisode sanglant peu glorieux de l\'histoire. Au Sénégal en 1944, un bataillon de tirailleurs arrive au camp de transit de Thiaroye. Ces hommes ont été enrôlés de force, certains depuis 1940, dans l\'armée coloniale française pour se battre en France contre les Allemands. Ils attendent, parqués dans le camp, leur démobilisation et leur pécule. La fierté fait bientôt place à la désillusion devant les promesses non tenues et le racisme de la hiérarchie militaire, les tirailleurs sénégalais se mutinent. On dénombrera vingt-cinq morts et de nombreux blessés, d\'autres seront emprisonnés.', 1988, 'Ousmane Sembène', 'images/films/11.jpg', 'https://youtu.be/-di9bB2ERZQ?si=cYHC2Ohv6xFP9Lw_', 'Ibrahima Sané, Ismaila Cissé, Jean-Daniel Simon, Gabriel Zahon');

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `synopsis` varchar(500) NOT NULL,
  `date_sortie` int(11) NOT NULL,
  `maison_prod` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `statut` varchar(250) NOT NULL,
  `lien_ytb` varchar(250) NOT NULL,
  `cast` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `titre`, `synopsis`, `date_sortie`, `maison_prod`, `image_url`, `statut`, `lien_ytb`, `cast`) VALUES
(1, 'Nafi', 'Au Sénégal, un quartier est bouleversé par l’annonce du mariage de la jeune Nafi avec Niang un homme marié avec déjà deux filles de l’âge de Nafi.', 2018, 'Marodi TV', 'images/series/1.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vsvMcBXW30mXhJhXITcINZG&si=UDArN5QWlNVphTC8', 'Sandra Viviane Diop, Ibrahima Guèye'),
(2, 'Virginie', 'La série relate l’histoire d’une jeune fille du nom de Virginie. Elle a 16 ans et c’est la chouchou de ses parents. Très brillante à l’école, elle a toujours eu d’excellentes notes. Lauréate du prix du meilleur roman dans son centre, elle rafle tous les honneurs. Sa beauté, sa simplicité et sa politesse font d’elle une personne appréciée de tous. Par contre elle garde ce caractère ferme et parfois dur de son père qui est militaire. Il s’agit du Général des forces armées du Sénégal.', 2020, 'Marodi TV', 'images/series/2.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vvLi7Q3ETCo6A_W5qXKqf8L&si=_hWfm4v3viCxkV5L', 'Aissatou Aly Ndior, Mame Diarra Mbaye, Aissatou Abdoul Sy, Fatou Bintou Ndiaye, Fatou Kiné Ndiaye, Moustapha Niang, Mouhamed Camara'),
(3, 'Maîtresse d\'un homme marié', 'Maréme Dial est la maitresse de Cheikh Diagne. Un statut qu’elle assume depuis qu’elle l’a accepté dans sa vie. Entre eux comme dans tout couple il y’a des hauts et des bas. Comme toute maîtresse elle aimerait bien connaitre l’autre, la femme légitime celle qui légalement est la maitresse des lieux. Quand par hasard le destin met sur son chemin Lalla Piem N’diaye, Maréme est décidée à jouer le jeu.', 2019, 'Marodi TV', 'images/series/3.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vt4YgmhZP6xBYq8psOyoz7n&si=JzFHR6qFlwgPBz3c', 'Khalima Gadji, Ndèye Binta Lèye, Ndiaye Ciré Ba, Esther Ndiaye, Khadidiatou Bah, Jessica Gomes, Cheikh Babou Gaye, Abdul Kader Gadji, Adama Diop, Astou Fall Linguère, Marème Niang'),
(4, 'Emprises', 'Posséder, influencer, manipuler, étouffer, contraindre. Autant de façons d’exercer ou de subir une emprise. Une emprise parmi tant d’autres. Entre ceux qui agissent et ceux qui subissent, les combats sont souvent rudes, certainement passionnés, probablement tragiques, mais toujours pleins d’émotions !', 2022, 'Marodi TV', 'images/series/4.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vt77nM1LuCeOPtvb1Q40hdi&si=Uj2cMcqiqRi-x2f9', 'Amélie Mbaye, Ndèye Mour Ndiaye, Abdou K. Fam, Mame Yakhara Gueye, Maguatte Fall, Awa Diagne, Auguste Bruno Derneville, Cheikhou Guèye, Fanta Samira Coulibaly, Carole Valérie Andrade'),
(5, 'Déchéances', 'Jeune guinéenne, Linda décroche son bac et débarque pleine de rêves à Dakar pour ses études supérieures. Mais le destin de la jeune fille bascule lorsque, croulant sous les difficultés financières et influencée par son entourage, elle est tentée de recourir à des solutions extrêmes pour survivre dans la jungle dakaroise.', 2023, 'Marodi TV', 'images/series/5.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vsRh_IfJbpgmIPX3fIZHQIF&si=AD4Us2RnWlfKNiba', 'Penda Sow, Asmaou Baldé, Banel Camara, Mbayang Diagne, Jeanine Diagne, Seynabou Diagne, Amina Sarr, Alain Diémé, Beauga Mbaye, Fayçal Bayo'),
(6, 'Pod et Marichou', 'On a tous vécu une histoire PASSIONNANTE qui nous a emporté au delà du réél. Cette histoire difficile et compliquée qui nous a fait souffrir mais qui nous passionne, qui laisse parler le coeur et se heurte à la RAISON. Cette raison qui finalement nous ramène sur terre et nous guide vers le chemin du bonheur palpable. Cette raison qui nous fait découvrir la réalité de l\'Amour et ses contraintes, le vécu du quotidien, la vie, la stabilité, L\'AMOUR.. le Vrai.', 2016, 'Marodi TV', 'images/series/6.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vtQLmTiszZAUmHXJdQeq8A_&si=BZNbNEMXfuHVDn9y', 'Pape Oumar Diop, Marietou Diop, Mouhamed Sylla, Carole Valérie Andrade, Betty Diari Dia'),
(7, 'Golden', 'Jams revient au Sénégal sur injonction de sa mère Mage pour redresser Golden, une entreprise d’exploitation d’or au bord du déclin. Entouré d’ennemis qui convoitent sa place dont Fadel un ancien employé de Golden qui a juré de détruire Mage par tous les moyens, Jams lutte pour réussir sa mission. Alors que ses adversaires se multiplient, les démons du passé nébuleux de Jams ressurgissent pour régler des comptes avec lui.', 2019, 'Marodi TV', 'images/series/7.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vsNB2Svkv4sJJkK51CDwiY5&si=-YWUZo2u7UWYql6_', 'Amélie Mbaye, Souleymane Seye Ndiaye, Mentor Ba, Diariatou Sow, Fatou Jupiter Touré, Christiane Dumont'),
(8, 'La Graine du pouvoir', 'Voilà maintenant quelques années que Gayky travaille pour AgroDream en tant que chef des agriculteurs. Tanor Ka, le PDG, l’admire pour sa connaissance des terres et son leadership avec les agriculteurs. Mais tout bascule lorsque Gayky devient petit à petit la source des problèmes de la boite d’agrobusiness.', 2023, 'Marodi TV', 'images/series/8.jpg', 'En cours', 'https://youtube.com/playlist?list=PLg7NjHK9t-vulN5fgQ4QB0TK495JEsfiO&si=UEZ4KiSR0LYAcb1b', 'Aliou Ngom, Kadia Sall, Antoine Perreira, El Hadj Doudou Ndao, Mbarka Diouf, Youssouf Mbodj, Seynabou Abdoul Kane'),
(9, 'Baabel', 'Quatre péthiorgos (belles-sœurs), mais seule l’une d’entre elles sera la reine incontestée, la prestigieuse \"Borom Baabel\" ! Pas de quartier ! C’est une guerre totale qui se mène entre elles. De vrais combats de lamb (lutte sénégalaise) où tous les coups sont permis, même ceux dans le dos. Dans cette pagaille incontrôlable, nous retrouvons Nabou l’ainée des belles sœurs, Awa Cheikh la nièce de Ndiouga, Djodjo le choix de son mari et Fa la préférée de Ndiouga, le chef de famille.', 2023, 'Marodi TV', 'images/series/9.jpg', 'En cours', 'https://youtube.com/playlist?list=PLg7NjHK9t-vt_ij-mdl4hYhQCRPWHwdG0&si=Nfpu-QQthcarptUH', 'El Hadj Moda Thioune, Nefertiti Sow, Adama Dieng, Khady Guèye, Moustapha Ngom, Aminata Kébé, Fodé Sarr, Djeynaba Sow, Yakhara Ndiaye, Mame Diarra Diop, Juliette Awa Thiam, Serigne Matar Guèye, Mariama Salam, Ndèye Touteu Ndiaye'),
(10, 'Cœurs Brisés', '« Cœurs brisés » raconte les meurtrissures du cœur de Massamba et Alice. Deux personnes torturées par l\'amour. Plongés dans une profonde désillusion, leur vision de la vie de couple va être différente, jusqu\'au jour où leurs regards se croisent…', 2023, 'Even Prod', 'images/series/10.jpg', 'En cours', 'https://youtube.com/playlist?list=PLPgAk0OTvFp8GEeGpGOpUVTFdz-cg5kld&si=3sBV-Xs4IhJ0hoHn', 'Moussa Sow, Seynabou Touré, Abdul Kader Gadji, Maimouna Fall'),
(11, 'Adja', 'Cette série est un sitcom de 10 mn diffusé durant le mois de Ramadan 2018. Le quotidien de la maison de Adja, décrite comme la femme sénégalaise parfaite, a accueilli de nombreux invités durant le mois de ramadan comme sa belle-famille, ce qui a causé des évènements bouleversants et improbables, qu’elle a su gérer avec tact.', 2018, 'Marodi TV', 'images/series/11.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vs8VHwgVbpivvB1SgjMIqLR&si=p5BoXPfxz_z71KF1', 'Keisha Khadija Dème, Ousseynou Ba'),
(12, 'Impact', 'L’impact est inévitable ! Un impact qui résonne au-delà des frontières... Un impact sur la vague des émotions, qui vous fait voyager des rires aux pleurs, de la tristesse à la joie... Un impact qui unit l\'amour et la haine, étale sa puissance et séduit tous les cœurs… L’impact est proche ! L’impact sera fort.', 2021, 'Marodi TV', 'images/series/12.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vtRERj-P5UXUN5MeYChZLlE&si=9fGixC4bN-bqMDh3', 'Mouhamed Sylla, Armande Marie Louise Lô, Oumy Marie Diallo, Marie Paule Adjé, Polha Andréa Gouré, Landry Gnamba, Serge Abessolo, Phillipe Sylvian Coly, Pa Assane Thiam, Lamine Cissokho, Amy Lucia Diop, Aziz Berger, Maguatte Fall'),
(13, 'Karma', 'Nos héros et héroïnes sont de jeunes sénégalais dans la vingtaine, entre vie moderne et traditions. Ce sont des jeunes d’aujourd’hui, désireux de liberté mais souvent rattrapés par les réalités sociales. Les souvenirs douloureux, le poids du passé, les erreurs de jeunesse mais aussi la maladie sont autant de fils qui tracent l’histoire principale d\'Amy et de Majib, et qui s’imbriquent pour les ramener, indubitablement, à accepter leur destin. Adapté de la chronique du même nom de Cendres.', 2020, 'Marodi TV', 'images/series/13.jpg', 'En cours', 'https://youtube.com/playlist?list=PLg7NjHK9t-vtITsCtX129tT9P0k7h4tWi&si=I7yt3AqdGgrpPkM5', 'Diariatou Sow, Arfang Sané, Mame Yakhara Guèye, Roselyne Sylla, Seynabou Guèye, Rosa Manuela Evora, Maguatte Fall, Mouhamed Ndiaye, Néné Dieynaba Diallo, El Hadj Moda Thioune, Mbaye Martin Tino, Bathie Massamba, Keisha Khadija Dème, Ousseynou Bissichi, Maimouna Fall, Ndèye Mour Ndiaye, Mouhamed Touré, Ibtissam Sabour'),
(14, 'C\'est la vie !', 'La série suit le quotidien d\'un centre de santé à Ratanga, un quartier populaire imaginaire de Dakar.', 2015, 'Keewu Production', 'images/series/14.png', 'Terminé', 'https://youtube.com/playlist?list=PLDG_sN0zT3tEY-ZzUMdpBJMTns1TYaTaK&si=UjaJ6PYBnaLV_Hec', 'Christiane Dumont, Awa Djiga Kane, Ndiaye Ciré Ba, Fatou Jupiter Touré, Joséphine Zambo'),
(15, 'Une femme, un mari', 'Dans un contexte où le mariage au Sénégal est devenu un luxe pour les femmes, la majeure partie des hommes célibataires n’épousent que des femmes de moins de 23 ans. La plupart des hommes qui ont la possibilité d’épouser plusieurs femmes sont bloqués par leur régime matrimonial pour avoir signé monogame. De ce fait, trois femmes se sont regroupées pour faire changer les choses. Elles ont un objectif commun : un mari pour chaque femme.', 2021, 'Marodi TV', 'images/series/15.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLg7NjHK9t-vtXZZiydQXelSDsBVbGg2ul&si=rZlq_Z2kJLjgGn_R', 'Fatou Niane, Cheikh Gadiaga, Kaltoum Fall, Boubacar Sakho, Awa Touré, Mouhamadou Ndiaye, Paulette Marie Louise Diémé, Eric Patrick Gomis Correa'),
(16, 'Vautours', 'La série VAUTOURS met en parallèle dans sa narration deux époques distinctes de l’histoire sénégalaise. \r\nTraditions, modernité, originalité & suspense sont au rendez-vous.', 2022, 'Even Prod', 'images/series/16.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp9FV179GV0d0wZv-1uurSod&si=PGqgWe52awu598rQ', 'Cheikh Doumbia, Awa Djiga Kane, Ngorba Niang, Abdoulaye Thiam, Jean Alain Dosseh, Dieynaba Leurs, Awa Ndiaye, Josiane Evora, Mor Talla Sow'),
(17, 'Fake Life', 'FAKE LIFE, \"affichè indo play coboy !\" Notre nouvelle série buzze déjà. Normal, elle parle de l\'impact des réseaux sociaux sur nos vies et notre société.', 2023, 'Even Prod', 'images/series/17.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp_IYshH3-dltnnKsKaJIO18&si=bdfx6L9IknZ48ckY', 'Dieynaba Baldé, El Hadj Baoré Ass Diagne, Mouhamadou Fallou Thiam, Mohamed Sir, Félicia Sylla, Fah Aïdara, Saphie Kanté'),
(18, 'Infidèles', 'Cette série raconte plusieurs histoires de couples dont l\'infidélité d\'un partenaire provoquée par diverses raisons fait voler le couple en éclats.', 2020, 'Even Prod', 'images/series/18.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp8pwPvOyV3kScnORxTk3lRu&si=_YU1wHSvafNcEmZD', 'Moussa Sow, Ndèye Barry, Maman Faty, El Hadj Doudou Ndao, Khadim Sène, Amy Faye, César Sow, Antoinette Sow, Kathy Chimère Diaw'),
(19, 'Idoles', 'Jeune journaliste, Malick est recruté par le plus grand organe de presse du pays, le quotidien West Infos. A son grand bonheur, il a pour directeur de publication son idole, son modèle, Grand Laye. Ce que Malick ignore, c\'est qu\'au fil des années, Grand Laye est devenu un homme corrompu…', 2016, 'Even Prod', 'images/series/19.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp9I-bXrdPp1SpLj3oRwEaso&si=NtQcAfY6qhi8Tcc5', 'Mouhamed Touré, Ngorba Niang, El Hadj Bâ, Babacar Oualy, Djeynaba Ngom, Mody Fall, Auguste B. Derneville, Adjara Fall, Mame Victore Samb, Samantha Lopy, Boubacar Diallo'),
(20, 'Xew Xew', 'Avec XEW XEW, bienvenue dans la pratique des festivités au Sénégal : dépenser toutes ses économies ou s’endetter pour un mariage, un baptême ou un autre évènement, juste pour le paraitre, peut devenir un fardeau qui hypothèque toute une vie !', 2023, 'Even Prod', 'images/series/20.jpg', 'En cours', 'https://youtube.com/playlist?list=PLPgAk0OTvFp8dzsvSCpKyVVVhpH4Nn4aQ&si=M5SE2eVp3FZlNjig', 'Abdoulaye Diouf, Ndèye Mbaye, Khady Lô, Soda Mboup, Fatou Cheikh Mbengue, Fatou Ka'),
(21, 'Müñel', 'Müñel, c’est la vie quotidienne de 5 femmes et leurs évolutions dans le cadre de leurs mariages : elles y découvrent souvent le vrai visage de leurs conjoints, contraintes pour certaines d’envisager de divorcer avec tout ce que cela signifie aux yeux de la société sénégalaise.', 2022, 'Even Prod', 'images/series/21.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp9QUpRbjVjHK7JbY1Q-f1nT&si=Zx8Kijxb6mYlluDr', 'Fanta Samira Coulibaly, Pa Assane Thiam, Mamy Mbaye, Fatou Diop, Linguère Fall, Aminata Sy, Ousseynou Ba, Youssou Dieng, Mandire Guèye '),
(22, 'Mœurs, la brigade des femmes', 'Il s’agit d’une brigade anti-criminelle entièrement composée de femmes. Anna (ex, Rg), Collé (Ex Camoufle), Marly (Ex-Hacker), Imane (Ex-Soldat), Kira (Ex- Détenue), Noor (C- girl) et Yandé (Ex- voyante) sillonnent les rues de la capitale pour démanteler les nids de malfaiteurs.', 2019, 'Even Prod', 'images/series/22.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp9kZaTw_qAC6YM_oyIkxVSY&si=NnyrqVi0fMf77NZV', 'Fanta Samira Coulibaly, Oulèye Ndiaye, Mame Ciré Ndiaye, Maman Thioro Guèye, Khoudia Sène, Jessica Lauraine, Dejanira Torres, Abdoulaye Diakhaté, Pa Assane Thiam'),
(23, 'Bété Bété, les legs du sang', 'Bété Bété raconte l’histoire de familles profondément marquées par les legs du sang. Certaines considérations autour des castes rendent impossible des amours, amitiés et relations…', 2024, 'Even Prod', 'images/series/23.jpg', 'En cours', 'https://youtube.com/playlist?list=PLPgAk0OTvFp93FNXz0Rr0bf-vGNxONNxl&si=L347L4DiAskTMC2w', 'Soumboulou Bathily, Mandione Laye Sarr, El Hadj Abdou Aziz Niane, Mame Cheikhou Guèye, Aminata Mbaye, Mariama Kébé, Fatma Samb, Ndeye Ndiaye, Absatou Kane, Cheikhou Sall'),
(24, 'Dikoon', 'Dikoon est une jeune fille de son époque, follement passionnée de danse. Elle est aussi la fille unique de l\'Imam du quartier. Malgré l\'opposition paternelle, Dikone, étoile filante de la danse, n\'en fait qu\'à sa tête et s\'échine tous les jours à assouvir sa passion. Dikoon a pour voisin un jeune médecin, le docteur Sarr et très vite, ils tomberont tous deux amoureux… ', 2016, 'Pikini Production', 'images/series/24.jpg', 'Terminé', 'https://youtube.com/playlist?list=PL7OYJbvZchhFmlZEvZInQygwXi_s3Y_7j&si=QFD9NzDtD6OGOSFi', 'Dikone Sy, Mame Younouss Dièye, Mouhamed Bamba Camara, Maïmouna Faye Béssane, Binta Bathily, Rose Diarra'),
(25, 'Wiri Wiri', '« Wiri Wiri » relate la vie difficile d\'une jeune femme, Soumboulou qui s\'est mariée avec Cheikhouna, un émigré, dont elle a fini de se séparer de son mari. De retour au pays, ce dernier veut reconquérir son ex-femme qui avait déjà dit « oui » à un homme d\'affaires très riche.', 2015, 'SSP', 'images/series/25.jpg', 'Terminé', 'https://youtube.com/playlist?list=PL05dVKoxnDtAJUcIobOgkGjmhMEazEWDn&si=nWvENCdfelbR8aME', 'Soumboulou Bathily, Cheikh Ndiaye, Aby Diagne, Vieux Ba, Ndiassé Ndiaye, Mame Cheikhou Guèye, Gorgui Gningue, Bineta Samb, Aziz Niane, Ndèye Coumba Diarra'),
(26, 'Un café avec...', 'L\'intrigue principale tourne autour de Boubacar Diallo et son épouse, dont le mariage idyllique est mis à mal par des tensions, notamment avec l\'arrivée d\'une certaine \"Lissa\" qui va bouleverser leur équilibre.', 2011, 'GELONGAL', 'images/series/26.jpg', 'Terminé', 'https://youtube.com/playlist?list=PL5P4e8URdQnx_zhp7LrMTkTcnoLLNThpx&si=yiHLThHGFKq8Rxgk', 'Cathy Chimère Diaw, Boubacar Diallo, Mame Diarra Thiam, Pape Diop Amadou, Beraud Ndao, Moussa Seck, Omar Traoré, Inna Jawara, Astou Badji, Alimatou Ndoye, Ndèye Anta Fall'),
(27, 'Dinama Nekh', 'Dinama Nekh raconte l\'histoire de deux femmes, Mounass et Daro, célibataires et sans emploi, qui vivent grâce au \"mbarane\".', 2013, 'Leuz Media', 'images/series/27.jpg', 'Terminé', 'https://youtube.com/playlist?list=PL5VQ5wJAndTv-ohwNtd4u2DiYdX5iA6rW&si=7lqdQtsjo52Xi6gu', 'Maïmouna Hann, Daro Thiam, Fodé Sarr, Alioune Mbaye, Mamadou Ndiaye, '),
(28, 'Yaay 2.0', 'À Dakar, Sandiéry n’arrive pas à faire d’enfant, une situation qu’il cache à sa femme et à ses proches. Quand sa femme Kala lui annonce qu’elle est enceinte, il tombe des nues, car il sait qu’il n’est pas le père de l’enfant ! À 35 ans Dibor, directrice commerciale décide de faire un enfant toute seule. Elle sait que le mariage ne sera pas pour elle, cependant elle refuse l’idée de devoir dire non à la maternité.', 2022, 'Kalista Production', 'images/series/28.jpg', 'En cours', 'https://youtube.com/playlist?list=PLLktqjECoGNzjTAIR7Gdqe6UFwNYvF7zV&si=AfFd1awun0iZmYHe', 'Jamila Mansaly, Aïda Diaw, Fatimata Ly, Anna Guèye, Liliane Coulibaly, Oumy Khairy Sané, Roger Sallah'),
(29, 'Hair Lover', '« Hair lover » est avant tout une histoire d\'acceptation de soi. Qu\'ils soient frisés, crépus, défrisés, cassants, cette série nous rappelle que nos cheveux sont beaux et ont juste besoin d\'un peu d\'amour.', 2023, 'Kalista Production', 'images/series/29.jpg', 'En cours', 'https://youtube.com/playlist?list=PLLktqjECoGNyeUSXAdmsJnBmEsMuinj4E&si=RullzdVMqWKPFdZ9', 'Constance Thioub, Linguère Fall, Abdou Basse Dia, Ousmane Diop, Merry Bèye'),
(30, 'Salma, entre feu et passion', 'Salma met en lumière, le combat d\'une femme moderne, généreuse, pour vaincre tous les préjugés de la société sénégalaise, et pour gagner, par ses qualités intrinsèques et par sa détermination sans faille, sa place au soleil.', 2023, 'Invictus', 'images/series/30.jpg', 'En cours', 'https://youtube.com/playlist?list=PLrrUlfhlfM6QYt9z4_g4dPLE9ea2r22NE&si=hJwL8PqHbdw3LSc1', 'Souleymane Sèye Ndiaye, Aïcha Ba Diallo, Amadou Racine Niang, Angelique Mendes, Toutou Diarra, Moustapha Diop, Bachir Diaw, Marieme Fall, Emile Edmond Faye'),
(31, 'Dérapages', 'Au sommet de sa belle carrière professionnelle, Aby 32ans, se marie avec Bachir 25 ans, un séducteur en série qui adore se faire entretenir par les femmes. Elle croit vivre le vrai amour quand sa vie dérape dans une descente aux enfers, elle découvre la double vie de son mari.', 2019, 'BuzzStudios', 'images/series/31.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLEyRzdsKlBam1GnkGkjRB9qUsMvHwkyJL&si=R1Tnbi1-BKoTDgee', 'Kadia Sall, Peter Salinger, Awa Camara, Banel Camara, Khadimou Rassoul Diongue, Fatima Sène, Jeanne Aïda Diouf '),
(32, 'Impuissants', 'IMPUISSANTS, c\'est l\'histoire de MAMA CLOTILDE MADJIGUENE SARR. Jeune femme née d\'un mariage mixte, elle pratique timidement les deux religions au sein de sa famille. Sa beauté fait d\'elle une cible. Un professeur véreux profite de sa jeunesse et l\'abandonne après une grossesse.', 2023, 'Even Prod', 'images/series/32.jpg', 'Terminé', 'https://youtube.com/playlist?list=PLPgAk0OTvFp_wxY_usMGt1kH4_eaAWJFM&si=y4hEuKJKnapr2QbZ', 'Ndèye Barry, Mohamadou Mbengue, Cheikh Babou Gaye, Moussa Lamine Dieng, Makhtar Fall, César Sow, Assane Ndiaye Guèye, Fatou Dame Mbao'),
(33, 'Promesses', 'Dans un triangle amoureux, il y a toujours un perdant à la fin. Omar a choisi de refouler ses sentiments envers Neyla pour préserver son amitié avec Kader qui de son côté, choisira l\'amour. Le cœur brisé, Omar fera un choix qui le conduira à la mort, et emplira Neyla de culpabilité.', 2024, 'Marodi TV', 'images/series/33.jpg', 'En cours', 'https://youtube.com/playlist?list=PLg7NjHK9t-vu75Yl68P8AT8nDeZwk1rvt&si=UKCepeMzKojvra9X', 'Amy Lucia Diop, Arfang Sané, Pa Assane Thiam, Mame Aby Bèye, Alioune Sy');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
