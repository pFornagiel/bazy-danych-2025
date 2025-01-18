DELETE PRODUCT_DETAILS;
DELETE SHOPPING_CART;
DELETE FEES;
DELETE ORDERS;
DELETE WEBINARS;
DELETE INTERNSHIP_DETAILS;
DELETE INTERNSHIPS;
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
INSERT INTO LANGUAGES (language_id, language_name) VALUES (2, 'Portuguese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (3, 'Western Frisian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (4, 'Korean');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (5, 'Walloon');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (6, 'Ndebele, South');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (7, 'Norwegian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (8, 'Sundanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (9, 'Czech');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (10, 'Navajo, Navaho');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (11, 'Haitian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (12, 'Komi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (13, 'Indonesian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (14, 'Kikuyu, Gikuyu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (15, 'Chechen');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (16, 'Aymara');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (17, 'Ndebele, North');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (18, 'Swahili');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (19, 'Estonian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (20, 'Danish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (21, 'Tagalog');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (22, 'Belarusian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (23, 'Finnish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (24, 'Interlingue');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (25, 'Sindhi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (26, 'Quechua');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (27, 'Cree');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (28, 'Igbo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (29, 'Shona');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (30, 'Bashkir');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (31, 'Armenian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (32, 'Pali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (33, 'Bengali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (34, 'Lao');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (35, 'Welsh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (36, 'Azerbaijani');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (37, 'Malayalam');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (38, 'Inupiaq');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (39, 'Bambara');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (40, 'Tahitian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (41, 'Fulah');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (42, 'Chuvash');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (43, 'Aragonese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (44, 'Norwegian Nynorsk');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (45, 'Uzbek');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (46, 'Maori');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (47, 'Abkhazian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (48, 'Catalan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (49, 'Urdu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (50, 'Panjabi, Punjabi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (51, 'Herero');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (52, 'Serbian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (53, 'Luba-Katanga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (54, 'Burmese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (55, 'Hungarian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (56, 'Tajik');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (57, 'Nepali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (58, 'Russian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (59, 'Ndonga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (60, 'Church Slavic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (61, 'Romanian, Moldavian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (62, 'Latvian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (63, 'Ido');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (64, 'Tatar');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (65, 'Kinyarwanda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (66, 'Luxembourgish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (67, 'Dutch, Flemish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (68, 'Interlingua');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (69, 'Javanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (70, 'Macedonian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (71, 'Spanish, Castilian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (72, 'Ossetian, Ossetic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (73, 'Hiri Motu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (74, 'Georgian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (75, 'Dzongkha');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (76, 'Chamorro');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (77, 'Mongolian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (78, 'Kurdish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (79, 'Croatian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (80, 'Kirghiz, Kyrgyz');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (81, 'Swedish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (82, 'Marshallese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (83, 'Corsican');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (84, 'Swati');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (85, 'Greek, Modern (1453-)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (86, 'Chinese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (87, 'Bulgarian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (88, 'Samoan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (89, 'Tswana');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (90, 'Esperanto');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (91, 'Wolof');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (92, 'Kalaallisut');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (93, 'Italian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (94, 'Xhosa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (95, 'Northern Sami');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (96, 'Persian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (97, 'French');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (98, 'Telugu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (99, 'Tsonga');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (100, 'Kongo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (101, 'Kuanyama, Kwanyama');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (102, 'Sotho, Southern');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (103, 'Ojibwa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (104, 'Faroese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (105, 'Pushto, Pashto');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (106, 'Hausa');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (107, 'Oriya');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (108, 'Marathi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (109, 'Turkish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (110, 'Malay');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (111, 'Yoruba');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (112, 'Romansh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (113, 'Malagasy');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (114, 'Tonga (Tonga Islands)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (115, 'Slovenian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (116, 'German');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (117, 'Bihari');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (118, 'Slovak');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (119, 'Afar');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (120, 'Lingala');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (121, 'Occitan (post 1500)');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (122, 'Ewe');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (123, 'Kashmiri');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (124, 'Central Khmer');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (125, 'Ukrainian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (126, 'Sardinian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (127, 'Japanese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (128, 'Hindi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (129, 'Tibetan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (130, 'Breton');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (131, 'Albanian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (132, 'Sango');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (133, 'Oromo');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (134, 'Avestan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (135, 'Latin');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (136, 'Zulu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (137, 'Tamil');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (138, 'Galician');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (139, 'Afrikaans');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (140, 'Sanskrit');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (141, 'Zhuang, Chuang');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (142, 'Icelandic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (143, 'English');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (144, 'Tigrinya');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (145, 'Guarani');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (146, 'Basque');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (147, 'Sinhala, Sinhalese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (148, 'Cornish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (149, 'Manx');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (150, 'Maltese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (151, 'Kannada');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (152, 'Gaelic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (153, 'Yiddish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (154, 'Divehi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (155, 'Kazakh');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (156, 'Somali');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (157, 'Avaric');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (158, 'Akan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (159, 'Assamese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (160, 'Amharic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (161, 'Irish');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (162, 'Twi');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (163, 'Sichuan Yi, Nuosu');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (164, 'Bokmål');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (165, 'Bosnian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (166, 'Inuktitut');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (167, 'Vietnamese');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (168, 'Volapük');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (169, 'Bislama');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (170, 'Turkmen');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (171, 'Thai');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (172, 'Lithuanian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (173, 'Kanuri');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (174, 'Chichewa, Chewa, Nyanja');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (175, 'Limburgan');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (176, 'Ganda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (177, 'Arabic');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (178, 'Nauru');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (179, 'Hebrew');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (180, 'Uighur, Uyghur');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (181, 'Gujarati');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (182, 'Fijian');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (183, 'Venda');
INSERT INTO LANGUAGES (language_id, language_name) VALUES (184, 'Rundi');

INSERT INTO COUNTRIES (country_id, country_name) VALUES (1, 'Poland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (2, 'Liechtenstein');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (3, 'San Marino');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (4, 'Egypt');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (5, 'Kazakhstan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (6, 'Lebanon');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (7, 'Gambia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (8, 'Tanzania');
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
INSERT INTO COUNTRIES (country_id, country_name) VALUES (39, 'Silesia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (40, 'Croatia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (41, 'Guyana');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (42, 'Thailand');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (43, 'United Kingdom');
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
INSERT INTO COUNTRIES (country_id, country_name) VALUES (95, 'Iran');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (96, 'Barbados');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (97, 'Fiji');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (98, 'Rwanda');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (99, 'Congo');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (100, 'Dominican Republic');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (101, 'Viet Nam');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (102, 'Venezuela');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (103, 'Bolivia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (104, 'Eritrea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (105, 'Côte dIvoire');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (106, 'Switzerland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (107, 'Bhutan');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (108, 'Bangladesh');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (109, 'Saint Lucia');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (110, 'Tuvalu');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (111, 'Brunei Darussalam');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (112, 'Saint Vincent');
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
INSERT INTO COUNTRIES (country_id, country_name) VALUES (125, 'Micronesia');
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
INSERT INTO COUNTRIES (country_id, country_name) VALUES (171, 'Lao Peoples');
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
INSERT INTO COUNTRIES (country_id, country_name) VALUES (188, 'Korea');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (189, 'Cameroon');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (190, 'Finland');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (191, 'Benin');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (192, 'Albania');
INSERT INTO COUNTRIES (country_id, country_name) VALUES (193, 'African Republic');
