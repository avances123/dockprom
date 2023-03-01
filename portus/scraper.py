import requests
import psycopg2


URL=f"https://portus.puertos.es/portussvr/api/predData/portus/WAVE/{estacion}?locale=es"


connection = psycopg2.connect(user="postgres", password="password", host="127.0.0.1", port="5432", database="postgres")
cursor = connection.cursor()
cursor.execute("select * from portus.estaciones")
estaciones_records = cursor.fetchall()

for record in estaciones_records:
    pass





