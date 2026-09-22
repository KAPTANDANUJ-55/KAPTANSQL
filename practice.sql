# select name ,gender from users where date_of_birth<= '1996-09-08'

# select name, gender from  users where date_of_birth is

# select name,gender from users where date_of_birth between '1998-09-09' and '1999-09-09'

# select * from users where gender='Female' AND salary>70000

# select * from users where gender='Male' LIMIT 10
# select * from users  where name like '%y%'

# SELECT * FROM users WHERE name LIKE '___';

-- 5. LIKE Queries
-- 'A' se shuru hone wale:
# SELECT * FROM users WHERE name LIKE 'A%';

-- 'a' par khatam hone wale:
# SELECT * FROM users WHERE name LIKE '%a';

-- Kahi par bhi 'an' aata ho:
# SELECT * FROM users WHERE name LIKE '%an%';

-- Exactly 3 letters ka naam:
# SELECT * FROM users WHERE name LIKE '___';

-- Second letter 'a' ho:
# SELECT * FROM users WHERE name LIKE '_a%';

-- 6. NOT LIKE Queries
-- Jo 'A' se start nahi hote:
# SELECT * FROM users WHERE name NOT LIKE 'A%';

-- Jinke naam me kahin bhi 'e' nahi aata:
# SELECT * FROM users WHERE name NOT LIKE '%e%';



# select name, salary from users where name='tushar'

# UPDATE users set name= 'Kaptan Danuj' where email='aisha@example.com'

# select name,users.email from users where email='aisha@example.com'


# select name,email from users where name like'kaptan%'


# ALTER table users add constraint unique (password)
#  SELECT * FROM users WHERE salary < 20000 OR salary IS NULL;

-- Jinki salary 20000 se kam ya khali hai unhe 20000 kar do:
# UPDATE users
# SET salary = 20000
# WHERE salary < 20000 OR salary IS NULL;


#  ALTER TABLE users
#      ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-07-02');
# #
# SELECT id, name, date_of_birth
# FROM users
# WHERE date_of_birth <= '2000-01-01' OR date_of_birth IS NULL;

# select MIN(users.salary) AS Min_Salary, MAX(salary) AS Max_Salary from users


# SELECT sum(users.salary) AS tot_sal from users
# SELECT name,AVG(salary) AS avg_sal from users GROUP BY name order by name desc
# SELECT gender,SUM(salary) AS tot_sal from users GROUP BY gender

# SELECT name, LOWER(name) AS lowercase_name, UPPER(name) AS uppercase_name FROM users
# SELECT id,gender, CONCAT(name, ' <', email, '>') AS user_contact, now() as time,year(date_of_birth) as yob FROM users;
# SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
# SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;
# SELECT salary,
#        ROUND(salary) AS rounded,
#        FLOOR(salary) AS floored,
#        CEIL(salary) AS ceiled
# FROM users;
# SELECT name, gender,
#        IF(gender = 'Female', 'Yes', 'No') AS is_female
# FROM users;

#  set autocommit =1;


# -- shifting and resequence
# -- Resequencing IDs from 1 to N without gaps
#  SET @count = 0;
#  UPDATE users
# SET id = (@count := @count + 1)
# ORDER BY id ASC;
#
# -- Shift Down (ID 5 par jagah banane ke liye IDs ko aage dhakelna)
# -- Note: DESC order zaroori hai taaki duplicate primary key collision na ho
# UPDATE users
# SET id = id + 1
# WHERE id >= 5
# ORDER BY id DESC;
#
# -- Shift Up (ID 5 delete hone ke baad baaki records ko peeche lana)
# UPDATE users
# SET id = id - 1
# WHERE id > 5
# ORDER BY id ASC;
#
# -- Temporary Swap (Jesse aur doosre record ki ID aapas me badalna)
# UPDATE users SET id = 999 WHERE id = 3;
# UPDATE users SET id = 3 WHERE id = 8;
# UPDATE users SET id = 8 WHERE id = 999;

#
# delete from users where id = 8;

# -- Agar record pehle se exist kare (id conflict) toh update karo, warna insert karo (UPSERT)
# INSERT INTO users (id, name, age)
# VALUES (5, 'Walter White', 52)
# ON DUPLICATE KEY UPDATE
#     name = VALUES(name),
#     age = VALUES(age);
#
# -- Agar record pehle se ho toh error na de, chupchap ignore kar de
# INSERT IGNORE INTO users (id, name, age)
# VALUES (5, 'Walter White', 52);
#
# -- Ek table se doosri table me data copy karna
# INSERT INTO users_backup (name, age)
# SELECT name, age FROM users WHERE age > 30;
#
#
#
# select * from users