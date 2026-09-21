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


