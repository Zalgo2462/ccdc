::Sets a common password for all users in the domain
DSQUERY user -limit 0 | DSMOD user -pwd _REPLACE_
