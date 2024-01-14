
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (1,'Gadkari eduction pvt. ltd','Specialise in SSC board exams','Baner Pune','+91 8983353453','+91 935739047','gadkari.classes@gmail.com','2023-07-02 09:03:03','test-tool');
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (2,'Dhruv Bhatia education institute','We specialize in Olympiad exams','Kota Rajasthan','+91 8983353453','+91 935739047','dhruv.inst@gmail.com','2023-07-02 09:03:03','test-tool');
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (3,'Gadkari eduction pvt. ltd','Specialise in SSC board exams','Baner Pune','+91 8983353453','+91 935739047','gadkari.classes@gmail.com','2023-07-02 09:03:03','test-tool');
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (4,'Nitome institute1','We specialize in Olympiad exams','Kota Rajasthan','+91 8983353453','+91 935739047','dhruv.inst@gmail.com','2023-07-02 09:03:03','test-tool');
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (5,'Nitome institute2','We specialize in Olympiad exams','Kota Rajasthan','+91 8983353453','+91 935739047','dhruv.inst@gmail.com','2023-07-02 09:03:03','test-tool');
INSERT INTO `author_tbl` (`id`,`name`,`description`,`address`,`p_contact`,`s_contact`,`email`,`created_on`,`created_by`) VALUES (6,'Nitome institute3','We specialize in Olympiad exams','Kota Rajasthan','+91 8983353453','+91 935739047','dhruv.inst@gmail.com','2023-07-02 09:03:03','test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1001,
'National Cyber Olympiads (NCO SOF)',
'SOF NCO is an annual academic competition to assess their knowledge and skills in computers and information technology.',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'nco-sof.png',
'COMPUTER',
'1,2,3,4,5,6,7,8,9,10',
'https://sofworld.org/nco/about-nco-exam/nco-exam-dates',
'https://sofworld.org/nco',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1002,
'National Science Olympiad (NSO SOF)',
'SOF NSO assesses the natural aptitudes and science abilities of pupils ranging from the first to the 12th grade',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'nso_sof.png',
'SCIENCE',
'1,2,3,4,5,6,7,8,9,10,11,12',
NULL,
'https://sofworld.org/nso',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1003,
'International Mathematics Olympiad (IMO SOF)',
'SOF IMO is an annual exam to evaluate the mathematical abilities of students from grades 1 to 12',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'imo_sof.png',
'MATHS',
'1,2,3,4,5,6,7,8,9,10,11,12',
NULL,
'https://sofworld.org/imo',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1004,
'International English Olympiad (IEO SOF)',
'SOF IEO is an acclaimed annual examination in two levels to assess english competency level among students 1 to 12.',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'ieo_sof.png',
'ENGLISH',
'1,2,3,4,5,6,7,8,9,10,11,12',
NULL,
'https://sofworld.org/ieo',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1005,
'International General Knowledge Olympiad (IGKO SOF)',
'SOF IGKO is annual examination designed to assess knowledge on current affairs, social and political events, history and other related subjects.',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'igko_sof.png',
'GK',
'1,2,3,4,5,6,7,8,9,10',
NULL,
'https://sofworld.org/igko',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');


INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1006,
'International Social Studies Olympiad (ISSO SOF)',
'SOF ISSO is an annual examination to enhance students complex cognitive skills, such as critical thinking, concept learning, problem-solving, and metacognition.',
'Science Olympiad Foundation (SOF)',
'ENGLISH',
'isso_sof.png',
'SOCIAL_SCIENCE',
'3,4,5,6,7,8,9,10',
NULL,
'https://sofworld.org/isso',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1007,
'National Standard Exam in Junior Science (NSEJS)',
'NSEJS exams encourage and identify the scientific skills of the students.',
'The Indian Association of physics teacher (IAPT)',
'ENGLISH',
'nsejs.png',
'SCIENCE',
'1,2,3,4,5,6,7,8,9,10,11,12',
NULL,
'http://iapt.org.in/',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1008,
'English Marathon (EM)',
'It focuses on the English language reading and writing skills covered under ICSE, CBSE and State boards in India.',
'Maharashtra exam board',
'ENGLISH',
'em.png',
'ENGLISH',
'1,2,3,4,5,6,7,8,9,10,11,12',
NULL,
'https://englishmarathon.org/',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1009,
'National Level Science Talent Search Examination (NSTSE)',
'This exam helps improve the overall learning capability and performance of the students. This is one of the best competitive exams for class 3 to 10 in India.',
'Unified Council',
'ENGLISH',
'nstse.png',
'MATHS,SCIENCE',
'3,4,5,6,7,8,9,10,11,12',
NULL,
'https://www.unifiedcouncil.com/about-nstse.html',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1010,
'Unified International Mathematics Olympiad (UIMO)',
'UIMO is a curriculum-based exam, which is very useful for students in assessing their strength & weakness in Maths.',
'Unified Council',
'ENGLISH',
'uimo.png',
'MATHS',
'1,2,3,4,5,6,7,8,9,10',
NULL,
'https://www.unifiedcouncil.com/about-uimo.html',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1011,
'Unified Cyber Olympiad (UCO)',
'UCO motivates children to strengthen their knowledge of using mental ability, logical reasoning & computer knowledge.',
'Unified Council',
'ENGLISH',
'uco.png',
'MATHS,REASONING,COMPUTER',
'1,2,3,4,5,6,7,8,9,10',
NULL,
'https://www.unifiedcouncil.com/about-uimo.html',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1012,
'Unified International English Olympiad (UIEO)',
'UIEO assess students on vocabulary, comprehension & grammar in a competitive way.',
'Unified Council',
'ENGLISH',
'uieo.png',
'ENGLISH',
'1,2,3,4,5,6,7,8,9,10',
NULL,
'https://www.unifiedcouncil.com/about-uieo.html',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1013,
'Maharashtra scholership Exam (English)',
'Maharashtra state examination for 5th & 8th Grade',
'Maharashtra exam board',
'ENGLISH',
'marha.png',
'MATHS,ENGLISH,REASONING',
'5,8',
NULL,
'https://www.mscepuppss.in/',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1014,
'महाराष्ट्र राज्य शिष्यवृत्ती परीक्षा (मराठी)',
'ही एक अभ्यासक्रम-आधारित परीक्षा आहे, जी विद्यार्थ्यांची गणित आणि तर्कशास्त्रावर परीक्षा घेते',
'Maharashtra exam board',
'MARATHI',
'marha.png',
'MATHS,REASONING',
'5,8',
NULL,
'https://www.mscepuppss.in/',
'Registration happens through school',
'OFFLINE',
CURRENT_TIMESTAMP(),
'test-tool');


INSERT INTO `exam_tbl` (`id`,`name`,`description`,`authority`,`medium`,`img_name`,`subjects`,`grades`,`reg_url`,`exam_url`,`reg_mode_info`,`reg_mode`,`created_on`,`created_by`)
VALUES (1015,
'Dr Homi Bhabha Balvaidyanik Competition',
'This unique four stage competition aims at problem solving, observational and motor skills in young scientists.',
'The Mumbai Science Teachers Association',
'ENGLISH',
'drhbbvc.png',
'SCIENCE',
'6,9',
'http://msta.in/homi-bhabha-exams/',
'http://msta.in/homi-bhabha-exams/',
'Registration happens through school & online',
'ONLINE',
CURRENT_TIMESTAMP(),
'test-tool');

INSERT INTO `exam_reg_info_tbl` (`id`,`exam_id`,`grade`,`exam_dt`,`exam_time`,`reg_start_dt`,`is_active`,`reg_end_dt`,`created_on`,`created_by`)
VALUES (1,1001,'G_5','2023-12-25','10:45:45','2023-12-25','1','2023-06-25',CURRENT_TIMESTAMP(),'test-tool');
INSERT INTO `exam_reg_info_tbl` (`id`,`exam_id`,`grade`,`exam_dt`,`exam_time`,`reg_start_dt`,`is_active`,`reg_end_dt`,`created_on`,`created_by`)
VALUES (2,1002,'G_6','2023-12-25','10:45:45','2023-12-25','1','2023-06-25',CURRENT_TIMESTAMP(),'test-tool');
INSERT INTO `exam_reg_info_tbl` (`id`,`exam_id`,`grade`,`exam_dt`,`exam_time`,`reg_start_dt`,`is_active`,`reg_end_dt`,`created_on`,`created_by`)
VALUES (3,1003,'G_3','2023-12-25','10:45:45','2023-12-25','1','2023-06-25',CURRENT_TIMESTAMP(),'test-tool');
INSERT INTO `exam_reg_info_tbl` (`id`,`exam_id`,`grade`,`exam_dt`,`exam_time`,`reg_start_dt`,`is_active`,`reg_end_dt`,`created_on`,`created_by`)
VALUES (4,1004,'G_4','2023-12-25','10:45:45','2023-12-25','1','2023-06-25',CURRENT_TIMESTAMP(),'test-tool');


INSERT INTO `question_papers_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`display_order`) VALUES
(1,1014,1,'marha.png','100+ questions set for maths','MATHS','G_6','PAID','1');
INSERT INTO `question_papers_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`display_order`) VALUES
(2,1015,1,'drhbbvc.png','Exam oriented practice questions','MATHS','G_6','PAID','1');
INSERT INTO `question_papers_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`display_order`) VALUES
(3,1001,1,'sof-nco.png','Best seller ! complete practice questions.','MATHS','G_5','PAID','1');
INSERT INTO `question_papers_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`display_order`) VALUES
(4,1009,1,'nstse.png','1000+ practice questions.','MATHS','G_4','PAID','1');


INSERT INTO `practice_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`is_active`,`display_order`) VALUES
(1,1014,1,'marha.png','100+ questions set for maths','MATHS','G_5','PAID','1',1);
INSERT INTO `practice_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`is_active`,`display_order`) VALUES
(2,1015,1,'drhbbvc.png','Exam oriented practice questions','SCIENCE','G_6','PAID','1',2);
INSERT INTO `practice_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`is_active`,`display_order`) VALUES
(3,1001,1,'sof-nco.png','Best seller ! complete practice questions.','COMPUTER','G_3','PAID','1',3);
INSERT INTO `practice_tbl` (`id`,`exam_id`,`author_id`,`image`,`name`,`subjects`,`grade`,`offering`,`is_active`,`display_order`) VALUES
(4,1009,1,'nstse.png','1000+ practice questions.','MATHS','G_4','PAID','1',4);


INSERT INTO `testimony_tbl` (`id`,`rating`,`created_by`,`created_ts`,`cust_profile`,`cust_name`,`location`,`testimony`) VALUES
(1,4.0,'Santosh',CURRENT_TIMESTAMP(),'HOD at Aditya group','Sachin Gadkari','Pune, MH','My kids love solving it !');

INSERT INTO `testimony_tbl` (`id`,`rating`,`created_by`,`created_ts`,`cust_profile`,`cust_name`,`location`,`testimony`) VALUES
(2,4.2,'Santosh',CURRENT_TIMESTAMP(),'Head of UX','Dhruv Bhatia','Pune, MH','My kids love solving it !');

INSERT INTO `testimony_tbl` (`id`,`rating`,`created_by`,`created_ts`,`cust_profile`,`cust_name`,`location`,`testimony`) VALUES
(3,5.0,'Santosh',CURRENT_TIMESTAMP(),'Head of UI strategy','Harsh Sharma','Pune, MH','My kids love solving it !');

INSERT INTO `testimony_tbl` (`id`,`rating`,`created_by`,`created_ts`,`cust_profile`,`cust_name`,`location`,`testimony`) VALUES
(4,5.2,'Santosh',CURRENT_TIMESTAMP(),'Head of UX at UBS','Nitin K','Pune, MH','My kids love solving it !');

-- academics table data
insert into academics_board_tbl (id,name,img_name,description,authority,grades,is_active,created_on,created_by)
values (1,'CBSC','cbsc_board.png','Central Board for secondatory education','Central India govt','G_1,G_2,G_3','1',CURRENT_TIMESTAMP(),'test-tool');

insert into academics_board_tbl (id,name,img_name,description,authority,grades,is_active,created_on,created_by)
values (2,'ICSE','icse_board.png','Indian Certificate of Secondary Education','Central India govt','G_1,G_2,G_3','1',CURRENT_TIMESTAMP(),'test-tool');

insert into academics_board_tbl (id,name,img_name,description,authority,grades,is_active,created_on,created_by)
values (3,'SSC','ssc_board.png','The Maharashtra State Board of Secondary and Higher Secondary Education','Maharashtra state govt','G_1,G_2,G_3','1',CURRENT_TIMESTAMP(),'test-tool');

insert into nitome_config_tbl (prop_name, prop_value,description,is_active,created_by) values ('db.mocks.price.range','100,200,300','price range for mock exams',1,'test-tool');
insert into nitome_config_tbl (prop_name, prop_value,description,is_active,created_by) values ('db.currency','INR','default currency',1,'test-tool');

insert into user_reviews_tbl (headline,rating,ref_id,review,status,tag,user_id,user_name) values ('Great !',5,1,'amazing app','APPROVED','PRACTICE',1,'Santosh');
insert into user_reviews_tbl (headline,rating,ref_id,review,status,tag,user_id,user_name) values ('Great !',5,1,'amazing app','APPROVED','PRACTICE',2,'Santosh');
insert into user_reviews_tbl (headline,rating,ref_id,review,status,tag,user_id,user_name) values ('Great !',5,1,'amazing app','APPROVED','PRACTICE',3,'Santosh');
insert into user_reviews_tbl (headline,rating,ref_id,review,status,tag,user_id,user_name) values ('Great !',5,1,'amazing app','APPROVED','PRACTICE',4,'Santosh');
insert into practice_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,1,0,0,0,0,1,1);
insert into practice_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,2,0,0,0,0,1,1);
insert into practice_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,3,0,0,0,0,1,1);
insert into practice_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,4,0,0,0,0,1,1);

insert into qpapers_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,1,0,0,0,0,1,1);
insert into qpapers_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,2,0,0,0,0,1,1);
insert into qpapers_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,3,0,0,0,0,1,1);
insert into qpapers_reviews_tbl (avg_rating,ref_id,r_1,r_2,r_3,r_4,r_5,total_reviews) values (5.0,4,0,0,0,0,1,1);

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (1,'Vibgyor high school','address 1','Near kirloskar','411045','Pune','Maharashtra','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (2,'Nitome kolhapur centre','address 1','Near kirloskar','411045','Kolhapur','Maharashtra','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (3,'Nitome Mumbai centre','address 1','Near kirloskar','411045','Mumbai','Maharashtra','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (4,'Nitome Benglore centre','address 1','Near kirloskar','411045','Benglore','Karnataka','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (5,'Nitome Chennai centre','address 1','Near kirloskar','411045','Chennai','Tamilnadu','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());

insert into exam_centre_tbl (id,centre_name,addr_line1,addr_line2,pincode,city,state,phone1,phone2,email,contact_name1,contact_name2,created_by,created_on)
values (6,'Online','Online','','','Online','','+918007265511','+918007264155','s.b@gmail.com','santosh','gadkari','test',CURRENT_TIMESTAMP());




