	  SELECT * FROM (
				SELECT b.*, rownum rnum
				FROM (SELECT * from usermessage order by mgDate desc) b)
				WHERE RNUM >= 0 and rnum <= 5

  