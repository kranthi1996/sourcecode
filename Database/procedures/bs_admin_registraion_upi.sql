
DROP procedure IF EXISTS `bs_admin_registration_upi`;

-- --------------------------------------------------------------------------------
-- Created Date : 17th Nov 2018
-- --------------------------------------------------------------------------------

DELIMITER $$

CREATE DEFINER=`DevelopElse`@`%` PROCEDURE `bs_admin_registration_upi`(
			 IN		i_user_id                     	INT  			
			,IN		i_email_id 	                   	VARCHAR(40) 		
			,IN		i_password                    	VARCHAR(20)    		
			,IN		i_user_type_id                	INT  
			,IN     i_date_created                  DATETIME
			,IN		i_user_source_code              VARCHAR(100) -- Pass the login source as code from Look up value(ANDROID/IPHONE/APPLICATION)			
			,IN		i_record_status_id		    	INT	-- Normally null. Only from admin panel need to pass id		
			,IN		i_user_updated					INT  
            ,IN     i_date_updated                  DATETIME
            ,OUT	o_return_value					VARCHAR(100)
			    )
BEGIN 
    
      DECLARE email_existed VARCHAR(50);
     IF i_user_id IS NULL THEN  
            
          IF NOT EXISTS(SELECT user_id FROM bs_admin_registration WHERE email_id=i_email_id AND user_type_id=i_user_type_id) THEN
          
             START TRANSACTION;
		    INSERT INTO bs_admin_registration(email_id,password,user_type_id,date_created) values(i_email_id,MD5(i_password),i_user_type_id,i_date_created);
              
              SET email_existed = 'USER_CREATED' ;
              COMMIT;
		  ELSE
           START TRANSACTION;
              SET email_existed = 'EMAILID_EXISTED' ;
              COMMIT;
         END IF;    
         
	ELSE
			UPDATE bs_admin_registration_upi 
			SET 
             email_id=i_email_id
            ,password=md5(i_password)
            ,record_status_id = IFNULL(i_record_status_id,record_status_id)
		    ,date_updated = NOW()
		    ,user_updated = i_user_updated
            where user_id = i_user_id
            ;
	  SET 
           email_existed = 'USER_UPDATED' ;
    END IF;
    
    
    SET o_return_value = email_existed;
    
end
$$

DELIMITER ;