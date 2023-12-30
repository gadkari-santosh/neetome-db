create database IF NOT EXISTS neetome character set utf8mb4 collate utf8mb4_bin;

use neetome;

-- author table
CREATE TABLE author_tbl (
  id BIGINT  NOT NULL AUTO_INCREMENT,
   name VARCHAR(255) NULL,
   `description` VARCHAR(4000) NULL,
   address VARCHAR(255) NULL,
   p_contact VARCHAR(255) NULL,
   s_contact VARCHAR(255) NULL,
   email VARCHAR(255) NULL,
   created_on datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_author_tbl PRIMARY KEY (id)
);

-- exam table
CREATE TABLE exam_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   name NVARCHAR(100) NULL,
   `description` NVARCHAR(200) NULL,
   authority NVARCHAR(100) NULL,
   medium VARCHAR(255) NULL,
   img_name VARCHAR(100) NULL,
   subjects VARCHAR(100) NULL,
   grades VARCHAR(100) NULL,
   reg_url VARCHAR(255) NULL,
   exam_url VARCHAR(255) NULL,
   reg_mode_info VARCHAR(1000) NULL,
   reg_mode VARCHAR(255) NULL,
   created_on datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_exam_tbl PRIMARY KEY (id),
   CONSTRAINT uc_exam_name UNIQUE (name)
);

-- exam registration information table
CREATE TABLE exam_reg_info_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   exam_id BIGINT NULL,
   grade VARCHAR(255) NULL,
   exam_dt date NULL,
   exam_time time NULL,
   reg_start_dt date NULL,
   is_active VARCHAR(1) NULL,
   reg_end_dt date NULL,
   created_on datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_exam_reg_info_tbl PRIMARY KEY (id)
);

ALTER TABLE exam_reg_info_tbl ADD CONSTRAINT FK_EXAM_REG_INFO_TBL_ON_EXAM FOREIGN KEY (exam_id) REFERENCES exam_tbl (id);

-- file storage table
CREATE TABLE file_storage_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   name VARCHAR(255) NULL,
   type VARCHAR(255) NULL,
   data LONGBLOB NULL,
   CONSTRAINT pk_file_storage_tbl PRIMARY KEY (id)
);

-- mock exam
CREATE TABLE mock_exam_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   img_name VARCHAR(255) NULL,
   author_id BIGINT NULL,
   exam_id BIGINT NULL,
   is_active TINYINT(1) NOT NULL,
   exam_dt date NULL,
   exam_duration BIGINT NOT NULL,
   mode VARCHAR(255) NULL,
   full_addr VARCHAR(2000) NULL,
   city VARCHAR(255) NULL,
   short_addr VARCHAR(255) NULL,
   contact_phone VARCHAR(255) NULL,
   contact_name VARCHAR(255) NULL,
   grade VARCHAR(20) NULL,
   price double NOT NULL,
   created_on datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_mock_exam_tbl PRIMARY KEY (id)
);

ALTER TABLE mock_exam_tbl ADD CONSTRAINT FK_MOCK_EXAM_TBL_ON_AUTHORENTITY FOREIGN KEY (author_id) REFERENCES author_tbl (id);

ALTER TABLE mock_exam_tbl ADD CONSTRAINT FK_MOCK_EXAM_TBL_ON_EXAMENTITY FOREIGN KEY (exam_id) REFERENCES exam_tbl (id);

-- Mock exam booking slots
CREATE TABLE mock_exam_booking_slot_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   mock_exam_id BIGINT NOT NULL,
   total_capacity INT NULL,
   total_booked INT NULL,
   is_open TINYINT(1) NULL,
   is_cancelled TINYINT(1) NULL,
   cancellation_reason VARCHAR(255) NULL,
   start_time time NULL,
   reporting_time time NULL,
   end_time time NULL,
   created_on datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_mock_exam_booking_slot_tbl PRIMARY KEY (id)
);

ALTER TABLE mock_exam_booking_slot_tbl ADD CONSTRAINT FK_MOCK_EXAM_BOOKING_SLOT_TBL_ON_MOCK_EXAM FOREIGN KEY (mock_exam_id) REFERENCES mock_exam_tbl (id);

-- practice table
CREATE TABLE practice_tbl (
   id BIGINT NOT NULL AUTO_INCREMENT,
   name NVARCHAR(255) NULL,
   exam_id BIGINT NULL,
   author_id BIGINT NULL,
   image VARCHAR(255) NULL,
   subjects VARCHAR(1000) NULL,
   grade VARCHAR(255) NULL,
   offering VARCHAR(255) NULL,
   is_active TINYINT(1) NOT NULL default 0,
   display_order INT NULL,
   CONSTRAINT pk_practice_test_booklet_tbl PRIMARY KEY (id)
);

ALTER TABLE practice_tbl ADD CONSTRAINT FK_PRACTICE_TBL_ON_AUTHORENTITY FOREIGN KEY (author_id) REFERENCES author_tbl (id);

ALTER TABLE practice_tbl ADD CONSTRAINT FK_PRACTICE_TBL_ON_EXAMENTITY FOREIGN KEY (exam_id) REFERENCES exam_tbl (id);

-- past papers table
CREATE TABLE question_papers_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
  name NVARCHAR(255) NULL,
   exam_id BIGINT NULL,
   author_id BIGINT NULL,
   image VARCHAR(255) NULL,
   subjects VARCHAR(1000) NULL,
   grade VARCHAR(255) NULL,
   offering VARCHAR(255) NULL,
   is_active TINYINT(1) NOT NULL default 0,
   display_order TINYINT(1) NULL,
   CONSTRAINT pk_question_papers_tbl PRIMARY KEY (id)
);

ALTER TABLE question_papers_tbl ADD CONSTRAINT FK_QUESTION_PAPERS_TBL_ON_AUTHORENTITY FOREIGN KEY (author_id) REFERENCES author_tbl (id);

ALTER TABLE question_papers_tbl ADD CONSTRAINT FK_QUESTION_PAPERS_TBL_ON_EXAMENTITY FOREIGN KEY (exam_id) REFERENCES exam_tbl (id);


-- testimony table
CREATE TABLE testimony_tbl (
  id BIGINT NOT NULL AUTO_INCREMENT,
   testimony VARCHAR(255) NOT NULL,
   cust_name VARCHAR(255) NULL,
   rating FLOAT NOT NULL,
   location VARCHAR(255) NULL,
   cust_profile VARCHAR(255) NULL,
   created_ts datetime NULL,
   created_by VARCHAR(255) NULL,
   CONSTRAINT pk_testimony_tbl PRIMARY KEY (id)
);

-- academics table

CREATE TABLE academics_board_tbl (
  id BIGINT AUTO_INCREMENT NOT NULL,
   name VARCHAR(255) NULL,
   `description` VARCHAR(255) NULL,
   authority VARCHAR(255) NULL,
   img_name VARCHAR(255) NULL,
   grades VARCHAR(255) NULL,
   default_grade VARCHAR(100) NULL,
   is_active TINYINT(1) NULL,
    created_on datetime NULL,
      created_by VARCHAR(255) NULL,
   CONSTRAINT pk_academics_board_tbl PRIMARY KEY (id)
);

update academics_board_tbl set default_grade='G_3';

CREATE TABLE nitome_config_tbl (
   id int NOT NULL AUTO_INCREMENT,
   prop_name VARCHAR(255) NULL,
   prop_value VARCHAR(255) NULL,
   description VARCHAR(255) NULL,
   is_active BIT(1) NULL,
   created_by VARCHAR(255) NULL,
   created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   CONSTRAINT pk_nitome_config_tbl PRIMARY KEY (id),
   CONSTRAINT uq_nitome_confgi_tbl UNIQUE (prop_name, is_active)

);

CREATE TABLE user_reviews_tbl (
  id BIGINT AUTO_INCREMENT NOT NULL,
   ref_id BIGINT NULL,
   rating INT NULL,
   headline VARCHAR(255) NULL,
   review VARCHAR(255) NULL,
   user_id BIGINT NULL,
   user_name VARCHAR(255) NULL,
   tag VARCHAR(255) NOT NULL,
   status VARCHAR(255) NULL,
   updated_on datetime NULL,
   created_on datetime NULL,
   CONSTRAINT pk_user_reviews_tbl PRIMARY KEY (id)
);

CREATE TABLE practice_reviews_tbl (
  id BIGINT AUTO_INCREMENT NOT NULL,
   avg_rating FLOAT NULL,
   total_reviews BIGINT NULL,
   r_1 BIGINT NULL,
   r_2 BIGINT NULL,
   r_3 BIGINT NULL,
   r_4 BIGINT NULL,
   r_5 BIGINT NULL,
   updated_on datetime NULL,
   ref_id BIGINT NULL,
   CONSTRAINT pk_practice_reviews_tbl PRIMARY KEY (id)
);

ALTER TABLE practice_reviews_tbl ADD CONSTRAINT uc_practice_reviews_tbl_practice UNIQUE (ref_id);

ALTER TABLE practice_reviews_tbl ADD CONSTRAINT FK_PRACTICE_REVIEWS_TBL_ON_PRACTICE FOREIGN KEY (ref_id) REFERENCES practice_tbl (id);

CREATE TABLE qpapers_reviews_tbl (
  id BIGINT AUTO_INCREMENT NOT NULL,
   avg_rating FLOAT NULL,
   total_reviews BIGINT NULL,
   r_1 BIGINT NULL,
   r_2 BIGINT NULL,
   r_3 BIGINT NULL,
   r_4 BIGINT NULL,
   r_5 BIGINT NULL,
   updated_on datetime NULL,
   ref_id BIGINT NULL,
   CONSTRAINT pk_practice_reviews_tbl PRIMARY KEY (id)
);

ALTER TABLE qpapers_reviews_tbl ADD CONSTRAINT uc_qpapers_reviews_tble UNIQUE (ref_id);

ALTER TABLE qpapers_reviews_tbl ADD CONSTRAINT FK_QPAPERS_REVIEWS_TBL_ON_PRACTICE FOREIGN KEY (ref_id) REFERENCES question_papers_tbl (id);


