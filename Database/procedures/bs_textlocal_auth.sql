
DROP PROCEDURE IF EXISTS  bs_textlocal_auth;

-- --------------------------------------------------------------------------------
-- Created Date : 19th nov 2018
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `bs_textlocal_auth`
				(
					IN      i_apikey		VARCHAR(30)
                   
				)
begin
	 
	SELECT		m.apikey
    FROM		bs_textlocal_auth m;
end $$

DELIMITER ;