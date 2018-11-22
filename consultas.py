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
def Consultainsertar(Tabla,datos):
    a="'"
    l=len(datos)
    for x in datos:
        a+="'"+x+"',"
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
def datosfeik(n):
    emp=[]
    for x in range(0,n):
        rut_emp=183586246+n
        profesion=["Piloto Técnico", "administrativo", "Azafata", "Auxiliar de Tierra", "Despachador de Vuelo"]
        nombh=[]
        archivo = open("nombresh.txt", "r")
        for linea in archivo.readlines():
            h=str(linea).replace("\n", "")
            nombh.append(h)
        archivo = open("nombresm.txt", "r")
        nombm=[]
        for linea in archivo.readlines():
            m=str(linea).replace("\n", "")
            nombm.append(m)
        archivo = open("apellidos.txt", "r")
        ape=[]
        for linea in archivo.readlines():
            a=str(linea).replace("\n", "")
            ape.append(a)
        cod=1+n
        prof=random.choice(profesion)
        apellido=random.choice(ape)
        e=[]
        if(prof=="Azafata"):
            nombre=random.choice(nombm)
            e=[rut_emp,prof,nombre,apellido,cod]
            emp.append(e)
        else:
            nombre=random.choice(nombh)
            e=[rut_emp,prof,nombre,apellido,cod]
            emp.append(e)
    print(emp)
 
datosfeik(20)







