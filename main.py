#PROYECTO DE BASE DE DATOS
#INTEGRANTES: 
# - Integrante 1
# - Integrante 2
# - Integrante 3
# - Integrante 4

from funciones import * 

while True:
    print("\n========| MAIN |========\n")
    opcion=raw_input("1) Empleados \n2)avion \n3)cliente \n4)aeropuerto \n5)Destinos \n6)reserva \n7)vuelo \n8)pasajes")
    
    if(opcion == '1'):
        print("-"*15)
        opcionempleado=input("\nEmpleados: \n 1) insertar \n 2)mostrar \n 3)borrar \n 4)buscar")
        Consulta1()
    else if(opcion == '2'):
        print("\n   LOH VIMOH\n")
        print("        _\ _~-\___ ")
        print("=  = ==(____AA____D")
        print("            \_____\___________________,-~~~~~~~`-.._")
        print("            /     o O o o o o O O o o o o o o O o  |\_")
        print("            `~-.__        ___..----..                  )")
        print("                  `---~~\___________/------------`````")
        print("                   =  ===(_________D")
        
        break
    else:
        print("\n Opcion erronea\n")
    
    print("\n=========================\n")
    
##menu: 