
# Ejericio 4 - Registro de nombre y año de nacimiento:
# (Combinación de los 3 anteriores)
# Generar un menú que muestre lo siguiente:
"""
** Menú Principal ** 
1 - Registrar nombre y año de nacimiento
2 - Mostrar todos
3 - Salir
"""
# De acuerdo a la opción, realizar:
# 1 - Solicitar nombre, luego año de nacimiento. Verificar que el año tenga el formato 'AAAA' 
#   (cuatro dígitos). Verificar que sea mayor de edad, si cumple con la condición almacenar 
#   en un diccionario (clave = nombre, valor = año de nac.).
#   Luego volver al menú principal.
# 2 - Mostrar los registros ingresados, si no hay ninguno mostrar un mensaje, 
#   por ej. "NO SE REGISTRARON INGRESOS AÚN." Luego volver al menú principal.
# 3 - Salir de programa, opcionalmente agradecer el uso de nuestra app.
# Si se ingresa una opción incorrecta informarlo y mostrar nuevamente el menú principal.

def verificar_entero(num):        #creamos funcion que que nos asegure el retorno de un entero
  while not num.isdigit():
    num = input('Ingrese nuevamente el numero entero: ')
  return int(num)


def registro():               #creamos funcion donde se registra un usuario
  nombre = input('Ingrese su nombre: ')                  #pedimos nombre por input
  nacimiento = input('Ingrese su año de nacimiento: ')    #pedimos nacimiento por input
  nacimiento = verificar_entero(nacimiento)              #verificamos que sea un entero
    
  while nacimiento < 1000 or nacimiento > 9999:           #verificamos que tenga 4 digitos
    nacimiento = int(input('Ingrese una año valido: '))
    nacimiento = verificar_entero(nacimiento)
  
  if nacimiento < 2005: 
    base_de_datos[nombre] = nacimiento             # si es mayor de edad, lo registramos en el diccionario
    print('\n ***** Usuario registrado ***** \n\n')  #usamos \n para imprimir saltos de lineas por proligidad 
  else:
    print('\n **** No se pueden registrar menores de edad****** \n')     #si no es mayor, devolvemos mensaje y no lo registramos
  
  return base_de_datos  #la funcion devuelve el diccionario actualizado


def menu():         #creamos funcion que imprima el menu
  print('''
      ***** MENU *****
      1- Registrar nombre y año de nacimiento
      2- Mostar todos
      3- Salir
      ''')

base_de_datos = {}                #creamos un diccionario vacio

#comienzo de la ejecucion 

menu()            #el programa comienza imprimiendo el menu

opcion = input('Ingrese una opcion: ')      #pedimos ingreso de opcion por input
opcion =verificar_entero(opcion)        #verificamos que sea entero

while opcion != 3:    #creamos bucle que se ejecuta mientras que la opcion ingresada NO sea 3

  if opcion == 1:         #si la opcion es 1, ejecutamos funcion de registro
    registro()
    
  elif opcion == 2:         # si la opcion es 2, imprimimos el diccionario
    if len(base_de_datos) == 0:       # si el diccionario esta vacio, se imprime mensaje correspondiente
      print('''
            NO SE REGISTRARON INGRESOS AÚN
            Primero deben registrarse datos
          ''')
    
    else:               # el el diccionario contiene por lo menos un elemento, imprime
      for nombre in base_de_datos:               #comienza bucle que itera por cada clave del diccionario( usamos "nombre" como indice iterable)
        print(f'Nombre: {nombre}, año de nacimiento: {base_de_datos[nombre]}')  # imprimimos la Clave, y el valor de la clave correspondiente. 
  
  else:     #si la opcion ingresada no es ni 1, ni 2, devolvemos mensaje de opcion incorrecta
    print('Opcion incorrecta')
    
  menu()                    #volvemos a imprimir el menu  
  opcion = input('Ingrese una opcion: ')      #el bucle termina dando a elegir opcion nuevamente
  opcion =verificar_entero(opcion)

if opcion == 3:     #si la opcion elegida es 3, el programa imprime mensaje y termina
  print('Programa terminado')
  
  
  
  
  
  
#****************************
######################EJERCICIO NUMERO 2 ###############################
'''
Se tiene una matriz llamada calificaciones de 5 x 3, que representa las 3 
calificaciones de cada uno de los 5 alumnos de un curso. 
int[][] calificaciones = { {2,7,9} , {5,5,6} , {10,6,5} , {8,2,9} , {1,1,3} };
Dada la matriz, se pide hallar:
◦Promedio de cada alumno.
◦Promedio de cada materia.
◦Promedio general del curso (todos los alumnos).
◦Cantidad de alumnos con al menos un aplazo (calificación menor que 4).

'''

#alumnos = ''



i = 0
calificaciones = [
    [2, 7, 9], # calificaciones[0][0]
    [5, 5, 6], # calificaciones[1][0]
    [10, 6, 5],# calificaciones[2][0]
    [8, 2, 9],# calificaciones[3][0]
    [1, 1, 3]# calificaciones[4][0]
]

#Promedio de cada alumno.
for i in range(5):
  print(int(sum(calificaciones[i])/3))



#◦Promedio de cada materia.
geografia = []
lengua = []
historia = []

for i in range(5):
  #print(calificaciones[i][0])
  geografia.append(calificaciones[i][0])
  lengua.append(calificaciones[i][1])
  historia.append(calificaciones[i][2])
prom_geo = (sum(geografia)/5)
prom_leng = (sum(lengua)/5)
prom_hist = (sum(historia)/5)


print(prom_geo)
print(prom_leng)
print(prom_hist)

#◦Promedio general del curso (todos los alumnos).
promedio_general = (prom_geo + prom_leng + prom_hist) / 3

print((promedio_general))


c_apla = 0#◦Cantidad de alumnos con al menos un aplazo (calificación menor que 4)

for i in range(5):
  for j in range(3):
    if calificaciones [i][j] < 4:
      c_apla += 1
      break
print(c_apla)












#for i in range(3):
  #for j in range(5):
    #print(sum(calificaciones[i][j])/5)





cantidad_alumnos = len(calificaciones)
#print(type(calificaciones[0])




####################EJERCICIO NUEMRO 3 #########################

# Escribir la función booleana esPrimo, que devuelve true o false dependiendo si un 
# número recibido como parámetro es primo

#! (es primo el numero que solo es divisible por 1 y por si mismo) 
#! 0 y 1 no son primos
#! el 2 siempre es primo

# valor = (2 * 3 * x) + 1
#     print(valor)

def esPrimo(x):
    primo = True
    if x < 2 :
        return False                #descarto todos los numeros menores a 2
    
    for divisor in range (2 , x):   #comprobamos que x no sea divisible por ningun numero entre 2 (descarta todos los pares) y si mismo(excluido)
        if x % divisor == 0:        #si en alguna iteracion, esta declaracion es verdadera, el numero x ingresado por parametro NO es primo 
            primo = False
            print(x,'No es primo')
            return False            #devuelvo False
    
    #return True    
    if primo :                      #si nunca devolvio False, entonces es primo
        print(x, 'Es primo')        #lo imprimo
        return True                 #devuelvo True
        
    
esPrimo(99)




###################EJERCICIO NUMERO 4##########################


# Escribir la función imprimirSimbolo, que imprime por consola n veces un carácter en
# la misma línea. Tanto n como el carácter se reciben como parámetro


def imprimirSimbolo(n, caracter):
    n = int(input("ingrese cantidad de veces: "))
    caracter= input("ingrese caracter a repetir: ")
    print(n * caracter)
    
imprimirSimbolo(10, '#')

# #si quiero recibir n y el caracter por input
n = 0
caracter = 'A'

def imprimirSimbolo2(n, caracter):
    n = int(input("ingrese cantidad de veces: "))
    caracter= input("ingrese caracter a repetir: ")
    print(n * caracter)
    
imprimirSimbolo2(n, caracter)




################EJERCICIO NUMERO 5 #########################

# Escribir la función obtenerPromedio, que devuelve el promedio resultante de un 
# arreglo de números enteros recibido como parámetro
arreglo =[4,7,3,8,0,5,9]

def obtenerPromedio(arreglodenumeros):
    
    sumatoria = sum(arreglodenumeros)
    promedio = int(sumatoria / len(arreglodenumeros))
    
    print(promedio)
    
obtenerPromedio(arreglo)  


# obtengo los numeros por input

arreglo2 =[]

def obtenerPromedio2(arreglodenumeros):
    
    arreglodenumeros=[]
    cant_numeros = int(input("ingrese cantidad de numeros a evaluar: ")) 
    
    for i in range (cant_numeros):
        numero = int(input(f"ingrese valor {i + 1}: "))
        arreglodenumeros.append(numero)
        
    sumatoria = sum(arreglodenumeros)
    promedio = int(sumatoria / len(arreglodenumeros))
    
    print(f'el promedio es {promedio}')
    
    
obtenerPromedio2(arreglo)



#####################
