DROP TABLE IF EXISTS bs_admin_registration;
CREATE TABLE bs_admin_registration(
	user_id                     	INT  			NOT NULL 	UNIQUE AUTO_INCREMENT 	
,   telephone						VARCHAR(20)	    NULL  
,   email_id                     	VARCHAR(40)		NULL NULL 	
,   password                    	VARCHAR(1000)   NOT NULL    -- BLOB
,	salt						 	VARCHAR(20)		NULL        
,   password_reset_token			VARCHAR(40)		NULL
,	password_reset_time				DATETIME		NULL
,   otp_code						VARCHAR(11)		NULL
,	otp_time						DATETIME		NULL
,	first_name				 		VARCHAR(50)		NULL
,	last_name				 		VARCHAR(50)		NULL
,	middle_name				 		VARCHAR(50)		NULL
,   secret_code						VARCHAR(50)		NULL  
, 	company_name 					VARCHAR(120)	NULL
,   display_name					VARCHAR(15) 	NULL 		-- Display Name for Privacy
,	gender_id						INT      		NULL 	-- CODE GENDER
,   date_of_birth					DATETIME		NULL
,   user_type_id                	INT  			NOT NULL    -- CODE USER_TYPE
,   user_source_id                	INT  		    NULL    -- CODE USER_SOURCE
,	employee_number				 	VARCHAR(50)		NULL        -- For Employee Only
,   employee_type_id				INT   			NULL 		-- CODE EMPLOYEE_TYPE
,   employee_role_id				INT   			NULL 		-- CODE EMPLOYEE_ROLE
,   employee_status_id         		INT   			NULL 		-- CODE EMPLOYEE_STATUS
,   record_status_id		    	INT			    NULL	-- LOOKUP TYPE - RECORD_STATUS
,	date_created					DATETIME
,	user_created					INT
,	date_updated					DATETIME
,	user_updated					INT
);


