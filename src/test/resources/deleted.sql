--INSERT INTO `mock_exam_tbl` (`id`,`img_name`,`author_id`,`exam_id`,`is_active`,`exam_dt`,`exam_time`,`mode`,`full_addr`,`city`,`short_addr`,`contact`,`grade`,`subjects`,`created_on`,`created_by`)
--VALUES (1001,'nco-sof.png',1,1001,1,'2023-12-16','11:07:01','OFFLINE','VIBYOR school, Balewadi Pune','Pune','Balewadi, Pune','+91 7930470434','G_2','COMPUTER',CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (1,1001,50,10,'1','1',NULL,'10:10:00','10:00:00','10:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (2,1001,50,10,'1','1',NULL,'11:10:00','11:00:00','11:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (3,1001,50,10,'1','1',NULL,'13:10:00','13:00:00','13:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_tbl` (`id`,`img_name`,`author_id`,`exam_id`,`is_active`,`exam_dt`,`exam_time`,`mode`,`full_addr`,`city`,`short_addr`,`contact`,`grade`,`subjects`,`created_on`,`created_by`)
--VALUES (1002,
--'nco-sof.png',
--1,
--1001,
--1,
--'2023-12-16',
--'11:07:01',
--'ONLINE',
--NULL,
--NULL,
--NULL,
--'+91 7930470434',
--'G_2',
--'COMPUTER',
--CURRENT_TIMESTAMP(),
--'test-tool'
--);
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (4,1002,50,10,'1','1',NULL,'10:10:00','10:00:00','10:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (5,1002,50,10,'1','1',NULL,'11:10:00','11:00:00','11:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
--VALUES (6,1002,50,10,'1','1',NULL,'13:10:00','13:00:00','13:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');
--
--INSERT INTO `mock_exam_tbl` (`id`,`img_name`,`author_id`,`exam_id`,`is_active`,`exam_dt`,`exam_time`,`mode`,`full_addr`,`city`,`short_addr`,`contact`,`grade`,`subjects`,`created_on`,`created_by`)
--VALUES (1003,
--'marha.png',
--1,
--1014,
--1,
--'2023-12-16',
--'11:07:01',
--'ONLINE',
--NULL,
--NULL,
--NULL,
--'+91 7930470434',
--'G_2',
--'MATHS,NVR',
--CURRENT_TIMESTAMP(),
--'test-tool'
--);
--
INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
VALUES (7,1003,50,10,'1','1',NULL,'10:10:00','10:00:00','10:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');

INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
VALUES (8,1003,50,10,'1','1',NULL,'11:10:00','11:00:00','11:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');

INSERT INTO `mock_exam_booking_slot_tbl` (`id`,`mock_exam_id`,`total_capacity`,`total_booked`,`is_open`,`is_cancelled`,`cancellation_reason`,`start_time`,`reporting_time`,`end_time`,`price`,`created_on`,`created_by`)
VALUES (9,1003,50,10,'1','1',NULL,'13:10:00','13:00:00','13:45:00',100.0,CURRENT_TIMESTAMP(),'test-tool');

