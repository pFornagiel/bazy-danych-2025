DELETE PRODUCT_DETAILS;
DELETE SHOPPING_CART;
DELETE FEES;
DELETE ORDERS;
DELETE WEBINARS;
DELETE INTERSHIP_DETAILS;
DELETE INTERSHIPS;
DELETE ASYNC_MEETINGS;
DELETE SYNC_MEETINGS;
DELETE STATIONARY_MEETINGS;
DELETE MEETING_DETAILS;
DELETE MEETINGS;
DELETE LANGUAGES;
DELETE MODULES;
DELETE COURSES;
DELETE SESSIONS;
DELETE SUBJECTS;
DELETE STUDENTS;
DELETE EMPLOYEES;
DELETE USERS;
DELETE STUDIES;
DELETE PRODUCTS;
DELETE COUNTRIES;
DELETE EMPLOYEE_TYPES;
DELETE PRODUCT_TYPES;

DECLARE @table_name NVARCHAR(255)
DECLARE @sql NVARCHAR(MAX)

-- Declare a cursor to loop through all tables with identity columns
DECLARE table_cursor CURSOR FOR
SELECT t.name
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
WHERE c.is_identity = 1  -- Only include tables with identity columns

-- Open the cursor
OPEN table_cursor

-- Fetch the first table with an identity column
FETCH NEXT FROM table_cursor INTO @table_name

-- Loop through all tables with identity columns
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Construct the DBCC CHECKIDENT command
    SET @sql = 'DBCC CHECKIDENT (''' + @table_name + ''', RESEED, 0);'
    
    -- Execute the DBCC CHECKIDENT command for the current table
    EXEC sp_executesql @sql
    
    -- Fetch the next table with an identity column
    FETCH NEXT FROM table_cursor INTO @table_name
END

-- Close and deallocate the cursor
CLOSE table_cursor
DEALLOCATE table_cursor




INSERT INTO PRODUCT_TYPES(type_id, type_name) VALUES
(1,'study'),
(2,'subject'),
(3,'course'),
(4,'webinar'),
(5,'session');

INSERT INTO EMPLOYEE_TYPES(type_id, type_name) VALUES
(1,'headmaster'),
(2,'administration worker'),
(3,'tutor'),
(4,'translator');

INSERT INTO EMPLOYEE_TYPES(type_id, type_name) VALUES
(1,'session'),
(2,'subject session'),
(3,'study session'),
(4,'study entry fee'),
(5,'course'),
(6,'course advance'),
(7,'webinar');

INSERT INTO LANGUAGES (language_id, language_name) VALUES (1, 'Polish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (2, 'Danish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (3, 'Abkhazian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (4, 'Welsh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (5, 'Ndebele, South; South Ndebele');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (6, 'Ndonga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (7, 'Tswana');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (8, 'Sango');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (9, 'Serbian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (10, 'Inuktitut');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (11, 'Lithuanian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (12, 'French');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (13, 'Vietnamese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (14, 'Basque');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (15, 'Oriya');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (16, 'Twi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (17, 'Chuvash');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (18, 'Kongo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (19, 'Czech');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (20, 'Latin');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (21, 'Kikuyu; Gikuyu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (22, 'Marshallese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (23, 'Sotho, Southern');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (24, 'Hiri Motu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (25, 'Zhuang; Chuang');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (26, 'Corsican');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (27, 'Romanian; Moldavian; Moldovan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (28, 'Avaric');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (29, 'Wolof');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (30, 'Ndebele, North; North Ndebele');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (31, 'Tsonga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (32, 'Finnish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (33, 'Zulu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (34, 'Kalaallisut; Greenlandic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (35, 'Greek, Modern (1453-)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (36, 'Walloon');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (37, 'Bihari languages');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (38, 'Lingala');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (39, 'Cornish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (40, 'Faroese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (41, 'Gaelic; Scomttish Gaelic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (42, 'Avestan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (43, 'Hindi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (44, 'Sichuan Yi; Nuosu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (45, 'Esperanto');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (46, 'Divehi; Dhivehi; Maldivian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (47, 'Russian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (48, 'Bislama');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (49, 'Occitan (post 1500)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (50, 'Chechen');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (51, 'Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (52, 'Samoan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (53, 'Fulah');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (54, 'Lao');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (55, 'Tatar');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (56, 'Ganda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (57, 'Uzbek');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (58, 'Japanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (59, 'Amharic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (60, 'Armenian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (61, 'Yiddish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (62, 'Pali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (63, 'Nepali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (64, 'Mongolian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (65, 'Interlingua (International Auxiliary Language Association)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (66, 'Albanian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (67, 'Hausa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (68, 'Herero');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (69, 'Nauru');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (70, 'Indonesian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (71, 'Northern Sami');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (72, 'Kinyarwanda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (73, 'Bambara');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (74, 'Ewe');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (75, 'Tigrinya');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (76, 'Luba-Katanga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (77, 'Inupiaq');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (78, 'Latvian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (79, 'Korean');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (80, 'Aymara');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (81, 'Bokmål, Norwegian; Norwegian Bokmål');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (82, 'Malay');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (83, 'Afrikaans');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (84, 'Malagasy');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (85, 'Maltese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (86, 'Bulgarian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (87, 'Chinese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (88, 'Uighur; Uyghur');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (89, 'Kirghiz; Kyrgyz');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (90, 'Interlingue; Occidental');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (91, 'Kazakh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (92, 'Limburgan; Limburger; Limburgish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (93, 'Breton');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (94, 'Catalan; Valencian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (95, 'Sardinian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (96, 'Volapük');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (97, 'Assamese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (98, 'Cree');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (99, 'Rundi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (100, 'Kuanyama; Kwanyama');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (101, 'Gujarati');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (102, 'Igbo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (103, 'Oromo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (104, 'Tahitian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (105, 'Ido');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (106, 'English');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (107, 'Sundanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (108, 'Somali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (109, 'Tamil');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (110, 'Marathi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (111, 'Sanskrit');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (112, 'Slovenian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (113, 'Telugu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (114, 'Komi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (115, 'Italian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (116, 'Ukrainian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (117, 'German');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (118, 'Dzongkha');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (119, 'Estonian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (120, 'Kannada');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (121, 'Malayalam');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (122, 'Luxembourgish; Letzeburgesch');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (123, 'Ossetian; Ossetic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (124, 'Maori');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (125, 'Icelandic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (126, 'Swahili');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (127, 'Quechua');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (128, 'Manx');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (129, 'Akan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (130, 'Arabic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (131, 'Pushto; Pashto');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (132, 'Bashkir');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (133, 'Afar');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (134, 'Turkish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (135, 'Sinhala; Sinhalese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (136, 'Shona');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (137, 'Swedish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (138, 'Western Frisian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (139, 'Javanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (140, 'Xhosa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (141, 'Romansh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (142, 'Navajo; Navaho');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (143, 'Turkmen');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (144, 'Slovak');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (145, 'Ojibwa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (146, 'Bengali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (147, 'Georgian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (148, 'Burmese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (149, 'Kashmiri');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (150, 'Norwegian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (151, 'Macedonian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (152, 'Spanish; Castilian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (153, 'Chamorro');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (154, 'Hebrew');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (155, 'Chichewa; Chewa; Nyanja');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (156, 'Guarani');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (157, 'Sindhi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (158, 'Aragonese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (159, 'Croatian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (160, 'Galician');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (161, 'Persian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (162, 'Bosnian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (163, 'Tagalog');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (164, 'Norwegian Nynorsk; Nynorsk, Norwegian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (165, 'Thai');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (166, 'Kurdish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (167, 'Hungarian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (168, 'Venda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (169, 'Tibetan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (170, 'Portuguese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (171, 'Tajik');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (172, 'Haitian; Haitian Creole');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (173, 'Tonga (Tonga Islands)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (174, 'Swati');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (175, 'Kanuri');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (176, 'Central Khmer');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (177, 'Yoruba');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (178, 'Irish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (179, 'Dutch; Flemish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (180, 'Azerbaijani');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (181, 'Fijian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (182, 'Panjabi; Punjabi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (183, 'Urdu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (184, 'Belarusian');

INSERT INTO COUNTRIES (country_id, country_name) VALUES (1, 'Poland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (2, 'Liechtenstein');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (3, 'San Marino');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (4, 'Egypt');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (5, 'Kazakhstan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (6, 'Lebanon');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (7, 'Gambia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (8, 'Tanzania, United Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (9, 'Oman');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (10, 'Israel');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (11, 'Canada');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (12, 'Guinea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (13, 'Bahamas');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (14, 'Montenegro');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (15, 'Kuwait');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (16, 'Papua New Guinea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (17, 'Slovenia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (18, 'Kenya');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (19, 'Mauritania');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (20, 'Belarus');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (21, 'Niger');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (22, 'United Arab Emirates');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (23, 'Madagascar');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (24, 'Togo');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (25, 'Mexico');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (26, 'Azerbaijan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (27, 'Mozambique');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (28, 'Hungary');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (29, 'Comoros');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (30, 'Antigua and Barbuda');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (31, 'Paraguay');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (32, 'Uzbekistan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (33, 'Indonesia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (34, 'Austria');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (35, 'Bulgaria');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (36, 'Seychelles');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (37, 'Palau');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (38, 'Cuba');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (39, 'Korea, Democratic Peoples Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (40, 'Croatia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (41, 'Guyana');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (42, 'Thailand');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (43, 'United Kingdom of Great Britain and Northern Ireland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (44, 'Liberia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (45, 'Eswatini');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (46, 'Panama');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (47, 'Mali');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (48, 'Marshall Islands');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (49, 'Lithuania');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (50, 'Norway');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (51, 'South Africa');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (52, 'Qatar');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (53, 'Trinidad and Tobago');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (54, 'Luxembourg');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (55, 'Ukraine');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (56, 'Jamaica');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (57, 'Armenia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (58, 'Zimbabwe');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (59, 'Mongolia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (60, 'United States of America');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (61, 'Timor-Leste');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (62, 'Burkina Faso');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (63, 'Saint Kitts and Nevis');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (64, 'Lesotho');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (65, 'Russian Federation');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (66, 'Peru');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (67, 'Cyprus');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (68, 'Tonga');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (69, 'Sierra Leone');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (70, 'Iraq');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (71, 'Samoa');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (72, 'Maldives');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (73, 'Nigeria');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (74, 'Ethiopia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (75, 'Slovakia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (76, 'Sao Tome and Principe');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (77, 'Yemen');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (78, 'Dominica');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (79, 'Haiti');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (80, 'Jordan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (81, 'Somalia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (82, 'Tunisia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (83, 'Japan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (84, 'Bahrain');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (85, 'Burundi');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (86, 'Vanuatu');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (87, 'Kyrgyzstan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (88, 'Serbia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (89, 'Uganda');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (90, 'Zambia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (91, 'Algeria');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (92, 'Portugal');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (93, 'Latvia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (94, 'Belgium');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (95, 'Iran, Islamic Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (96, 'Barbados');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (97, 'Fiji');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (98, 'Rwanda');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (99, 'Congo, Democratic Republic of the');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (100, 'Dominican Republic');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (101, 'Viet Nam');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (102, 'Venezuela, Bolivarian Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (103, 'Bolivia, Plurinational State of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (104, 'Eritrea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (105, 'Côte dIvoire');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (106, 'Switzerland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (107, 'Bhutan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (108, 'Bangladesh');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (109, 'Saint Lucia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (110, 'Tuvalu');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (111, 'Brunei Darussalam');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (112, 'Saint Vincent and the Grenadines');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (113, 'Iceland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (114, 'Chile');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (115, 'France');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (116, 'Malawi');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (117, 'Chad');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (118, 'Senegal');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (119, 'Angola');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (120, 'Tajikistan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (121, 'Malta');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (122, 'Nepal');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (123, 'Gabon');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (124, 'Turkmenistan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (125, 'Micronesia, Federated States of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (126, 'Estonia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (127, 'Nauru');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (128, 'Moldova, Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (129, 'North Macedonia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (130, 'Czechia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (131, 'Kiribati');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (132, 'Pakistan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (133, 'Argentina');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (134, 'Georgia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (135, 'Solomon Islands');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (136, 'Honduras');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (137, 'Sri Lanka');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (138, 'Afghanistan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (139, 'China');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (140, 'Türkiye');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (141, 'Singapore');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (142, 'Cambodia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (143, 'Morocco');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (144, 'South Sudan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (145, 'Grenada');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (146, 'Uruguay');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (147, 'Denmark');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (148, 'Germany');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (149, 'Myanmar');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (150, 'Colombia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (151, 'Bosnia and Herzegovina');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (152, 'Djibouti');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (153, 'Equatorial Guinea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (154, 'Botswana');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (155, 'Sudan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (156, 'Sweden');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (157, 'Saudi Arabia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (158, 'Brazil');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (159, 'El Salvador');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (160, 'Guinea-Bissau');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (161, 'Nicaragua');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (162, 'Romania');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (163, 'Mauritius');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (164, 'Italy');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (165, 'New Zealand');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (166, 'Malaysia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (167, 'Syrian Arab Republic');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (168, 'Australia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (169, 'Suriname');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (170, 'Cabo Verde');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (171, 'Lao Peoples Democratic Republic');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (172, 'Spain');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (173, 'Namibia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (174, 'Netherlands');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (175, 'Belize');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (176, 'Philippines');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (177, 'Ghana');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (178, 'Ecuador');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (179, 'Greece');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (180, 'Guatemala');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (181, 'Monaco');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (182, 'Congo');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (183, 'Costa Rica');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (184, 'Ireland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (185, 'India');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (186, 'Libya');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (187, 'Andorra');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (188, 'Korea, Republic of');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (189, 'Cameroon');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (190, 'Finland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (191, 'Benin');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (192, 'Albania');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (193, 'Central African Republic');
