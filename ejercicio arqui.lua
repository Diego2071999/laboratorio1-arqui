import pyfirmata
 
puerto = 'COM6' #Puerto COM de emulación en USB
pin = (13) #PIN donde va conectado el LED
 
#Conexión con placa Arduino
print("Conectando con Arduino por USB...")
tarjeta = pyfirmata.Arduino(puerto)
print("Conectado a Arduino por USB...")
while True:
    print("Encendiendo LED...")
    tarjeta.digital[pin].write(1)
    tarjeta.pass_time(0.5)
    print("Apagando LED...")
    tarjeta.digital[pin].write(0)
    tarjeta.pass_time(0.5)
tarjeta.exit()
