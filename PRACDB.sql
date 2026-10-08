 # INSERT into  faltu_log values
#                           (2,true,'nikunj',90807999,'n@n.com','MALE','1898-07-19',DEFAULT),
 #                           (3,false,'omar',90806479,'o@o.com','MALE','1988-06-14',DEFAULT)4
#
#
# select * from faltu_log where gender = 'FEMALE'
# select * from faltu_log  where name like '%y%'
#  SELECT * FROM faltu_log WHERE name LIKE '___';

-- 5. LIKE Queries
-- 'A' se shuru hone wale:
# SELECT * FROM faltu_log WHERE name LIKE 'A%';

-- 'a' par khatam hone wale:
# SELECT * FROM users WHERE name LIKE '%a';

-- Kahi par bhi 'an' aata ho:
# SELECT * FROM users WHERE name LIKE '%an%';

-- Exactly 3 letters ka naam:
# SELECT * FROM users WHERE name LIKE '___';

-- Second letter 'a' ho:
#  SELECT * FROM faltu_log WHERE name LIKE '_a%';

-- 6. NOT LIKE Queries
-- Jinme 'A' hi nai hai:
#  SELECT * FROM faltu_log WHERE name NOT LIKE '%A%' order by id desc ;

-- Jinke naam me kahin bhi 'e' nahi aata:
# SELECT * FROM faltu_log WHERE name NOT LIKE '%e%';




#  SELECT * FROM faltu_log LIMIT 10,5

#  UPDATE faltu_log
#  set name = 'Hannibal'
#  where id=101
#  select * from faltu_log where id=101

#  ALTER table faltu_log modify column gender enum('MALE','FEMALE','GAY','OTHER')

#  INSERT into faltu_log values
#      (124, true, 'sam', 91234521, 'sam.124@n.com', 'OTHER', '1996-10-11', DEFAULT);

#  set autocommit = 0;
#
#  DELETE from faltu_log
# select name,count(*)  as total_count from faltu_log where gender='MALE' GROUP BY name
#  SELECT COUNT(*) AS total_male_count, GROUP_CONCAT(name SEPARATOR ', ') AS male_names
#  FROM faltu_log
#  WHERE gender = 'MALE';


#  select name,date_of_birth,MIN(TIMESTAMPDIFF(year , date_of_birth,current_date)) as min_age from faltu_log group by name,date_of_birth
# select name,length(name) as male_len from faltu_log where gender='OTHER'

#  SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM faltu_log
# select name,faltu_log.gender, if(faltu_log.gender='FEMALE','YES','no') from faltu_log;


# select faltu_log.salary,faltu_log.gender from faltu_log

#   SELECT * from faltu_log where salary >(SELECT AVG(salary) from faltu_log) AND id in (
#       select id
#       from faltu_log
#       WHERE YEAR(date_of_birth)>(
#           SELECT AVG(YEAR(date_of_birth))
#           from faltu_log
#           )
#       )


# select *from forenva

# select faltu_log.name , forenva.street
# from faltu_log
#     inner join forenva on faltu_log.id =forenva.faltu
#  CREATE TABLE admin_users (
#                               id INT PRIMARY KEY,
#                               name VARCHAR(100),
#                               email VARCHAR(100),
#                               gender ENUM('Male', 'Female', 'Other'),
#                               date_of_birth DATE,
#                               salary INT
#  );

 SELECT name, 'User' as role FROM faltu_log
 UNION
 SELECT name, 'Admin' as role FROM admin_users order by name asc ;
