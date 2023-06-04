
import obd
import mysql.connector

connection = obd.OBD()

if not connection.is_connected():
    print("Unable to connect to the OBD-II adapter")
    exit()

db = mysql.connector.connect(
    host="localhost:3306",
    user="root",
    database="grafana"
)
cursor = db.cursor()

def read_and_store_data():

    speed = obd.commands.SPEED
    rpm = obd.commands.RPM
    coolant_temp = obd.commands.COOLANT_TEMP
    oil_temp = obd.commands.OIL_TEMP
    fuel_status = obd.commands.FUEL_STATUS
    fuel_pressure = obd.commands.FUEL_PRESSURE
    fuel_type = obd.commands.FUEL_TYPE

    speed_response = connection.query(speed)
    rpm_response = connection.query(rpm)
    coolant_temp_response = connection.query(coolant_temp)
    oil_temp_response = connection.query(oil_temp)
    fuel_status_response = connection.query(fuel_status)
    fuel_pressure_response = connection.query(fuel_pressure)
    fuel_type_response = connection.query(fuel_type)

    speed_value = speed_response.value.magnitude
    rpm_value = rpm_response.value.magnitude
    coolant_temp_value = coolant_temp_response.value.magnitude
    oil_temp_value = oil_temp_response.value.magnitude
    fuel_status_value = fuel_status_response.value.magnitude
    fuel_pressure_value = fuel_pressure_response.value.magnitude
    fuel_type_value = fuel_type_response.value.magnitude

    query = "INSERT INTO obd_data_1 (speed, rpm, coolant_temp,oil_temp,fuel_status,fuel_pressure,fuel_type) VALUES (%s, %s, %s, %s, %s, %s, %s,)"
    values = (speed_value, rpm_value, coolant_temp_value, oil_temp_value, fuel_status_value, fuel_pressure_value, fuel_type_value )

    cursor.execute(query, values)
    db.commit()

read_and_store_data()

cursor.close()
db.close()
