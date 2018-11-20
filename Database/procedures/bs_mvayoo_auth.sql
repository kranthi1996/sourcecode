use bsdev;
DROP PROCEDURE IF EXISTS  bs_mvayyo_auth;

-- --------------------------------------------------------------------------------
-- Created Date : 19th nov 2018
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `bs_mvayyo_auth`
				(
					IN      username		VARCHAR(30),
                    IN      password        VARCHAR(15)
				)
begin
	 
	SELECT		m.username
	,			m.password
    FROM		bs_mvayyo_auth m;
end $$

DELIMITER ;