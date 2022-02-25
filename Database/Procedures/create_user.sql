DELIMITER //

create procedure create_user(
IN p_USER_ID VARCHAR(60),
IN p_FIRST_NAME VARCHAR(250),
IN p_LAST_NAME VARCHAR(250) ,
IN p_MOBILE_INT INT(10) ,
IN p_EMAIL_ID VARCHAR(60) ,
IN p_PASSWORD VARCHAR(100) ,
IN p_ROLE_ID INT(2) ,
IN p_ADDRESS_LINE_1 VARCHAR(500) ,
IN p_ADDRESS_LINE_2 VARCHAR(500), 
IN p_CITY VARCHAR(200), 
IN p_DISTRICT VARCHAR(100) ,
IN p_STATE VARCHAR(100) )
BEGIN
DECLARE l_ADD_ID INT(10);
SELECT IFNULL(MAX(address_id), 0) + 1 INTO l_ADD_ID  from USER_ADDRESS_DETAILS;
insert into USER_ADDRESS_DETAILS (ADDRESS_ID , USER_ID,ADDRESS_LINE_1,ADDRESS_LINE_2,CITY, DISTRICT ,STATE ,LAST_UPDATED) values
(l_ADD_ID,p_USER_ID ,p_ADDRESS_LINE_1 , p_ADDRESS_LINE_2 , p_CITY , p_DISTRICT ,p_STATE ,SYSDATE   );
insert into USER_DETAILS(USER_ID ,FIRST_NAME, LAST_NAME, MOBILE_INT,EMAIL_ID , PASSWORD,ROLE_ID,ADDRESS_ID, STATUS,LAST_LOGIN)
values
(p_USER_ID, p_FIRST_NAME, p_LAST_NAME, p_MOBILE_INT,p_EMAIL_ID , p_PASSWORD,p_ROLE_ID,l_ADD_ID, 'Active',sysdate);
END//

DELIMITER ;