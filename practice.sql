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