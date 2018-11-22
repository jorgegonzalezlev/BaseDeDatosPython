
from consultas import *

def Consulta1():
    Tabla= 'personas'
    data=[]
    data=ConsultaObtener(Tabla)
    print("INFO BBDD",data)
    print("\n|=========  DATOS  =========|")
    print("| RUT      : " + data[0][0])
    print("| NOMBRE   : " +data[0][1])
    print("| MAIL     : " +data[0][2])
    print("| TELEFONO : " +data[0][3])
    print("| ID       : " +str(data[0][4]))


#def NroEmpleados():
#def PrecioVuelo():
#def NombreEmpleados():
#def CapacidadPersonasVuelo():
#def NroVueloPersona():
#def ProfesionEmpleado():
#def NombrePersonaComuna():
#def NroVueloLugar():
#def CantidadPasajerosCapacidad()
#def CantidadAvionesBodega():
#def NombreCiudadMayorVuelos():
