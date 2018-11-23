# -*- coding: utf-8 -*-
#!/usr/bin/env python
from mysql.connector import (connection)

def run_query(query=''): 
    conn = connection.MySQLConnection(user='root', password='',host='127.0.0.1',database='bbdd')# Conectar a la base de datos 
    cursor = conn.cursor()         # Crear un cursor 
    cursor.execute(query)          # Ejecutar una consulta 
    
    if query.upper().startswith('SELECT'): 
        data = cursor.fetchall()   # Traer los resultados de un select
        
    else: 
        conn.commit()              # Hacer efectiva la escritura de datos
        data = None 
 
    cursor.close()                 # Cerrar el cursor 
    conn.close()                   # Cerrar la conexión 
    
    
    return data

#==============  Obtener todos ================
def ConsultaObtener(Tabla):
    query="SELECT * FROM "+str(Tabla)+""
    data = run_query(query)
    vacio=[]
    if data==vacio:
       return vacio
    else:
        return data

#==============  Obtener Uno ================
def ConsultaObtenerUno(Tabla,id):
    query="SELECT * FROM "+str(Tabla)+" WHERE id ="+str(id)+""
    data = run_query(query)
    vacio=[]
    if data==vacio: #no hay nada
        return vacio
    else:
        return data
#==============  Insertar Uno ================
def ConsultaInsertarUno(Tabla,datos):
    a="'"
    l=len(datos)
    for x in datos:
        a+="'"+str(x)+"',"
    b=a[ 1:len(a) - 1]
    print(b)
    query=query = "INSERT INTO "+Tabla+" VALUES ("+b+")"
    data = run_query(query)
    vacio=[]
    if data==vacio:
       return vacio
    else:
        return data
import random
##def datosfeik(n):
##    emp=[]
##    for x in range(0,n):
##        
##        rut=183586246+x
##        profesion=["h", "m"]
##        nombh=[]
##        tel=956321478+x
##        archivo = open("nombresh.txt", "r")
##        for linea in archivo.readlines():
##            h=str(linea).replace("\n", "")
##            nombh.append(h)
##        archivo = open("nombresm.txt", "r")
##        nombm=[]
##        for linea in archivo.readlines():
##            m=str(linea).replace("\n", "")
##            nombm.append(m)
##        archivo = open("apellidos.txt", "r")
##        ape=[]
##        for linea in archivo.readlines():
##            a=str(linea).replace("\n", "")
##            ape.append(a)
##        cod=1+x
##        prof=random.choice(profesion)
##        apellido=random.choice(ape)
##        com=random.randint(1,16)
##        e=[]
##        mail=""
##        if(prof=="m"):
##            nombre=random.choice(nombm)
##            mail=nombre+apellido+"@gmail.com"
##            e=[rut,nombre,mail,tel,com]
##            emp.append(e)
##        else:
##            nombre=random.choice(nombh)
##            mail=nombre+apellido+"@gmail.com"
##            e=[rut,nombre,mail,tel,com]
##            emp.append(e)      
##    for i in emp:
##        ConsultaInsertarUno("personas",i)
def aviones(n):
    for x in range(0,n):
        cod=1+x
        des="avion comercial o avion de linea"
        marca=random.randint(1,3)
        capacidad=538+random.randint(0,11)
        modelo=["Boeing 747","Airbus A320","Tu-204","Ilyushin Il-96","Bombardier CRJ200"]
        capacidad=random.randint(200000,350000)
        emp=ConsultaObtener("empleados")
        pilo=[]
        mod=random.choice(modelo)
        for i in emp:
            if i[1]=="Piloto Tecnico":
                pilo.append(i[4])
        pil=random.choice(pilo)
        avion=[cod,des,marca,capacidad,mod,capacidad,pil]
        ConsultaInsertarUno("avion",avion)
        
aviones(20)







