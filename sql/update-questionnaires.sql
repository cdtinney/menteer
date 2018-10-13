RENAME TABLE `QUESTIONNAIRE` TO `MENTOR_QUESTIONNAIRE`;
RENAME TABLE `QUESTIONNAIRE_ANSWERS` TO `MENTOR_QUESTIONNAIRE_ANSWERS`;

# Dump of table mentee_questionnaire
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mentee_questionnaire`;

CREATE TABLE `mentee_questionnaire` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` text,
  `type` varchar(60) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `importance` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table mentee_questionnaire_answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mentee_questionnaire_answers`;

CREATE TABLE `mentee_questionnaire_answers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `questionnaire_id` int(11) DEFAULT NULL,
  `answer` text,
  `position` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `mentee_questionnaire` (`id`, `question`, `type`, `position`, `importance`, `enabled`)
VALUES
	(1,'Why mentorship? Check all that apply.','checkbox',1,0,1),
	(2,'Would you prefer to be matched with someone based on skills, industry or both?','radio',2,250,1),
	(3,'What type of mentorship relationship interests you? Check all that apply.','radio',3,50,1),
	(4,'Is it important to meet your menteer in person?','yesno',4,10,1),
	(5,'What type of time commitment are you open to? Check all that apply.','checkbox',5,50,1),
	(6,'Which mentorship communication style are you? Check all that apply.','checkbox',6,50,1),
	(7,'Which mentorship communication style do you prefer? Check all that apply.','checkbox',7,50,1),
	(8,'What are you passionate about? \n','open',8,0,1),
	(9,'What industry or industries are you interested in? ','list',9,50,1),
	(10,'What industry or industries have you worked in? \n','list',10,50,1),
	(11,'What is your educational background? ','open',11,0,1),
	(12,'What soft skills do you have? (i.e. communication, teamwork) ','list',12,50,1),
	(13,'What soft skills would you like to gain? (i.e. leadership, motivation) ','list',13,50,1),
	(14,'What hard skills do you have? (i.e. management, computer programming) ','list',14,50,1),
	(15,'What hard skills would you like to gain? (i.e. conflict management) ','list',15,50,1),
	(16,'Which menteer role interests you? ','radio',16,0,1);

INSERT INTO `mentee_questionnaire_answers` (`id`, `questionnaire_id`, `answer`, `position`, `enabled`)
VALUES
	(1,1,'to develop new skills',1,1),
	(2,1,'to make new connections',2,1),
	(3,1,'to share industry knowledge',3,1),
	(5,1,'to give entrepreneurial advice',5,1),
	(6,1,'to receive entrepreneurial advice',6,1),
	(7,1,'to give project feedback',7,1),
	(8,1,'to receive project feedback',8,1),
	(9,1,'to give advice on career transition',9,1),
	(10,1,'to receive advice on career transition',10,1),
	(11,1,'to build or contribute to community',11,1),
	(12,2,'Skills',1,1),
	(13,2,'Industry',2,1),
	(14,2,'Either',3,1),
	(15,3,'PEER TO PEER MENTEER - two people interested in gaining similar experiences, who will learn together and help each other through!',1,1),
	(16,3,'ENTREPRENEURIAL MENTEER - someone with an entrepreneurial background shares their experiences with someone interested in starting a business',3,1),
	(17,3,'MOTIVATIONAL MENTEER - this is a relationship where one person holds the other accountable and keeps them feeling grounded and on the right track to meeting their goals. While all mentoring relationships have this trait to an extent, people in this category may not have the same skillset or industry background.',4,1),
	(18,3,'TRADITIONAL MENTEER - a “mentor” (someone viewed as holding specific knowledge/experiences) shares their insights and guidance with a “mentee”',2,1),
	(19,5,'weekly',1,1),
	(20,5,'bi-weekly',2,1),
	(21,5,'monthly',3,1),
	(22,5,'other',4,1),
	(23,6,'DIRECTED STYLE: communication is one sided where mentor \"directs\" the menteer by sharing personal experiences',1,1),
	(24,6,'CO-DIRECTED STYLE: communication is more of a dialogue with mentor still dominating the exchange of information but allowing menteer inputs and questions',2,1),
	(25,6,'COOPERATIVE STYLE: communication is more of a dialogue between peers reflected by a strong sense of collaboration and joint problem solving',3,1),
	(26,6,'SELF-DIRECTED/CASUAL STYLE: communication is more of an infrequent dialogue between peers reflected by initiative and casual check-ins',4,1),
	(27,7,'DIRECTED STYLE',1,1),
	(28,7,'CO-DIRECTED STYLE',2,1),
	(29,7,'COOPERATIVE STYLE',3,1),
	(30,7,'SELF-DIRECTED/CASUAL STYLE',4,1),
	(31,9,'Agriculture, Accounting, Advertising, Administration, Aerospace, Animal Protection, Apparel & Accessories, Architecture, Arts, Automotive, Audio & Video & Photography, Alcoholic Beverages, Advocacy Organizations, Business Services, Banking, Broadcasting, Brokerage, Biotechnology, Builders/General Contractors, Business Associations, Chemical, Charitable Organizations & Foundations, Computer, Consulting, Consumer Products, Cosmetics, Communications, Construction, Credit Unions, Defense, Design, Department Stores, Data Processing & Related Services, Education, Electronics, Electrical, Energy & Natural Resources, Entertainment, Environment, Farming, Fishing & Hunting & Forestry, Financial Services, Facilities Maintenance & Management, Food & Beverage, For-Profit, Furniture & Home Furnishings, Funeral Homes & Services, Gaming, Grocery, Government, Healthcare, Health Services, Human Rights, HR and Recruiting Services, Hospitality, Internet Publishing, Investment Banking, Insurance, International Development, Information, IT & Network Services, Legal Services, Lending & Mortgage, Manufacturing, Mass Media, Motion Picture & Video, Marketing, Management Consulting, Music, Medical Devices, Non-Profit, Nursing, News Media, Oil & Gas, Pharmaceuticals, Product Design & Development, Public Relations, Publishing, Real Estate, Retail, Retired, Restaurants & Bars, Religious Organizations, Service, Software, Sales Services, Sports, Social Assistance, Teaching, Technology, Transportation, Television, Telecommunications, Travel, Tourism, Textiles, Unions, Universities & Colleges & Schools, Veterinary, Venture Capital, Waste Management, Water, Wholesale and Distribution',0,1),
	(32,10,'Agriculture, Accounting, Advertising, Administration, Aerospace, Animal Protection, Apparel & Accessories, Architecture, Arts, Automotive, Audio & Video & Photography, Alcoholic Beverages, Advocacy Organizations, Business Services, Banking, Broadcasting, Brokerage, Biotechnology, Builders/General Contractors, Business Associations, Chemical, Charitable Organizations & Foundations, Computer, Consulting, Consumer Products, Cosmetics, Communications, Construction, Credit Unions, Defense, Design, Department Stores, Data Processing & Related Services, Education, Electronics, Electrical, Energy & Natural Resources, Entertainment, Environment, Farming, Fishing & Hunting & Forestry, Financial Services, Facilities Maintenance & Management, Food & Beverage, For-Profit, Furniture & Home Furnishings, Funeral Homes & Services, Gaming, Grocery, Government, Healthcare, Health Services, Human Rights, HR and Recruiting Services, Hospitality, Internet Publishing, Investment Banking, Insurance, International Development, Information, IT & Network Services, Legal Services, Lending & Mortgage, Manufacturing, Mass Media, Motion Picture & Video, Marketing, Management Consulting, Music, Medical Devices, Non-Profit, Nursing, News Media, Oil & Gas, Pharmaceuticals, Product Design & Development, Public Relations, Publishing, Real Estate, Retail, Retired, Restaurants & Bars, Religious Organizations, Service, Software, Sales Services, Sports, Social Assistance, Teaching, Technology, Transportation, Television, Telecommunications, Travel, Tourism, Textiles, Unions, Universities & Colleges & Schools, Veterinary, Venture Capital, Waste Management, Water, Wholesale and Distribution',0,1),
	(33,12,'accountability, adaptability, assertiveness, brainstorming, collaboration, commitment, communication, conflict resolution, creativity, critical thinking, decision making, delegation, design thinking, drive, dependable, empathy, enthusiasm, flexibility, foresight, feedback, flexibility, focus, humility, humor, honesty, imagination, interpersonal, integrity, innovation, initiative, listening, leadership, motivation, multi-tasking, negotiation, networking, optimism, passion, patience, persuasion, positivity, problem solving, professionalism, persistence, responsibility, resilience, self awareness, self confidence, supportive, system thinking, sociability, stress management, time management, teamwork, trustworthiness',0,1),
	(34,13,'accountability, adaptability, assertiveness, brainstorming, collaboration, commitment, communication, conflict resolution, creativity, critical thinking, decision making, delegation, design thinking, drive, dependable, empathy, enthusiasm, flexibility, foresight, feedback, flexibility, focus, humility, humor, honesty, imagination, interpersonal, integrity, innovation, initiative, listening, leadership, motivation, multi-tasking, negotiation, networking, optimism, passion, patience, persuasion, positivity, problem solving, professionalism, persistence, responsibility, resilience, self awareness, self confidence, supportive, system thinking, sociability, stress management, time management, teamwork, trustworthiness',0,1),
	(35,14,'accounting, account management, administrative, adobe illustrator, adobe indesign, adobe photoshop, advertising, analysis, auditing, art design, budgeting, banking, business strategy, business analysis, change management, coaching, copy writing, computer, computer programming, conflict management, consulting, CSS, customer service, creative writing, coding, data, data analysis, design, digital marketing, event planning, event management, editing, entrepreneurship, electrical, engineering, executive, finance, financial advising, financial management, financial reporting, facilitation, forecasting, fundraising, graphic, grant writing, government, human resources, healthcare, HTML, insurance, Java Script, jQuery, jounalism, language, legal, leadership, management, mathematics, marketing, microsoft, nursing, operations, operations management, organizational development, product development, photoshop, planning, public speaking, public relations, project management, program management, programming, quickbooks, reading, retail, research, recruiting, reporting, risk management, sales, scheduling, speech writing, strategy, strategic planning, social media, software development, teaching, training, technology, typing, UI/UX, video, video editing, volunteer management, web design, writing',0,1),
	(36,15,'accounting, account management, administrative, adobe illustrator, adobe indesign, adobe photoshop, advertising, analysis, auditing, art design, budgeting, banking, business strategy, business analysis, change management, coaching, copy writing, computer, computer programming, conflict management, consulting, CSS, customer service, creative writing, coding, data, data analysis, design, digital marketing, event planning, event management, editing, entrepreneurship, electrical, engineering, executive, finance, financial advising, financial management, financial reporting, facilitation, forecasting, fundraising, graphic, grant writing, government, human resources, healthcare, HTML, insurance, Java Script, jQuery, jounalism, language, legal, leadership, management, mathematics, marketing, microsoft, nursing, operations, operations management, organizational development, product development, photoshop, planning, public speaking, public relations, project management, program management, programming, quickbooks, reading, retail, research, recruiting, reporting, risk management, sales, scheduling, speech writing, strategy, strategic planning, social media, software development, teaching, training, technology, typing, UI/UX, video, video editing, volunteer management, web design, writing',0,1),
	(37,16,'being a mentor',1,1),
	(38,16,'being a menteer',2,1),
	(41,16,'either, I can be a mentor or mentee, depending on availability',3,1);
