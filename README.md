#psql-testdb-evolutions
###What is
psql-testdb-evolutions is a light weight database migrations tool for quickly rebuilding a test database.

###How to use
1) Copy the files setup_evolutions.sh and run_evolutions.sh to any same folder in your project. 

2) Run setup_evolutions.sh. This will create the file evolutions/(your_schema_name)/0.sql which contains sql queries for dropping the schema and then recreating it (without recreating any of the contents of the schema).

3) Add all the sql-scripts to the folder evolutions/(your_schema_name) with names like 1.sql, 2.sql, 3.sql etc.

4) Run setup_evolutions.sh every time you want to recreate the test database structure.

5) If you find anything to be missing, hack the scripts and improve them to meet your needs.