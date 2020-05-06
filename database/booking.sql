#
# TABLE STRUCTURE FOR: acc_account_name
#

DROP TABLE IF EXISTS `acc_account_name`;

CREATE TABLE `acc_account_name` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES ('1', 'Income Account', '1');


#
# TABLE STRUCTURE FOR: acn_account_transaction
#

DROP TABLE IF EXISTS `acn_account_transaction`;

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `document_pic` text DEFAULT NULL,
  `create_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `document_pic`, `create_by_id`) VALUES ('1', '1', 'Maintenance and Upgrade', '5000', NULL, '1');
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `document_pic`, `create_by_id`) VALUES ('2', '3', 'Trip Id-1 Ticket No-001,', '350', NULL, '1');


#
# TABLE STRUCTURE FOR: agent_info
#

DROP TABLE IF EXISTS `agent_info`;

CREATE TABLE `agent_info` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_first_name` varchar(30) DEFAULT NULL,
  `agent_second_name` varchar(150) DEFAULT NULL,
  `agent_company_name` varchar(150) DEFAULT NULL,
  `agent_document_id` varchar(150) DEFAULT NULL,
  `agent_pic_document` varchar(255) DEFAULT NULL,
  `agent_picture` varchar(255) DEFAULT NULL,
  `agent_phone` varchar(150) DEFAULT NULL,
  `agent_mobile` varchar(150) DEFAULT NULL,
  `agent_email` varchar(150) DEFAULT NULL,
  `agent_address_line_1` varchar(150) DEFAULT NULL,
  `agent_address_line_2` varchar(150) DEFAULT NULL,
  `agent_address_city` varchar(150) DEFAULT NULL,
  `agent_address_zip_code` varchar(150) DEFAULT NULL,
  `agent_country` varchar(150) DEFAULT NULL,
  `agent_commission` float NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: agent_ledger
#

DROP TABLE IF EXISTS `agent_ledger`;

CREATE TABLE `agent_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `booking_id` varchar(30) NOT NULL,
  `debit` float NOT NULL DEFAULT 0,
  `credit` float NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `commission_rate` float NOT NULL DEFAULT 0,
  `total_price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: bank_info
#

DROP TABLE IF EXISTS `bank_info`;

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(200) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES ('1', 'Landbank', 'Juan Dela Cruz', '4901 2104 1299 2140');


#
# TABLE STRUCTURE FOR: bank_transaction
#

DROP TABLE IF EXISTS `bank_transaction`;

CREATE TABLE `bank_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_name` varchar(200) DEFAULT NULL,
  `booking_id` varchar(50) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `refund` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `b_account_no` varchar(50) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: booking_downtime
#

DROP TABLE IF EXISTS `booking_downtime`;

CREATE TABLE `booking_downtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(50) NOT NULL,
  `downtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `booking_downtime` (`id`, `reg_no`, `downtime`) VALUES ('1', '', '3');


#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`) VALUES ('1', 'smtp', 'mail.google.com', '465', 'yougmail@gmail.com', '1234', 'html');


#
# TABLE STRUCTURE FOR: employee_history
#

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `is_assign` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES ('1', 'Juan', 'Dela Cruz', 'Assistant Driver', '09123456789', '', '', '', '', '', '', '', '', '', '', NULL, '0');
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES ('2', 'John', 'Doe', 'Driver', '09123456789', '', '', '', '', '', '', '', '', '', '', NULL, '1');
INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES ('3', 'John', 'Dela Cruz', 'Driver', '09123456789', '', '', NULL, '', '', NULL, '', '', '', '', NULL, '1');


#
# TABLE STRUCTURE FOR: employee_type
#

DROP TABLE IF EXISTS `employee_type`;

CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES ('1', 'Driver', 'Captain', NULL);
INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES ('6', 'Assistant Driver', 'Assistant Captain', NULL);


#
# TABLE STRUCTURE FOR: enquiry
#

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('1', 'juan@yahoo.com', '09509342323', 'Juan Dela Paz', 'Refund', '1', NULL, NULL, '1', '2020-03-23 09:18:41', '1');


#
# TABLE STRUCTURE FOR: fit_fitness
#

DROP TABLE IF EXISTS `fit_fitness`;

CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fitness_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fleet_facilities
#

DROP TABLE IF EXISTS `fleet_facilities`;

CREATE TABLE `fleet_facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('3', 'Airconditioned', '', '1');
INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES ('4', 'Non-airconditioned', '', '1');


#
# TABLE STRUCTURE FOR: fleet_registration
#

DROP TABLE IF EXISTS `fleet_registration`;

CREATE TABLE `fleet_registration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_assign` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('1', '000001', '1', '000001', '000001', '000001', 'Star Ferry', '', '', '0', '1', '1');
INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES ('2', '000002', '1', '000002', '000002', '000002', 'Star Ferry', '', '', '0', '1', '1');


#
# TABLE STRUCTURE FOR: fleet_type
#

DROP TABLE IF EXISTS `fleet_type`;

CREATE TABLE `fleet_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `lastseat` varchar(30) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_numbers` varchar(255) NOT NULL,
  `fleet_facilities` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('1', 'EXECUTIVE TICKET', '2-2', '0', '48', '001 , 002 , 003 , 004 , 005 , 006 , 007 , 009 , 010 , 011 , 012 , 013 , 014 , 014 , 015 , 016 , 017 , 018 , 019 , 020 , 021 , 022 , 023 , 024, 025 , 026 , 027 , 028 , 029 , 030 , 031 , 032 , 033 , 034 , 035 , 036 , 037 , 038 , 039 , 040 , 041 , 042 , 043 ', 'Airconditioned', '1');
INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES ('2', 'ECONOMY TICKET', '2-2', '0', '12', '001 , 002 , 003 , 004 , 005 , 006 , 007 , 008 , 009 , 010 , 011 , 012 , ', 'Non-airconditioned', '1');


#
# TABLE STRUCTURE FOR: ftn_fitness_period
#

DROP TABLE IF EXISTS `ftn_fitness_period`;

CREATE TABLE `ftn_fitness_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: how_to_use
#

DROP TABLE IF EXISTS `how_to_use`;

CREATE TABLE `how_to_use` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `how_to_use` (`id`, `description`) VALUES ('1', '<p>How to use instructions...</p>');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `french` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('1', 'login', 'Login', 'Se connecter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('2', 'email', 'Email', 'Email ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('3', 'password', 'Password', 'Mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('4', 'reset', 'Reset', 'Reinitialiser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('5', 'dashboard', 'Dashboard', 'Tableau de bord');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('6', 'home', 'HOME', 'Acceuil ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('7', 'profile', 'Profile', 'Profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('8', 'profile_setting', 'Profile Setting', 'Reglage du profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('9', 'firstname', 'First Name', 'Nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('10', 'lastname', 'Last Name', 'Prénom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('11', 'about', 'About', 'A propos');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('12', 'preview', 'Preview', 'Visualiser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('13', 'image', 'Image', 'Image');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('14', 'save', 'Save', 'Sauvegarder');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('15', 'upload_successfully', 'Upload Successfully!', 'Mise à jour reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('16', 'user_added_successfully', 'User Added Successfully!', 'Utilisateur ajouté avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('17', 'please_try_again', 'Please Try Again...', 'SVP Essayez encore');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('18', 'inbox_message', 'Inbox Messages', 'Boite de reception message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('19', 'sent_message', 'Sent Message', 'Envoyer un message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('20', 'message_details', 'Message Details', 'Détails du message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('21', 'new_message', 'New Message', 'Nouveau message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('22', 'receiver_name', 'Receiver Name', 'Nom du recepteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('23', 'sender_name', 'Sender Name', 'Nom de l\'expediteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('24', 'subject', 'Subject', 'Sujet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('25', 'message', 'Message', 'Message');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('26', 'message_sent', 'Message Sent!', 'Message envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('27', 'ip_address', 'IP Address', 'Adresse IP');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('28', 'last_login', 'Last Login', 'Dernière connexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('29', 'last_logout', 'Last Logout', 'Dernière déconnexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('30', 'status', 'Status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('31', 'delete_successfully', 'Delete Successfully!', 'Suppression réussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('32', 'send', 'Send', 'Envoyer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('33', 'date', 'Date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('34', 'action', 'Action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('35', 'sl_no', 'SL No.', 'N° SL');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('36', 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure ?');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('37', 'application_setting', 'Application Setting', 'Reglages d\'application');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('38', 'application_title', 'Application Title', 'Titre d\'application');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('39', 'address', 'Address', 'Adresse');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('40', 'phone', 'Phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('41', 'favicon', 'Favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('42', 'logo', 'Logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('43', 'language', 'Language', 'Langue');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('44', 'left_to_right', 'Left To Right', 'Gauche vers droite');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('45', 'right_to_left', 'Right To Left', 'Droite vers la gauche');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('46', 'footer_text', 'Footer Text', 'Texte du footer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('47', 'site_align', 'Application Alignment', 'Aligner le site');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('48', 'welcome_back', 'Welcome Back!', 'Bienvenue à nouveau');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('49', 'please_contact_with_admin', 'Please Contact With Admin', 'Veuillez contacter l\'administrateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('50', 'incorrect_email_or_password', 'Incorrect Email/Password', 'Mot de passe ou Email incorrect');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('51', 'select_option', 'Select Option', 'Option de selection');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('52', 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Reglage FTP');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('53', 'hostname', 'Host Name', 'Hostname');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('54', 'username', 'User Name', 'Nom d\'utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('55', 'ftp_port', 'FTP Port', 'Port FTP');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('56', 'ftp_debug', 'FTP Debug', 'Debogage FTP ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('57', 'project_root', 'Project Root', 'Racine du projet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('58', 'update_successfully', 'Update Successfully', 'Mise à jour reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('59', 'save_successfully', 'Save Successfully!', 'Sauvegarde réussie');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('61', 'internet_connection', 'Internet Connection', 'Connexion internet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('62', 'ok', 'Ok', 'Ok');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('63', 'not_available', 'Not Available', 'Indisponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('64', 'available', 'Available', 'Disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('65', 'outgoing_file', 'Outgoing File', 'Fichier sortant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('66', 'incoming_file', 'Incoming File', 'Fichier entrant ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('67', 'data_synchronize', 'Data Synchronize', 'Synchroniser les données');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('68', 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Impossible de charger les données veuillez vérifier les configurations');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('69', 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Veuillez configurer les paramètres de synchronisation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('70', 'download_successfully', 'Download Successfully', 'Téléchargement réussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('71', 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Téléchargement impossible, veuillez vérifier votre connexion internet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('72', 'data_import_first', 'Data Import First', 'Importer d\'abord les données');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('73', 'data_import_successfully', 'Data Import Successfully!', 'Import de données réussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('74', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Impossible d\'importer les données, veuillez vérifier les configurations');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('75', 'download_data_from_server', 'Download Data from Server', 'Télécharger les données du serveur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('76', 'data_import_to_database', 'Data Import To Database', 'Import de données dans la base de données');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('77', 'data_upload_to_server', 'Data Upload to Server', 'Charger les données dans le seveur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('78', 'please_wait', 'Please Wait...', 'Veuillez patienter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('79', 'ooops_something_went_wrong', ' Ooops something went wrong...', 'Oops, quelque chose a mal fonctionné');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('80', 'module_permission_list', 'Module Permission List', 'Liste de permission du module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('81', 'user_permission', 'User Permission', 'Permission utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('82', 'add_module_permission', 'Add Module Permission', 'Ajouter module de permission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('83', 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permission du module ajoutée avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('84', 'update_module_permission', 'Update Module Permission', 'Mettre à jour le module de permission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('85', 'download', 'Download', 'Télécharger');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('86', 'module_name', 'Module Name', 'Nom du module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('87', 'create', 'Create', 'Créer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('88', 'read', 'Read', 'Lu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('89', 'update', 'Update', 'Mettre à jour');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('90', 'delete', 'Delete', 'Supprimer ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('91', 'module_list', 'Module List', 'Liste de module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('92', 'add_module', 'Add Module', 'Ajouter module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('93', 'directory', 'Module Direcotory', 'Repertoire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('94', 'description', 'Description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('95', 'image_upload_successfully', 'Image Upload Successfully!', 'Image mis à jour avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('96', 'module_added_successfully', 'Module Added Successfully', 'Module ajouté avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('97', 'inactive', 'Inactive', 'Inactif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('98', 'active', 'Active', 'Actif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('99', 'user_list', 'User List', 'Liste d\'utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('100', 'see_all_message', 'See All Messages', 'Voir tous les messages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('101', 'setting', 'Setting', 'Reglages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('102', 'logout', 'LOGOUT', 'Déconnexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('103', 'admin', 'Admin', 'Administrateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('104', 'add_user', 'Add User', 'Ajouter un utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('105', 'user', 'User', 'Utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('106', 'module', 'Module', 'Module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('107', 'new', 'New', 'Nouveau');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('108', 'inbox', 'Inbox', 'Boite de reception');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('109', 'sent', 'Sent', 'Envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('110', 'synchronize', 'Synchronize', 'Synchroniser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('111', 'data_synchronizer', 'Data Synchronizer', 'Synchronisation de données');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('112', 'module_permission', 'Module Permission', 'Permission du module');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('113', 'backup_now', 'Backup Now!', 'Sauvegarder maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('114', 'restore_now', 'Restore Now!', 'Restaurer maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('115', 'backup_and_restore', 'Data Backup', 'Suavegarde et restauration');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('116', 'captcha', 'Captcha Word', 'Captcha');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('117', 'database_backup', 'Database Backup', 'Sauvegarde base de donnée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('118', 'restore_successfully', 'Restore Successfully', 'Restauration réussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('119', 'backup_successfully', 'Backup Successfully', 'Sauvegarde réussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('120', 'filename', 'File Name', ' Nom du fichier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('121', 'file_information', 'File Information', 'Info du fichier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('122', 'size', 'Size', 'Taille');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('123', 'backup_date', 'Backup Date', 'Date de sauvegarde');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('124', 'overwrite', 'Overwrite', 'Ecraser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('125', 'invalid_file', 'Invalid File!', 'Fichier invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('126', 'invalid_module', 'Invalid Module', 'Module invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('127', 'remove_successfully', 'Remove Successfully!', 'Retiré avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('128', 'install', 'Install', 'Installer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('129', 'uninstall', 'Uninstall', 'Désinstaller');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('130', 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'Tables indisponibles dans les bases de données');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('131', 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Pas de tickets enregistrés dans les configurations');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('132', 'enquiry', 'Enquiry', 'Requetes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('133', 'read_unread', 'Read/Unread', 'Lu et non lu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('134', 'enquiry_information', 'Enquiry Information', 'info de requete');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('135', 'user_agent', 'User Agent', 'Utilisateur agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('136', 'checked_by', 'Checked By', 'Verifié par');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('137', 'new_enquiry', 'New Enquiry', 'Nouvelle requête');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('138', 'fleet', 'Fleet Management', 'Flotte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('139', 'fleet_type', 'Fleet Type', 'Type de vehicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('140', 'add', 'Add', 'Ajouter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('141', 'list', 'List', 'Liste');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('142', 'fleet_facilities', 'Fleet Facilities', 'Facilités du véhicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('143', 'fleet_registration', 'Vehicles', 'Enregistrement du véhicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('144', 'reg_no', 'Registration No.', 'N° de reg');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('145', 'model_no', 'Model No.', 'N° du modèle ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('146', 'engine_no', 'Engine No.', 'N° du moteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('147', 'chasis_no', 'Chasis No.', 'N° de chassis');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('148', 'total_seat', 'Total Seat', 'Sièges total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('149', 'seat_numbers', 'Seat Number', 'Numéro des sièges');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('150', 'owner', 'Owner', 'Auteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('151', 'company', 'Company Name', 'Societé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('152', 'trip', 'Trip Management', 'Voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('153', 'location', 'Destination', 'Localication');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('154', 'route', 'Route', 'Ligne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('155', 'assign', 'Assign', 'Assigner');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('156', 'close', 'Close Trip', 'Fermer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('157', 'location_name', 'Destination Name', 'Nom de la localisation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('158', 'google_map', 'Google Map', 'Google maps');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('159', 'start_point', 'Start Point', 'Point de départ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('160', 'end_point', 'End Point', 'Point d\'arrivé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('161', 'route_name', 'Route Name', 'Nom de la ligne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('162', 'distance', 'Distance', 'Distance');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('163', 'approximate_time', 'Approximate Time', 'Temps approximatif');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('164', 'stoppage_points', 'Stoppage Points', 'Points d\'arrets');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('165', 'fleet_registration_no', 'Fleet Registration No.', 'N° d\'enregistrement du véhicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('166', 'start_date', 'Start Date', 'Date de début');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('167', 'end_date', 'End Date', 'Date de fin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('168', 'driver_name', 'Driver Name', 'Nom du chauffeur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('169', 'assistants_ids', 'Assistants', 'ID d\'assignations');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('170', 'sold_ticket', 'Sold Ticket', 'Tickets vendus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('171', 'total_income', 'Total Income', 'Revenu total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('172', 'total_expense', 'Total Expense', 'Total dépenses');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('173', 'total_fuel', 'Total Fuel', 'Total Fuel');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('174', 'trip_comment', 'Trip Comment', 'Commentaire du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('175', 'closed_by', 'Closed by', 'Fermé par ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('176', 'ticket', 'Ticket Management', 'Ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('177', 'passenger', 'Passenger', 'Passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('178', 'middle_name', 'Middle Name', 'Autre nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('179', 'date_of_birth', 'Date of Birth', 'Date de naissance');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('180', 'passenger_id', 'Passenger ID.', 'ID du passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('181', 'address_line_1', 'Address Line 1', 'Adresse 1');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('182', 'address_line_2', 'Address Line 2', 'Adresse 1');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('184', 'zip_code', 'Zip Code', 'Code zip');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('186', 'name', 'Name', 'Nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('187', 'ac_available', 'AC available', 'Clim disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('188', 'trip_id', 'Trip ID.', 'ID du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('189', 'book', 'Book', 'Reserver');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('190', 'booking_id', 'Booking ID.', 'ID de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('191', 'available_seats', 'Available Seats', 'Sièges disponibles');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('192', 'select_seats', 'Select Seats', 'Selectionner les sièges');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('193', 'time', 'Time', 'Temps');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('194', 'offer_code', 'Offer Code', 'Code de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('195', 'price', 'Price', 'Prix');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('196', 'discount', 'Discount', 'Remise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('197', 'request_facilities', 'Request Facilities', 'Requêtes de facilités');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('198', 'pickup_location', 'Pickup Location', 'Localisation de depart');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('199', 'drop_location', 'Drop Location', 'Destination');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('200', 'amount', 'Amount', 'Montant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('201', 'invalid_passenger_id', 'Invalid Passenger ID', 'ID du passager invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('202', 'invalid_input', 'Invalid Input', 'Entrée invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('203', 'booking_date', 'Booking Date', 'Date de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('204', 'cancelation_fees', 'Cancelation Fees', 'Frais d\'annulation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('205', 'causes', 'Causes', 'Causes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('206', 'comment', 'Comment', 'Commentaires');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('207', 'refund', 'Refund', 'Remboursement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('208', 'refund_by', 'Refund by', 'Remboursé par');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('209', 'feedback', 'Feedback', 'Feedback');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('210', 'rating', 'Rating', 'Notes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('211', 'blood_group', 'Blood Group', 'Groupe sanguin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('212', 'religion', 'Religion', 'Religion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('219', 'details', 'Details', 'Details');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('220', 'type_name', 'Type Name', 'Nom du type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('221', 'view_details', 'View Details', 'Visualiser les détails');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('222', 'document_pic', 'Document Picture', 'Image du document');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('223', 'fitness_list', 'Fitness List', 'Liste fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('226', 'fitness_name', 'Fitness Name', 'Nom fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('227', 'fitness_description', 'Description', 'Description fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('228', 'successfully_updated', 'Your Data Successfully Updated', 'Mise à jour reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('229', 'fitness_period', 'Fitness Period List', 'Période fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('230', 'fitness_id', 'Fitness Name', 'ID fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('231', 'vehicle_id', 'Vehicles No', 'ID vehicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('234', 'start_milage', 'Start Milage', 'Commençer le kilometrage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('235', 'end_milage', 'End Milage', 'Fin du KM');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('236', 'agent', 'Agent', 'Agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('237', 'agent_first_name', 'First Name', 'Nom Agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('238', 'agent_second_name', 'LastName', 'Autre Nom de l\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('239', 'agent_company_name', 'Company Name', 'Non Société d\'agent ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('240', 'agent_document_id', 'Document ID', 'ID Document agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('241', 'agent_pic_document', 'Document File', 'Doc photo agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('242', 'agent_phone', 'Phone', 'Téléphone agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('243', 'agent_mobile', 'Mobile No', 'Mobile Agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('244', 'agent_email', 'Email', 'Email Agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('245', 'agent_address_line_1', 'Address Line 1', 'Adresse d\'agent 1');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('246', 'agent_address_line_2', 'Address Line 2', 'Adresse d\'agent 2');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('247', 'agent_address_city', 'City', 'Adresse ville d\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('248', 'agent_address_zip_code', 'ZIP', 'Code zip agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('249', 'agent_country', 'Country', 'Pays d\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('252', 'sl', 'SL', 'sl');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('253', 'route_id', 'Route Name', 'ID de ligne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('254', 'vehicle_type_id', 'Vehicle Type', 'ID type de véhicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('255', 'group_price_per_person', 'Group Price Per Person', 'Groupe de prix par personne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('256', 'group_size', 'Group Members', 'Taille du groupe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('257', 'successfully_saved', 'Your Data Successfully Saved', 'Sauvegardé avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('258', 'account', 'Account', 'Compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('259', 'account_name', 'Account Name', 'Nom du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('260', 'account_type', 'Account Type', 'Type de compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('261', 'account_transaction', 'Account Transaction', 'Transaction du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('262', 'account_id', 'Account Name', 'ID du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('263', 'transaction_description', 'Transaction Details', 'Description de la transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('265', 'pass_book_id', 'Passenger ID', 'ID pass de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('267', 'payment_id', 'Payment ID', 'ID de paiement ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('268', 'create_by_id', 'Created By', 'Créer l\'ID par');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('269', 'offer', 'Offer', 'Offres');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('270', 'offer_name', 'Offer Name', 'Nom de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('271', 'offer_start_date', 'Offer Start Date', 'Date de debut de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('272', 'offer_end_date', 'Offer Last Date', 'Datae de fin de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('274', 'offer_discount', 'Discount', 'Remise de l\'offre ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('275', 'offer_terms', 'Offer Terms', 'Termes de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('276', 'offer_route_id', 'Route Name', 'ID offre de voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('277', 'offer_number', 'Offer Number', 'N° de l\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('280', 'seat_number', 'Seat No', 'N° du siège ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('281', 'available_seat', 'Available Seat', 'Siège disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('282', 'owner_name', 'Owner Name', 'Nom de l\'auteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('283', 'agent_picture', 'Picture', 'Photo Agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('284', 'account_add', 'Add Account', 'Ajouter un compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('285', 'add_agent', 'Add Agent', 'Ajouter agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('286', 'hr', 'Human Resource', 'Ressource Humaine');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('287', 'create_hr', 'Add Employee', 'Créer l\'heure');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('288', 'serial', 'Sl', 'Serial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('289', 'position', 'Position', 'Position');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('290', 'phone_no', 'Phone No', 'N° de téléphone');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('291', 'email_no', 'Email', 'N° Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('292', 'picture', 'Picture', 'Photo');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('293', 'first_name', 'First Name', 'Nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('294', 'second_name', 'Last Name', 'Deuxième nom');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('295', 'document_id', 'Documet Id', 'ID document');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('298', 'country', 'Country', 'Pays');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('299', 'city', 'City', 'Ville ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('300', 'zip', 'Zip ', 'Zip ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('393', 'add_passenger', 'Add Passenger', 'Ajouter un passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('394', 'search_tiket', 'Search Ticket', 'Rechercher le ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('395', 'slogan', 'Slogan', 'Slogan');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('396', 'website', 'Website', 'Site web');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('397', 'submit', 'Submit', 'Envoyer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('398', 'customer_service', 'Customer Service', 'Service client');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('399', 'submit_successfully', 'Submit Successfully!', 'Envoi reussi');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('400', 'add_to_website', 'Add to Website', 'Ajouter au site');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('401', 'our_customers_say', 'Our Customers Say', 'Ce que disent nos clients');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('402', 'website_status', 'Website Status', 'Status site web');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('403', 'title', 'Title', 'Titre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('405', 'total_fleet', 'Total Fleet', 'Total flotte véhicules');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('406', 'total_passenger', 'Total Passenger', 'Total passagers');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('407', 'todays_trip', 'Today\'s Trip', 'Voyage d\'aujourd\'hui');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('408', 'seats_available', 'Seats Available', 'Sièges disponibles');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('409', 'no_trip_avaiable', 'No trip avaiable', 'Aucun voyage disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('410', 'booking', 'Booking', 'Reservations');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('411', 'something_went_worng', 'Something went worng!', 'Quelque chose a mal fonctionné');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('412', 'paypal_email', 'Paypal Email', 'Email Paypal');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('413', 'currency', 'Currency', 'Dévise');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('414', 'reports', 'Reports', 'Rapports');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('415', 'search', 'Search', 'Rechercher');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('417', 'go', 'Go', 'Lancer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('418', 'all', 'All', 'Tout');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('419', 'filter', 'Filter', 'Filter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('420', 'last_year_progress', 'Last Year Progress', 'Progrès l\'an dernier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('421', 'download_document', 'Download Document', 'Télécharger le document');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('422', 'mobile', 'Mobile No.', 'Mobile ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('424', 'account_list', 'Account List', 'Liste de comptes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('425', 'add_income', 'Add Income', 'Ajouter une entrée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('426', 'add_expense', 'Add Expense', 'Ajouter une dépense');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('427', 'agent_list', 'Agent List', 'Liste d\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('428', 'add_fitness', 'Add Fitness', 'Ajouter fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('429', 'fitness', 'Fitness', 'Fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('430', 'add_fitness_period', 'Add Fitness Period', 'Ajouter Période fitness');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('431', 'employee_type', 'Employee Type', 'Type d\'employé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('432', 'employee_list', 'Employee List', 'Liste d\'employé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('433', 'add_offer', 'Add Offer', 'Ajouter une offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('434', 'offer_list', 'Offer List', 'Liste d\'offre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('435', 'add_price', 'Add Price', 'Ajouter un prix');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('436', 'price_list', 'Price List', 'Liste de prix');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('437', 'layout', 'Layout', 'Aperçu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('438', 'last_seat_availabe', 'Last Seat Available', 'Dernier siège disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('439', 'paypal_transaction', 'Paypal Transaction', 'Transaction paypal');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('440', 'enable', 'Enable', 'Activer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('441', 'disable', 'Disable', 'Desactiver');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('442', 'payment_gateway', 'Payment Gateway', 'Passerelle de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('443', 'payment_type', 'Payment Type', 'Type de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('444', 'payment_status', 'Payment Status', 'Status de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('445', 'downtime', 'Down Time', 'Temps hors service');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('446', 'select_bus', 'Select Bus', 'Selectionner le bus');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('447', 'user_info', 'Passenger Information', 'Informations d\'utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('448', 'personal_info', 'Personal Information', 'Informations personnelles');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('449', 'booking_info', 'Booking Information', 'Info de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('450', 'update_your_profile', 'Edit your Profile', 'Mettre à jour votre profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('451', 'email_configue', 'Email Configuration', 'Reglage Email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('452', 'protocol', 'Protocol', 'Protocol');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('453', 'smtp_host', 'SMTP Host', 'host smtp');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('454', 'smtp_port', 'SMTP Port', 'port smtp');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('455', 'smtp_pass', 'SMTP Password', 'pass smtp');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('456', 'mailtype', 'Mail Type', 'Type de mail');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('457', 'smtp_user', 'SMTP User', 'utilisateur smtp');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('458', 'html', 'Html', 'HTML');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('459', 'text', 'Text', 'Texte ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('460', 'email_send_to_passenger', ' Email Sent Sucessfully', 'Mail envoyé au passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('461', 'bank', 'Bank Information', 'Banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('462', 'instruction', 'Instruction', 'Instruction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('463', 'account_details', 'Account Details', 'Details du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('464', 'bank_logo', 'Bank Logo', 'Logo banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('465', 'bank_name', 'Bank Name', 'Nom de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('466', 'bank_trans', 'Bank', 'Transation banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('467', 'transaction_successfully_send', 'Your Information successfully Send', 'Transaction envoyé avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('468', 'confirmation', 'Confirmation', 'Confirmation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('469', 'account_no', 'Account No', 'N° du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('470', 'transaction_no', 'Transaction No', 'N° de la transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('471', 'paypal', 'Paypal', 'Paypal');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('472', 'cash', 'Cash', 'Cash');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('473', 'paypal_checkout', 'Paypal Checkout', 'Checkout Paypal');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('474', 'confirm_banking', 'Confirm Banking', 'Confirmation bancaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('475', 'payment_information', 'Payment Information', 'Informaition de paiement ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('476', 'email_gritting', 'Congratulation Mr.', 'Email personalisé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('477', 'email_ticket_idinfo', 'Your Purchase Ticket No-', 'ID info email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('478', 'ticket_confirmation', 'Unpaid Bank Booking List', 'Confirmation ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('479', 'deny', 'Deny', 'Rejeter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('480', 'confirm', 'CONFIRM', 'Confirmer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('481', 'note', 'Note', 'Note');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('482', 'accournt_no', 'Account Number', 'N° Compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('483', 'payer_name', 'Payer Name', 'Nom du payeur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('484', 'accournt_non', 'Account Number', 'N° Compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('485', 'confirm_booking', 'Confirm Booking', 'Confirmer la réservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('486', 'account_num', 'Account Number', 'Numéro du compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('487', 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image', 'Logo invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('488', 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image', 'Favicon invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('489', 'print_ticket', 'Print Ticket', 'Imprimmer le ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('490', 'cancel_ticket', 'Cancel Ticket', 'Annuler le ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('491', 'email_not_send', 'Email Not Send', 'Email non envoyé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('492', 'timezone', 'Time Zone', 'Fuseau horaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('493', 'menu_permission_form', 'Menu Permission Form', 'Position du formulaire de menu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('494', 'permission_setup', 'Permission setup', 'Reglage de permission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('495', 'menu_permission_list', 'Menu Permission List', 'Liste de permission menu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('496', 'add_fleet_type', 'Add Fleet Type', 'Ajouter type de flotte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('497', 'fleet_type_list', 'Fleet Type List', 'LIste type de véhicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('498', 'add_facilities', 'Add Facilities', 'Ajouter les facilités');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('499', 'facilities_list', 'Facilities List', 'Liste de facilités');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('500', 'add_registration', 'Add Vehicle', 'Ajouter une souscription');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('501', 'registration_list', 'Vehicle List', 'Liste d\'enregistrement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('502', 'refund_list', 'Refund List', 'Liste de remboursement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('503', 'add_refund', 'Add Refund', 'Ajouter un remboursement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('504', 'booking_list', 'Booking List', 'Liste de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('505', 'add_booking', 'Add Booking', 'Ajouter une réservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('506', 'passenger_list', 'Passenger List', 'Liste des passagers');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('507', 'assign_list', 'Assignment List', 'Liste d\'assignation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('508', 'close_list', 'Close List', 'Liste fermé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('509', 'add_assign', 'Assign Vehicle To Trip', 'Ajouter une assignation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('510', 'route_list', 'Route List', 'Liste de ligne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('511', 'add_route', 'Add Route', 'Ajouter une ligne');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('512', 'location_list', 'Destination List', 'Liste de localisation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('513', 'add_location', 'Add Destination', 'Ajouter localisation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('514', 'add_role', 'Add Role', 'Ajouter un role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('515', 'add_bank', 'Add Bank', 'Ajouter une banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('516', 'bank_list', 'Bank List', 'Liste de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('517', 'role_name', 'Role Name', 'Nom du role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('518', 'role_description', 'Role Description', 'Description du role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('519', 'role_list', 'Role List', 'Liste de role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('520', 'user_access_role', 'User Access Role', 'Role d\'utilisateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('521', 'role', 'Role', 'Role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('522', 'role_permission', 'Role Permission', 'Permission du role');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('523', 'web_setting', 'Web Setting', 'Reglages web');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('524', 'ticket_offer', 'Ticket Offer', 'Offre de tickets');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('525', 'shedules', 'Shedules', 'Horaires');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('526', 'add_shedule', 'Add Shedule', 'Ajouter un planning');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('527', 'shedule_list', 'Shedule LIst', 'Liste d\'horaires');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('528', 'shedule_time', 'Shedule Time', 'Temps de planning');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('529', 'travel_slogan', 'On the placess you\'ll go', 'Slogan du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('530', 'travel_sub_slogan', 'It is not down in any map; true place naver are.', 'Sous slogan du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('531', 'search_tour', 'Search Tours', 'Rechercher un voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('532', 'find_dream', 'Find your dream tour today!', 'Rechercher reve');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('533', 'find_now', 'Find now!', 'Rechercher maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('534', 'start', 'Start', 'Demarrer ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('535', 'end', 'End', 'Fin');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('536', 'paypal_payment_paynow', 'PAYPAL PAY NOW', 'Paiement paypal Payer maintenant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('537', 'passenger_name', 'Passenger Name', 'Nom du passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('538', 'facilities', 'Facilities', 'Facilités');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('539', 'seat_name', 'Seat Name', 'Nom du siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('540', 'adult', 'Adult', 'Adulte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('541', 'child', 'Child', 'Enfant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('542', 'special', 'Special', 'Special');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('543', 'grand_total', 'Grand Total', 'Grand Total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('544', 'book_for_one_hour', 'Book For One Hour', 'Reserver pour une heure');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('545', 'unpaid_cash_booking_list', 'Unpaid Cash Booking List', 'Liste des réservations non payés');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('546', 'bank_transaction', 'Bank Transaction', 'Transaction de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('547', 'payment_term_andcondition', 'Payment Terms & Conditions', 'Terms & conditions de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('548', 'add_terms', 'Add Terms', 'Ajouter les termes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('549', 'terms_list', 'Terms & Condition', 'Liste de termes');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('550', 'how_to_pay', 'How to Pay', 'Comment Payer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('551', 'terms_and_condition', 'Terms And Conditions', 'Termes et conditions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('552', 'nid', 'National ID', 'N° ID');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('553', 'add_trip', 'Create Trip', 'Ajouter un voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('554', 'trips', 'Trips', 'Voyages');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('555', 'trip_list', 'Trip LIst', 'Liste de voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('556', 'trip_title', 'Trip Title', 'Titre du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('557', 'types', 'Types', 'Types');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('558', 'assigns', 'Assign', 'Assignation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('559', 'see_all', 'See All', 'Voir tout');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('560', 'no_o_ticket', 'NO of Tickts', 'N° du ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('561', 'seats', 'Seat(s)', 'Sièges');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('562', 'prices', 'Price(s)', 'Prix');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('563', 'group_price', 'Group Price', 'Groupe de prix');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('564', 'total', 'Total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('565', 'passenger_details', 'Passenger Details', 'Details du passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('566', 'journey_details', 'Journey Details', 'Details du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('567', 'term_n_condition', 'Term & Condition', 'Termes & Conditions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('568', 'enter_login_info', 'Enter Your Login Info', 'Entrer les infos de connexion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('569', 'select_bank_name', 'Select Bank Name', 'Selectionner le nom de la banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('570', 'enter_transaction_id', 'Enter Transaction Id', 'Entrer ID de la transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('571', 'booked_seat', 'Booked Seat', 'Siège reservé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('572', 'selected_seat', 'Selected Seat', 'Sièges selectionnés');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('573', 'operator', 'Operator', 'Operateur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('574', 'fare', 'Fare', 'Flotte ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('575', 'arrival', 'Arrival', 'Arrivée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('576', 'departure', 'Departure', 'Départ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('577', 'duration', 'Duration', 'Durée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('578', 'no_of_ticket', 'No Of tickets', 'N° du ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('579', 'special_fare', 'Special Price', 'Tarif special');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('580', 'child_fare', 'Children Fare', 'Flotte pour enfant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('581', 'adult_fare', 'Adult Fare', 'Tarif Adulte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('582', 'ticket_information', 'Ticket Information', 'Information du ticket');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('583', 'brand_name', 'Brand Name', 'Nom de la marque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('584', 'children_seat', 'Children Seat', 'Sièges pour enfant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('585', 'special_seat', 'Special Seat', 'Siège spécial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('586', 'menu_item_list', 'Menu Item List', 'Liste d\'élément du menu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('587', 'parent_menu', 'Parent Menu', 'Menu parent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('588', 'page_url', 'Page Url', 'URL de la page');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('589', 'menu_title', 'Menu title', 'Titre du menu');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('590', 'ins_menu_for_application', 'Insert Menu for the application', 'Menu instruction pour application');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('591', 'yearly_progressbar', 'Yearly Progress Bar', 'Bar annuelle de progesssion');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('592', 'child_price', 'Child Price', 'Prix pour enfant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('593', 'adult_price', 'Adult Price', 'Prix adulte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('594', 'special_price', 'Special Price', 'Prix spécial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('595', 'how_to_use', 'HOW TO USE', 'Comment utiliser');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('596', 'bank_commission', 'Bank Commission', 'Commission de la banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('597', 'bank_charge', 'Bank Charge', 'Facturation de banque');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('598', 'type', 'Type', 'Type');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('599', 'amount_paid', 'Amount Paid', 'Montant payé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('600', 'txn_id', 'TXN ID', 'ID tax');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('601', 'item_number', 'Item Number', 'Numéro de l\'élément');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('602', 'paument_success_message', 'Your Payment Successfully Paid', 'Message de paiement avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('603', 'unpaid', 'Unpaid', 'Non payé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('604', 'paid', 'Paid', 'Payé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('605', 'trip_name', 'Trip Name', 'Nom du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('606', 'account_number', 'Account Number', 'Numéro de compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('607', 'owner_phone', 'Owner Phone No', 'Numéro de l\'auteur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('608', 'passenger_email', 'Passenger Email', 'Email du passager');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('609', 'child_no', 'Child', 'N° de l\'enfant');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('610', 'close_trip', 'Close Trip', 'Fermer le voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('611', 'agent_commission', 'Agent Commission', 'Commission agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('612', 'credit', 'Credit', 'Crédit');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('613', 'debit', 'Debit', 'Débiter');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('614', 'balance', 'Balance', 'Solde');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('615', 'agent_log', 'Agent Log', 'Blog agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('616', 'total_ticket', 'Total Ticket', 'Ticket total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('617', 'total_amount', 'Total Amount', 'Montant total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('618', 'total_commission', 'Total Commission', 'Commission total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('619', 'select_agent_name', 'Select Agent Name', 'Selectionner le nom de l\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('620', 'commission_amount', 'Commission Amout', 'Montant commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('621', 'total_price', 'Total Price', 'Prix total');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('622', 'commission_rate', 'Commission Rate', 'Taux de commission');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('623', 'ticket_sales', 'Ticket Sale', 'Ventes de tickets');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('624', 'vehicle', 'Vehicle', 'Vehicule');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('625', 'ticket_sales_report_for', 'Ticket Sales Report For', 'Rapport de vente de tickets pour');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('626', 'agent_report', 'Agent Report', 'Rapport agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('627', 'agent_ledger', 'Agent Ledger', 'Registre d\'agent');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('628', 'booking_details', 'Journey Details', 'Details de reservation');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('630', 'websites', 'Go to Frontend', 'Sites web');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('631', 'backup_and_download', 'Backup && Download', 'Sauvegarde et téléchargement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('632', 'distance_kmmile', '1 Km/Mile', 'Distance kilometrique');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('633', 'children', 'Children', 'Enfants');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('634', 'login_info', 'Login Information', 'Login Information');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('635', 'please_configure_your_mail', 'Please configure your mail.', 'Please configure your mail.');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('636', 'error', 'Error', 'Erreur');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('637', 'settings_not_found', 'No Setting Here', 'Aucun paramètre ici');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('638', 'location_not_found', 'Location Not Found', ' emplacement non trouvé');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('639', 'fleets_not_found', 'Fleets Not Found', 'flotte non trouvée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('640', 'image_not_found', 'Image Not Found', 'image non trouvée');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('641', 'no_trip_available', 'No Trip Available', 'Aucun voyage disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('642', 'required_field', 'Fields Are Required ', 'Les champs sont obligatoires');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('643', 'successfully_login', 'Successfully Loged In', 'connecté avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('644', 'no_data_found', 'No Data Found', 'Aucune donnée disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('645', 'registrantion', 'Registration', 'enregistrement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('646', 'forgot_password', 'Forgot Password', 'mot de passe oublié');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('647', 'register', 'Register', ' registre');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('648', 'location_details', 'Location Details', 'Détails de l\'emplacement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('649', 'journey_date', 'Journey Date', ' Date de voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('650', 'select_start_point', 'Select Start Point', 'Sélectionnez le point de départ');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('651', 'select_end_point', 'Select End Point', ' Sélectionnez le point final');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('652', 'select_fleet_type', 'Select Fleet Type', ' Sélectionnez le type de flotte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('653', 'total_seats', 'Total Seats', 'Nombre total de places');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('654', 'pickup_and_drop', 'Pickup and Drop', 'Pickup and Drop');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('655', 'select_pickup_location', 'Select Pickup Location', 'Sélectionnez l\'emplacement de ramassage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('656', 'select_drop_location', 'Select Drop Location', 'Sélectionnez un lieu de dépôt');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('657', 'tap_to_select_seat', 'Tap To Select Seat', ' Appuyez sur pour sélectionner un siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('658', 'seat_layout', 'Seat Layout', 'Disposition du siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('659', 'continue', 'Continue', 'continuer');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('660', 'full_name', 'Full Name', 'Nom complet');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('661', 'email_address', 'Email Address', ' Adresse électronique');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('662', 'journery_details', 'Journey Details', 'Détails du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('663', 'select_your_payment_method', 'Select Your Payment Method', 'Sélectionnez le mode de paiement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('664', 'bank_transfer', 'Bank Transfer', 'Virement bancaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('665', 'cash_payment', 'Cash Payment', 'Paiement en espèces');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('666', 'select_your_bank_first', 'Select Bank Name First', 'Sélectionnez le nom de la banque en premier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('667', 'transaction_id', 'Transaction Id', 'Identifiant de transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('668', 'select_journey_date', 'Select Journey Date', 'Sélectionnez la date du voyage');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('669', 'seat_details', 'Seat Details ', 'Détails du siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('670', 'seat_n', 'Seat Number', 'Numéro de siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('671', 'last_name', 'Last Name', 'Nom de famille');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('672', 'confirm_password', 'Confirm Password', 'Confirmez le mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('673', 'no_facilities_available', 'No facilities Available', 'Aucun équipement disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('674', 'must_put_email_pass', 'Must Put Email and Password', ' Doit mettre l\'email et le mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('675', 'havn_nt_acc', 'Have n\'t Account', 'Je n\'ai pas de compte');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('676', 'email_and_password_d_match', 'Email And Password doesn\'t Match', ' Email ou mot de passe ne correspond pas');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('677', 'must_put_email', 'Must Put Your Email', 'Doit mettre un email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('678', 'select_pickup_and_drop_location', 'Select Pickup and Drop Location', ' Sélectionnez le lieu de ramassage et de dépose');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('679', 'select_your_seat_properly', 'Select Your', 'Choisissez votre siège correctement');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('680', 'check_term_and_condition', 'Check Terms and Condition', 'Vérifier les termes et conditions');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('681', 'check_your_mail', 'Please Check Your Mail', 'Vérifier votre courrier');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('682', 'plz_check_your_seat', 'Please Check Your Seat', 'S\'il vous plaît vérifier votre siège');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('683', 'no_rout_available', 'No rout Available', 'Pas de déroute disponible');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('684', 'your_booking_complete', 'Your Booking Successfully Completed', 'Votre réservation effectuée avec succès');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('685', 'bank_booking_message', 'Check Bank Name,Transaction ID', 'Sélectionnez le nom de la banque, l\'identifiant de la transaction');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('686', 'seat_properly', 'Seat Properly', 'Bien assis');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('687', 'must_put_atlest_seat_num', 'You Must put Atleast 1 seat on adult/child/Special', 'Vous devez mettre au moins 1 siège sur adulte / enfant / spécial');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('688', 'paypal_payment', 'Paypal Payment', 'Paiement PayPal');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('689', 'bank_information', 'Bank Information', ' Information bancaire');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('690', 'change_select_end_point', '& Change select end point', '& Modifier le point d\'arrivée sélectionné');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('691', 'must_put_your_mail', 'You must put your email', 'Vous devez mettre votre email');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('692', 'invalid_email_address', 'Invalid Email Address', 'Adresse e-mail invalide');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('693', 'plz_check_your_mail_to_reset_passw', 'Please Check Your email to reset Password', 'Please Check Your email to reset Password');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('694', 'edit_profile', 'EDIT PROFILE', 'EDITER LE PROFIL');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('695', 'select_profile_image', 'Select Profile Image', 'Enregistrer l\'image de profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('696', 'save_profile', 'Save Profile', 'Enregistrer le profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('697', 'view_profile', 'View Profile', 'Voir le profil');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('698', 'developed_by_bdtask', 'Developed By BDTASK', ' Développé par BDTASK');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('699', 'use_new_password_to_update_password', 'Use New Password to Update Password', 'Utiliser un nouveau mot de passe pour mettre à jour le mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('700', 'pass_username_cant_be_empty', 'Password, First Name, Last Name can\'t empty. Use New password to update password , otherwise type old password', 'Le mot de passe, le prénom et le nom de famille ne peuvent pas être vides. Utilisez Nouveau mot de passe pour mettre à jour le mot de passe, sinon tapez ancien mot de passe');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('701', 'no', 'NO', 'NON');
INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES ('702', 'login_again', 'Data Save Successfully. Please Login Again', 'Sauvegarde des données avec succès. Veuillez vous reconnecter');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', 'Human Resource', 'Human Resource information module', 'application/modules/hr/assets/images/thumbnail.jpg', 'hr', '1');


#
# TABLE STRUCTURE FOR: module_permission
#

DROP TABLE IF EXISTS `module_permission`;

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ofr_offer
#

DROP TABLE IF EXISTS `ofr_offer`;

CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ofr_offer` (`offer_id`, `offer_name`, `offer_start_date`, `offer_end_date`, `offer_code`, `offer_discount`, `offer_terms`, `offer_route_id`, `offer_number`) VALUES ('1', 'Promo ', '2020-03-23', '2020-03-27', 'PROMO', '50', '', '1', '0');


#
# TABLE STRUCTURE FOR: payment_informations
#

DROP TABLE IF EXISTS `payment_informations`;

CREATE TABLE `payment_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `how_to_pay` text NOT NULL,
  `terms_and_condition` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `payment_informations` (`id`, `how_to_pay`, `terms_and_condition`) VALUES ('1', 'How to pay', 'BOARDING TIME\r\nPassenger must be on-board 1 hour before the scheduled departure. Passenger must present the TICKET which will be presented to a staff upon entering to the vessel. \r\n\r\nPAYMENT\r\n\r\nPassenger can pay their tickets to the designated ticketing offices. Passenger has 1hour allotment to pay their ticket upon booking online, and if they are failed to do so their ticket will be forfeited. \r\n\r\nTICKET VALIDITY\r\n\r\nTicket is valid for travel on the date, destination and via the RSL-operated vessel specified on the ticket. Any form of alterations made on the ticket is invalid.\r\n\r\nLOST TICKETS\r\n\r\n“NO TICKET, NO TRAVEL” policy will be strictly implemented. \r\n\r\nCANCELLATION OF TRIP\r\n\r\nIn the event of trip cancellation, passengers of the cancelled trip(s) will have to rebook for the next available trip that can accommodate them. The company shall not be responsible for personal losses due to cancellations/­delays because of unforeseen events.\r\n\r\nREFUND & REBOOKING POLICY\r\n\r\nFor reasons that the trip is cancelled outside the scope of the passengers’ capability, a FULL ticket refund will be given to the passenger up to seven (7) days after the date of travel.\r\n\r\nWhen the reason the passenger was not able to board the trip is the passenger’s fault, he/she CANNOT refund the ticket and must purchase a new ticket to ride another vessel. If for any reason the passenger do not wish to ride his/her selected vessel anymore, provided that the vessel hasn’t departed yet, the ticketing office will issue a refund for the passengers with service charge of the following:\r\n\r\n1)	Executive Ticket - 50% service charge (only 50% of the amount will be returned to the passenger)\r\n2)	Economy Ticket - 30% service charge (only 70% of the amount will be returned to the passenger)\r\n\r\nBAGGAGE ALLOWANCE & LIABILITY\r\n\r\nEach passenger is given a baggage allowance of (2) HAND CARRIED BAGGAGE. Excess items will be subject to freight charge. The passenger assumes fill responsibility for all hand carry baggage. \r\n\r\n\r\n\r\nREFUSAL\r\n\r\nThe company reserves the right to refuse accommodation of any passengers for valid reasons. Explosives, flammable, or obnoxious substance are prohibited. \r\n\r\nLIABILITY\r\n\r\nThe company shall not be liable for damages, liabilities, loses, or death arising from Force Majeure. \r\n\r\nVENUE\r\n\r\nParties expressly submit themselves only to the jurisdiction of the courts of SAN ANDRES CATANDUANES to the exclusion of all others on any legal action arising out of this transaction.\r\n\r\nACCEPTANCE OF CONDITION\r\n\r\nThe passenger have accepted and understood the terms and conditions of REGINA SHIPPING LINES upon purchase of this ticket.');


#
# TABLE STRUCTURE FOR: pri_price
#

DROP TABLE IF EXISTS `pri_price`;

CREATE TABLE `pri_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `children_price` float NOT NULL,
  `special_price` float NOT NULL,
  `group_price_per_person` float DEFAULT 0,
  `group_size` int(15) DEFAULT 0,
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('1', '1', '1', '350', '290', '0', '0', '0');
INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES ('2', '2', '1', '350', '290', '0', '0', '0');


#
# TABLE STRUCTURE FOR: sec_menu_item
#

DROP TABLE IF EXISTS `sec_menu_item`;

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('69', 'account_list', 'account_form', 'account', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('70', 'Enquiry', 'enquiry/view', 'enquiry', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('71', 'setting', 'enquiry/setting', 'enquiry', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('72', 'agent_list', 'agent/agent_form', 'agent', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('73', 'fitness_list', 'fitness/fit_form', 'fitness', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('74', 'fitness_period', 'fitness/fit_period_form', 'fitness', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('75', 'fleet_type', '', 'fleet', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('76', 'add_fleet_type', 'fleet/type/form', 'fleet', '75', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('77', 'fleet_type_list', 'fleet/type/list', 'fleet', '75', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('78', 'fleet_facilities', '', 'fleet', NULL, '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('79', 'add_facilities', 'fleet/facilities/form', 'fleet', '78', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('80', 'facilities_list', 'fleet/facilities/list', 'fleet', '78', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('81', 'account_transaction', 'transaction_form', 'account', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('82', 'bank', '', 'account', '0', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('83', 'bank_list', 'account/bank/list', 'account', '82', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('84', 'add_bank', 'account/bank/form', 'account', '82', '0', '2', '2018-07-16 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('85', 'offer_list', 'offer/offer_form', 'offer', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('86', 'price_list', 'price/price_form', 'price', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('87', 'booking', 'reports/booking/list', 'reports', '130', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('88', 'assign', 'reports/assign/list', 'reports', '130', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('89', 'passenger', '', 'ticket', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('90', 'add_passenger', 'ticket/passenger/form', 'ticket', '89', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('91', 'passenger_list', 'ticket/passenger/list', 'ticket', '89', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('92', 'booking_info', '', 'ticket', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('93', 'add_booking', 'ticket/booking/form', 'ticket', '92', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('94', 'booking_list', 'ticket/booking/list', 'ticket', '92', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('95', 'location', '', 'trip', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('96', 'add_location', 'trip/location/form', 'trip', '95', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('97', 'location_list', 'trip/location/list', 'trip', '95', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('98', 'route', '', 'trip', '0', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('99', 'add_route', 'trip/route/form', 'trip', '98', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('100', 'route_list', 'trip/route/list', 'trip', '98', '0', '2', '2018-07-17 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('101', 'websites', '', 'website', NULL, '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('102', 'web_setting', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('103', 'email_configue', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('104', 'ticket_offer', '', 'website', '0', '0', '2', '2018-07-18 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('105', 'payment_term_andcondition', '', 'ticket', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('108', 'unpaid_cash_booking_list', 'booking/unpaid_cashbooking', 'ticket', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('109', 'employee_type', 'type_view', 'hr', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('110', 'employee_list', 'viewhr', 'hr', '0', '0', '2', '2018-07-30 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('111', 'fleet_registration', 'registration/form', 'fleet', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('112', 'add_registration', 'registration/form', 'fleet', '111', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('113', 'registration_list', 'registration/list', 'fleet', '111', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('114', 'ticket_confirmation', '', 'ticket', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('115', 'refund', '', 'ticket', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('116', 'add_refund', 'refund/form', 'ticket', '115', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('117', 'refund_list', 'refund/list', 'ticket', '115', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('118', 'shedules', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('119', 'add_shedule', 'shedule/shedule_form', 'trip', '118', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('120', 'shedule_list', 'shedule/list', 'trip', '118', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('121', 'trips', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('122', 'add_trip', 'trip/form', 'trip', '121', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('123', 'trip_list', 'trip/list', 'trip', '121', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('124', 'assigns', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('125', 'add_assign', 'assign/form', 'trip', '124', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('126', 'assign_list', 'assign/list', 'trip', '124', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('127', 'close', '', 'trip', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('128', 'close_list', 'close/list', 'trip', '127', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('129', 'account', '', 'account', '0', '0', '2', '2018-08-14 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('130', 'reports', '', 'reports', '0', '0', '2', '2018-09-11 00:00:00');
INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES ('131', 'agent_log', 'agent/agent_details', 'reports', '130', '0', '2', '2018-09-11 00:00:00');


#
# TABLE STRUCTURE FOR: sec_role_permission
#

DROP TABLE IF EXISTS `sec_role_permission`;

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1165', '1', '69', '1', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1166', '1', '81', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1167', '1', '82', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1168', '1', '83', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1169', '1', '84', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1170', '1', '129', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1171', '1', '72', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1172', '1', '70', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1173', '1', '71', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1174', '1', '73', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1175', '1', '74', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1176', '1', '75', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1177', '1', '76', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1178', '1', '77', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1179', '1', '78', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1180', '1', '79', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1181', '1', '80', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1182', '1', '111', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1183', '1', '112', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1184', '1', '113', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1185', '1', '109', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1186', '1', '110', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1187', '1', '85', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1188', '1', '86', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1189', '1', '87', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1190', '1', '88', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1191', '1', '130', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1192', '1', '131', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1193', '1', '89', '1', '1', '1', '1', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1194', '1', '90', '1', '1', '1', '1', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1195', '1', '91', '1', '1', '1', '1', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1196', '1', '92', '1', '1', '1', '1', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1197', '1', '93', '1', '1', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1198', '1', '94', '1', '1', '1', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1199', '1', '105', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1200', '1', '108', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1201', '1', '114', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1202', '1', '115', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1203', '1', '116', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1204', '1', '117', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1205', '1', '95', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1206', '1', '96', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1207', '1', '97', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1208', '1', '98', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1209', '1', '99', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1210', '1', '100', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1211', '1', '118', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1212', '1', '119', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1213', '1', '120', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1214', '1', '121', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1215', '1', '122', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1216', '1', '123', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1217', '1', '124', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1218', '1', '125', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1219', '1', '126', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1220', '1', '127', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1221', '1', '128', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1222', '1', '101', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1223', '1', '102', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1224', '1', '103', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');
INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES ('1225', '1', '104', '0', '0', '0', '0', '1', '2020-03-23 08:18:54');


#
# TABLE STRUCTURE FOR: sec_role_tbl
#

DROP TABLE IF EXISTS `sec_role_tbl`;

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES ('1', 'Admin', 'Administrator', '2', '2018-07-16 02:49:29', '1');


#
# TABLE STRUCTURE FOR: sec_user_access_tbl
#

DROP TABLE IF EXISTS `sec_user_access_tbl`;

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('1', '1', '3');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('2', '1', '1');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('3', '2', '4');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('4', '2', '5');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('5', '2', '8');
INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES ('6', '2', '9');


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES ('1', 'RSL Booking System', 'Virac, Catanduanes', 'sample@gmail.com', '09123456789', 'assets/img/icons/37460e926acbd162cb27b31644651cde.png', '', 'english', 'LTR', '© 2020');


#
# TABLE STRUCTURE FOR: shedule
#

DROP TABLE IF EXISTS `shedule`;

CREATE TABLE `shedule` (
  `shedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `duration` float NOT NULL,
  PRIMARY KEY (`shedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('1', '07:00:00', '12:00:00', '5');
INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES ('2', '12:00:00', '17:00:00', '5');


#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ticket_notification
#

DROP TABLE IF EXISTS `ticket_notification`;

CREATE TABLE `ticket_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_idno` varchar(30) NOT NULL,
  `passenger_id` varchar(30) NOT NULL,
  `no_tkts` int(11) NOT NULL,
  `amount` float NOT NULL,
  `route_id` varchar(30) NOT NULL,
  `trip_id` varchar(20) NOT NULL,
  `booking_time` datetime NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT 0,
  `admin_seen` int(11) NOT NULL DEFAULT 0,
  `booked_by` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('1', 'B41LKFRF', 'PAGE6K3Q', '2', '640', '1', '1', '2020-03-23 08:58:59', '0', '0', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('2', 'BDN8JXBW', 'PAGE6K3Q', '1', '350', '1', '1', '2020-03-23 09:51:14', '0', '0', '1');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('3', 'BWLO8NTG', 'PAGE6K3Q', '1', '350', '1', '1', '2020-03-31 11:17:59', '0', '0', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('4', 'B9EYGWMP', 'PAGE6K3Q', '2', '640', '1', '1', '2020-04-22 08:35:45', '0', '0', '0');
INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES ('5', 'BPLDISV3', 'PAGE6K3Q', '1', '290', '1', '1', '2020-04-22 08:57:59', '0', '0', '0');


#
# TABLE STRUCTURE FOR: tkt_booking
#

DROP TABLE IF EXISTS `tkt_booking`;

CREATE TABLE `tkt_booking` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL DEFAULT 0,
  `child` int(11) NOT NULL DEFAULT 0,
  `special` int(11) NOT NULL DEFAULT 0,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `booked_by` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('6', 'B9EYGWMP', '1', 'PAGE6K3Q', '1', 'SAN', 'TABACO', 'Airconditioned, ', '640', '0', '1', '1', '0', '2', '001, 002, ', NULL, NULL, NULL, '2020-04-23 14:35:15', '2020-04-22 14:35:15', 'Cash', '', '0');
INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES ('8', 'BPLDISV3', '1', 'PAGE6K3Q', '1', 'TABACO', 'TABACO', NULL, '290', '0', '0', '1', '0', '1', '005, ', NULL, NULL, NULL, '2020-04-23 14:56:51', '2020-04-22 14:56:51', 'Cash', '', '0');


#
# TABLE STRUCTURE FOR: tkt_feedback
#

DROP TABLE IF EXISTS `tkt_feedback`;

CREATE TABLE `tkt_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `rating` tinyint(1) DEFAULT 1,
  `add_to_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES ('1', 'BDN8JXBW', 'Isaac Arcilla', 'Thanks', '5', NULL);


#
# TABLE STRUCTURE FOR: tkt_passenger
#

DROP TABLE IF EXISTS `tkt_passenger`;

CREATE TABLE `tkt_passenger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES ('1', 'PAGE6K3Q', 'Isaac', 'Arcilla', NULL, '09509342323', '2016-00405', 'isaac@email.com', 'ee11cbb19052e40b07aac0ca060c23ee', '', NULL, NULL, 'Magnesia del Norte', NULL, NULL, NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: tkt_referal
#

DROP TABLE IF EXISTS `tkt_referal`;

CREATE TABLE `tkt_referal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tkt_refund
#

DROP TABLE IF EXISTS `tkt_refund`;

CREATE TABLE `tkt_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: trip
#

DROP TABLE IF EXISTS `trip`;

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `weekend` varchar(50) DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `weekend`, `status`) VALUES ('1', 'Aircon 1-SAN ANDRES - TABACO-07:00:00 - 12:00:00', '1', '1', '1', '8', '1');
INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `weekend`, `status`) VALUES ('2', 'Aircon 1-TABACO - SAN ANDRES-12:00:00 - 17:00:00', '1', '2', '2', '8', '1');


#
# TABLE STRUCTURE FOR: trip_assign
#

DROP TABLE IF EXISTS `trip_assign`;

CREATE TABLE `trip_assign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `assign_time` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT 0,
  `total_income` float DEFAULT 0,
  `total_expense` float DEFAULT 0,
  `total_fuel` float DEFAULT 0,
  `trip_comment` text DEFAULT NULL,
  `closed_by_id` int(11) DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('1', '200323084100', '1', '1', '2020-03-23 15:40:00', '2', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '0000-00-00 00:00:00', '1');
INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES ('2', '200323084556', '2', '2', '2020-03-23 15:45:00', '3', '0', '0', '0', '0', '0', '0', '0', NULL, '0', '0000-00-00 00:00:00', '1');


#
# TABLE STRUCTURE FOR: trip_location
#

DROP TABLE IF EXISTS `trip_location`;

CREATE TABLE `trip_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('1', 'TABACO', '', '', '', '1');
INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES ('2', 'SAN ANDRES', '', '', '', '1');


#
# TABLE STRUCTURE FOR: trip_route
#

DROP TABLE IF EXISTS `trip_route`;

CREATE TABLE `trip_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` varchar(30) DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT 0,
  `special_seat` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('1', 'SAN ANDRES - TABACO', '2', '1', ',SAN ANDRES,TABACO', '20', '5', '0', '0', '1');
INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES ('2', 'TABACO - SAN ANDRES', '1', '2', ',TABACO,SAN ANDRES', '20', '5', '0', '0', '1');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES ('1', 'Isaac', 'Arcilla', '', 'isaac@email.com', '21232f297a57a5a743894a0e4a801fc3', NULL, './assets/img/user/csu_556934c2.png', '2020-04-22 09:04:19', '2020-03-23 11:46:40', '::1', '1', '1');


#
# TABLE STRUCTURE FOR: ws_booking_history
#

DROP TABLE IF EXISTS `ws_booking_history`;

CREATE TABLE `ws_booking_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('1', 'BTMUARYL', '1', 'PM9SLE36', '1', 'SAN', 'TABACO', 'Airconditioned, ', '640', '0', '1', '1', '0', '2', '001, 002, ', '', NULL, NULL, '2020-03-10 15:55:22', '2020-03-23 15:55:22', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('2', 'B9RF4XP9', '1', 'PAGE6K3Q', '1', 'TABACO', 'SAN', 'Airconditioned, ', '640', '0', '1', '1', '0', '2', '001, 002, ', '', NULL, NULL, '2020-03-10 15:56:01', '2020-03-23 15:56:01', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('4', 'BH6W9LI4', '1', 'PAGE6K3Q', '1', 'SAN', 'TABACO', NULL, '350', '0', '1', '0', '0', '1', '001, ', '', NULL, NULL, '2020-03-30 17:36:48', '2020-03-30 17:36:48', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('6', 'BZFU0LYV', '1', 'PAGE6K3Q', '1', 'TABACO', 'TABACO', NULL, '350', '0', '1', '0', '0', '1', '001, ', '', NULL, NULL, '2020-03-03 17:23:45', '2020-03-31 17:23:45', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('7', 'B9A94HLM', '1', 'PAGE6K3Q', '1', 'TABACO', 'TABACO', NULL, '350', '0', '1', '0', '0', '1', '001, ', '', NULL, NULL, '2020-03-03 17:24:55', '2020-03-31 17:24:55', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('8', 'BI04ALHD', '1', 'PAGE6K3Q', '1', 'SAN', 'TABACO', 'Airconditioned, ', '290', '0', '0', '1', '0', '1', '001, ', '', NULL, NULL, '2020-03-03 17:29:24', '2020-03-31 17:29:24', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('9', 'BT36D2TX', '1', 'PIQWVIR7', '1', 'TABACO', 'SAN', NULL, '350', '0', '1', '0', '0', '1', '001, ', '', NULL, NULL, '2020-04-22 14:29:02', '2020-04-22 14:29:02', '0');
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES ('12', 'BV6BEEJ2', '1', 'PBEQXS22', '1', 'TABACO', 'SAN', NULL, '290', '0', '0', '1', '0', '1', '006, ', '', NULL, NULL, '2020-04-23 15:17:27', '2020-04-22 15:17:27', '0');


#
# TABLE STRUCTURE FOR: ws_offer
#

DROP TABLE IF EXISTS `ws_offer`;

CREATE TABLE `ws_offer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ws_payments
#

DROP TABLE IF EXISTS `ws_payments`;

CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: ws_setting
#

DROP TABLE IF EXISTS `ws_setting`;

CREATE TABLE `ws_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `timezone` varchar(200) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `bank_commission` float NOT NULL DEFAULT 0,
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `timezone`, `about`, `description`, `payment_type`, `paypal_email`, `bank_commission`, `currency`, `google_map`) VALUES ('1', 'RSL Booking System', '', 'Virac, Catanduanes, PH', 'sample@gmail.com', '09123456789', 'application/modules/website/assets/images/icons/b956e8fd695db3ef140612456975971a.png', 'application/modules/website/assets/images/icons/1d3f8cd9368c7caf8d5d9b5d0f790741.png', '1', 'Asia/Taipei', '', '', NULL, NULL, '0', NULL, NULL);


