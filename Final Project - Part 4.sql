USE voters;

-- 1. Select the id, city , town, cip code and country of the addresses on the addresses table where constituecy id id between 1 and 9
SELECT id, city, town, Zip_code, Country
FROM addresses 
WHERE constituency_table_id 
BETWEEN 1 AND 9
ORDER BY id;

-- 2.Insert into the constituency table for constituency name, constituency code, and regions id values "Nakakpo", "23465", and "9".
INSERT INTO constituency_table (constituency_name, constituecy_code, Regions_id)
VALUES ('Nakakpo', '23465', '9' );

-- 3. This statement deletes from the regions table where the values for region_name and id are "CENTRAL" and 1.
DELETE FROM regions
 WHERE region_name = "CENTRAL" 
 AND id = 4;
 
-- 4. Update the user table where id is "9' with the first_name = 'Daniel', last_name = 'Amartey', 
-- email = 'damartey@gmail.com', phone_number = '234234234', date_of_birth = '1985-08-24', gender = 'Male'
UPDATE user 
SET 
    first_name = 'Daniel',
    last_name = 'Amartey',
    email = 'damartey@gmail.com',
    phone_number = '234234234',
    date_of_birth = '1985-08-24',
    gender = 'Male'
WHERE
    id = 9;

-- 5. This statement creates a new table called special table with the id, image, 
-- signature, exp_date, issue_date, addresses id, and user id from the coter card 
-- info table where user id is less than 7.
CREATE TABLE special_table AS
SELECT id, image, signature, exp_date, issue_date, addresses_id, user_id
FROM voter_card_info
WHERE user_id < 7;

