# -*- coding: utf-8 -*-
#!/usr/bin/env python
from mysql.connector import (connection)
import sys
from itertools import cycle
def run_query(query=''): 
    conn = connection.MySQLConnection(user='root', password='',host='127.0.0.1',database='aeropuerto')# Conectar a la base de datos 
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
    datos=[]
    vacio=[]
    for x in data:
        entidad=[]
        for i in x:
            entidad.append(x[0])
        datos.append(entidad)
    if data==vacio:
        return False
    else:
        return data

#==============  Obtener Uno ================
def ConsultaObtenerUno(Tabla,idd):
    query="SELECT * FROM "+str(Tabla)+" WHERE id ="+str(idd)+""
    data = run_query(query)
    datos=[]
    vacio=[]
    for x in data:
        entidad=[]
        for i in x:
            entidad.append(x[0])
        datos.append(entidad)
    if data==vacio: #no hay nada
        return False
    else:
        return datos
#==============  Obtener Uno por categoria================
def ConsultaObtenerPorDato(Tabla,dato,idd):
    query="SELECT * FROM "+str(Tabla)+" WHERE "+str(dato)+" ='"+str(idd)+"'"
    data = run_query(query)
    vacio=[]
    if data==vacio: #no hay nada
        return False
    else:
        return datos
#==============  Insertar Uno ================
def ConsultaInsertarUno(Tabla,datos):
    a="'"
    l=len(datos)
    for x in datos:
        a+="'"+str(x)+"',"
    b=a[ 1:len(a) - 1]
    query=query = "INSERT INTO "+Tabla+" VALUES ("+b+")"
    data = run_query(query)
    vacio=[]
    if data==vacio:
        return False
    else:
        return data
import random
#==============  Validar Rut ================
def validarRut(rut):
	rut = rut.upper();
	rut = rut.replace("-","")
	rut = rut.replace(".","")
	aux = rut[:-1]
	dv = rut[-1:]
 
	revertido = map(int, reversed(str(aux)))
	factors = cycle(range(2,8))
	s = sum(d * f for d, f in zip(revertido,factors))
	res = (-s)%11
 
	if str(res) == dv:
		return True
	elif dv=="K" and res==10:
		return True
	else:
		return False








