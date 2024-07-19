-- Create a new user named 'library_user' with password 'secure_password'
CREATE USER library_user1@localhost IDENTIFIED BY '123';



-- Grant SELECT and INSERT privileges on the 'Library' database

GRANT SELECT, INSERT ON Library.* TO library_user1@localhost;


-- Show currently granted privileges for library_user
SHOW GRANTS FOR library_user1@localhost;


-- Revoke INSERT privilege from the 'Library' database
REVOKE INSERT ON Library.* FROM library_user1@localhost;


-- Verify remaining privileges after revocation
SHOW GRANTS FOR library_user1@localhost;


-- Drop the user 'library_user' (be cautious as this is permanent)
DROP USER library_user1@localhost;
