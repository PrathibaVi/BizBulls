create table USER_DETAILS(
USER_ID VARCHAR(60) PRIMARY KEY,
FIRST_NAME VARCHAR(250),
LAST_NAME VARCHAR(250) ,
MOBILE_INT INT(10) Not Null,
EMAIL_ID VARCHAR(60) ,
PASSWORD VARCHAR(100) ,
ROLE_ID INT(2) Not Null,
ADDRESS_ID VARCHAR(50) Not Null,
STATUS VARCHAR(20) Not Null,
LAST_LOGIN DATE 
);

create table USER_ADDRESS_DETAILS(
ADDRESS_ID VARCHAR(50),
USER_ID VARCHAR(60),
ADDRESS_LINE_1 VARCHAR(500) Not Null,
ADDRESS_LINE_2 VARCHAR(500), 
CITY VARCHAR(200), 
DISTRICT VARCHAR(100) Not Null,
STATE VARCHAR(100) Not Null,
LAST_UPDATED date ,
PRIMARY KEY(ADDRESS_ID, USER_ID)
);

create table OTP_DETAILS(
MOBILE_INT INT(10) Not Null,
OTP VARCHAR(250) Not Null,
TIME_CREATED DATE Not Null
);

create table ROLE_DETAILS(
ROLE_ID INT(10) PRIMARY KEY,
ROLE_NAME VARCHAR(250) Not Null,
ROLE_DESCRIPTION VARCHAR(2000) ,
LAST_UPDATED DATE 
);


create table INBOX_LAYOUT
(
ROLE_ID INT(10) Not Null,
SECTION_ID INT(3) Not Null,
SECTION_HEADING VARCHAR(200) Not Null,
SECTION_TEXT VARCHAR(500) ,
SECTION_ITEM_ID INT(10) Not Null,
SECTION_ITEM_NAME VARCHAR(250) Not Null,
SECTION_ITEM_ICON_NAME VARCHAR(250) Not Null,
SECTION_ITEM_URL VARCHAR(250) Not Null,
SECTION_ITEM_DESCRIPTION VARCHAR(2000) ,
SECTION_SEQUENCE INT(3) ,
LAST_UPDATED DATE ,
PRIMARY KEY(ROLE_ID, SECTION_ID, SECTION_ITEM_ID)
);


create table INBOX_USER_CUSTOMIZATION
(
USER_ID VARCHAR(60) Not Null,
SECTION_ID INT(3) Not Null,
SECTION_ITEM_ID INT(10) Not Null,
SECTION_ITEM_NAME VARCHAR(250) Not Null,
SECTION_ITEM_ICON_NAME VARCHAR(250) Not Null,
SECTION_ITEM_DESCRIPTION VARCHAR(2000) ,
SECTION_ITEM_URL VARCHAR(250) Not Null,
PRIMARY KEY(USER_ID, SECTION_ID, SECTION_ITEM_ID)
);

create table SUB_MENU_ITEMS
(
SECTION_ITEM_ID INT(10) Not Null,
SUBSEC_ITEM_NAME VARCHAR(250) Not Null,
SUBSEC_ITEM_ICON_NAME VARCHAR(250) Not Null,
SUBSEC_ITEM_DESCRIPTION VARCHAR(2000) ,
SUBSEC_ITEM_URL VARCHAR(250) Not Null,
SUBSEC_ITEM_SEQ INT(3) ,
PRIMARY KEY(SECTION_ITEM_ID, SUBSEC_ITEM_NAME)
);

create table PROCESS_DEFINITIONS
(
Process_ID INT(10) Not Null,
Process_Name VARCHAR(200) Not Null,
Stage_Name VARCHAR(200) Not Null,
Stage_seq INT(3) Not Null,
Parent_Stage INT(3) Not Null,
Stage_optional VARCHAR(1) ,
APPROVER_ROLE_ID_1 INT(10) Not Null,
APPROVER_ROLE_ID_2 INT(10) ,
APPROVER_ROLE_ID_3 INT(10) ,
APPROVER_ROLE_ID_4 INT(10) ,
APPROVER_ROLE_ID_5 INT(10) 
);

create table USER_MOD_REQUESTS
(
USER_ID VARCHAR(60) Not Null,
Process_ID INT(10) Not Null,
Stage_seq INT(3) Not Null,
Expiry_date DATE Not Null,
STATUS VARCHAR(10) Not Null,
Stage_start_date DATE Not Null,
Stage_completed DATE ,
Stage_outcome VARCHAR(50), 
Remarks VARCHAR(2000) 
);

create table FO_PERSONAL_DETAILS_REFERANCE
(
fo_Personal_item_id INT(3) Not null,
fo_item_display_name VARCHAR(200) Not Null,
display_sequence INT(3) Not Null,
button_display VARCHAR(20) Not Null,
pre_post_button VARCHAR(4) Not Null,
same_or_new_line VARCHAR(4) Not Null,
is_drop_down VARCHAR(1) Not Null,
drop_down_list VARCHAR(500) Not Null,
pre_pop_text VARCHAR(500) ,
PRIMARY KEY(fo_Personal_item_id)
);

create table FO_PERSONAL_DETAILS
(
USER_ID VARCHAR(60) Not Null,
fo_Personal_item_id INT(3) Not Null,
Item_values  VARCHAR(500) ,
PRIMARY KEY(USER_ID, fo_Personal_item_id)
);

create table FO_HEALTH_DETAILS_REFERANCE
(
fo_health_item_id INT(3) Not null,
fo_item_display_name VARCHAR(200) Not Null,
display_sequence INT(3) Not Null,
button_display VARCHAR(20) Not Null,
pre_post_button VARCHAR(4) Not Null,
same_or_new_line VARCHAR(4) Not Null,
is_drop_down VARCHAR(1) Not Null,
drop_down_list VARCHAR(500) Not Null,
pre_pop_text VARCHAR(500) ,
PRIMARY KEY(fo_health_item_id)
);

create table FO_HEALTH_DETAILS
(
USER_ID VARCHAR(60) Not Null,
fo_health_item_id INT(3) Not Null,
Item_values  VARCHAR(500) ,
PRIMARY KEY(USER_ID, fo_health_item_id)
);

create table FO_EOI_DETAILS_REFERANCE
(
fo_EIO_item_id INT(3) Not null,
fo_item_display_name VARCHAR(200) Not Null,
display_sequence INT(3) Not Null,
button_display VARCHAR(20) Not Null,
pre_post_button VARCHAR(4) Not Null,
same_or_new_line VARCHAR(4) Not Null,
is_drop_down VARCHAR(1) Not Null,
drop_down_list VARCHAR(500) Not Null,
pre_pop_text VARCHAR(500) ,
PRIMARY KEY(fo_EIO_item_id)
);

create table FO_EOI_DETAILS
(
USER_ID VARCHAR(60) Not Null,
fo_EIO_item_id INT(3) Not Null,
Item_values  VARCHAR(500) ,
PRIMARY KEY(USER_ID, fo_EIO_item_id)
);

create table fo_Academic_details
(
user_id VARCHAR(60) Not Null,
qualification_seq INT(3) ,
Qualification VARCHAR(200), 
Institution_name VARCHAR(200), 
Board_university VARCHAR(200) ,
year_of_passing INT(4) ,
Percentage INT(2) ,
PRIMARY KEY(user_id,qualification_seq )
);

create table fo_social_security_details
(
user_id VARCHAR(60) Not Null,
adhaar_no INT(12)  Not Null,
pancard_no VARCHAR(10) ,
DL_no VARCHAR(50) ,
passport_no VARCHAR(10), 
voter_id_no VARCHAR(50) ,
ration_card_no VARCHAR(50), 
PRIMARY KEY(user_id)
);

create table fo_user_bank_details
(
user_id VARCHAR(60) Not Null,
Bank_Name VARCHAR(200) ,
Account_name VARCHAR(200), 
Branch_name VARCHAR(200) ,
IFSC_CODE VARCHAR(10) ,
ACC_TYPE VARCHAR(20) ,
PRIMARY KEY(user_id)
);

create table fo_user_family_details
(
user_id VARCHAR(60) Not Null,
member_name VARCHAR(200) Not Null,
relation VARCHAR(50) Not Null,
age INT(3) Not Null,
education VARCHAR(100), 
occupation VARCHAR(100), 
monthly_income INT(20) ,
contact_number INT(12) ,
address VARCHAR(500) ,
PRIMARY KEY(user_id)
);

create table fo_user_children_details
(
user_id VARCHAR(60) Not Null,
Child_name VARCHAR(200) Not Null,
age INT(3) Not Null,
sex VARCHAR(20) ,
stays_with VARCHAR(100), 
PRIMARY KEY(user_id, Child_name)
);

create table fo_user_personal_refs
(
user_id VARCHAR(60) Not Null,
Personal_ref_Seq INT(3) Not Null,
name VARCHAR(200) Not Null,
relation VARCHAR(50) Not Null,
sex VARCHAR(20) ,
age INT(3) Not Null,
occupation VARCHAR(100), 
location VARCHAR(100) ,
contact_number INT(12) Not Null,
address VARCHAR(500) ,
PRIMARY KEY(user_id,Personal_ref_Seq )
);

create table FO_CHECKLIST_DIFINATIONS
(
checklist_section_Seq INT(3),
chkl_section_heading VARCHAR(200),
chkl_sect_item_Seq INT(3),
chkl_sect_item_text VARCHAR(500),
PRIMARY KEY(checklist_section_Seq,chkl_sect_item_Seq )
);

create table FO_USER_CHECKLIST_VALUES
(
user_id VARCHAR(60) Not Null,
checklist_section_Seq INT(3) Not Null,
chkl_sect_item_Seq INT(4) Not Null,
is_checked VARCHAR(1) Not Null,
PRIMARY KEY(user_id, chkl_sect_item_Seq)
);
