from consultas import *
#flujo para insertar empleados
def insertar_empleado(datos):
    empleados=ConsultaObtener("empleado")
    bli=int(empleados[-1][1])
    run=datos[0]
    nombre=datos[1]
    apellido=datos[2]
    direccion=datos[3]
    cod_emp="00"+str(bli+1)
    cod_aeropuerto=datos[4]
    tipo=datos[5]
    #validaciones del empleado
    emple=ConsultaObtenerPorDato("empleado","run",run)
    codigo=ConsultaObtenerPorDato("empleado","cod_empleado",cod_emp)
    aeropuerto=ConsultaObtenerPorDato("aeropuerto","cod_aeropuerto",cod_aeropuerto)
    per=[run,nombre,apellido,direccion]
    emp=[run,cod_emp,cod_aeropuerto,tipo]
    #verificar datos vacios
    if(datos[0]==""  or datos[1]=="" or datos[2]=="" or datos[3]=="" or datos[4]=="" or datos[5]=="" ):
        return "datos incompletos"
    else:
        #verificar run
        if(validarRut(run)==True):
            # verificar si el empleado esta
            if(emple==False and codigo==False and aeropuerto!=False):
                ConsultaInsertarUno("persona",per)
                ConsultaInsertarUno("empleado",emp)
                return True
            else:
                return "empleado ya existentes o aeropuerto inexistente"
        else:
            return "rut invalido"
#flujo para insertar clientes
def insertar_cliente(datos):
    clientes=ConsultaObtener("cliente")
    #print("cli",clientes)
    run=datos[0]
    nombre=datos[1]
    apellido=datos[2]
    direccion=datos[3]
    num_pasaporte=datos[4]
    kilometro=datos[5]
    #verificar datos vacios
    if(datos[0]==""  or datos[1]=="" or datos[2]=="" or datos[3]=="" or datos[4]=="" or datos[5]==""):
        return "datos incompletos"
    else:
        #verificar run
        if(validarRut(run)==True):
            persona=ConsultaObtenerPorDato("persona","run",run)
            clien=ConsultaObtenerPorDato("cliente","run",run)
            # verificar si el empleado esta
            if(persona==False and clien==False):
                per=[run,nombre,apellido,direccion]
                cli=[run,num_pasaporte,kilometro]
                ConsultaInsertarUno("persona",per)
                ConsultaInsertarUno("cliente",cli)
            else:
                return "empleado ya existentes"
        else:
            return "rut invalido"
def insertar_aeropuerto(datos):
    cod_a=datos[0]
    cod_lugar=datos[1]
    nombre=datos[2]
    num_pistas=datos[3]
    if(datos[0]==""  or datos[1]=="" or datos[2]=="" or datos[3]=="" ):
        return "datos incompletos"
    else:
        aero=ConsultaObtenerPorDato("aeropuerto","cod_aeropuerto",cod_a)
        if(aero==False):
            aeropuerto=[cod_a,cod_lugar,nombre,num_pistas]
            ConsultaInsertarUno("aeropuerto",aeropuerto)
        else:
            return "aeropuerto existente"
def insertar_avion(datos):
    p="piloto"
    pilotos=ConsultaObtenerPorDato("empleado","tipo",p)
    for x in pilotos:
        if 
    cod_avion=datos[0]
    cod_aeropuerto=datos[1]
    capacidad=datos[2]
    modelo=datos[3]
    cap_estanque=datos[4]
    cod_piloto=datos[5]
    
    
    
    
        
        
            
        
        
    
    
    
    
#tablas

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
