import psycopg2
engine = psycopg2.connect(
    dbname="db_taller7",
    user="postgres",
    password="holisporolis",
    host="database-1.cawjvstdghlo.us-east-1.rds.amazonaws.com",
    port=5432
)