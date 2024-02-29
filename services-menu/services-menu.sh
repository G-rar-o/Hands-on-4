#!/bin/bash

while true; do
    echo "Menu de opciones:"
    echo "1. Listar contenido de un fichero (carpeta)"
    echo "2. Crear un archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Usar el comando awk"
    echo "5. Usar el comando grep"
    echo "6. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            read -p "Ingrese la ruta absoluta al fichero o carpeta: " ruta
            ls -l "$ruta"
            ;;
        2)
            read -p "Ingrese el texto a almacenar en el archivo: " texto
            echo "$texto" > archivo.txt
            echo "Archivo creado con éxito."
            ;;
        3)
            read -p "Ingrese el nombre del primer archivo: " archivo1
            read -p "Ingrese el nombre del segundo archivo: " archivo2
            diff "$archivo1" "$archivo2"
            ;;
        4)
            echo "Ejemplo de uso de awk:"
            echo "Imprimir la segunda columna de un archivo CSV"
            awk -F ',' '{print $2}' archivo.csv
            ;;
        5)
            echo "Ejemplo de uso de grep:"
            echo "Buscar la palabra 'patrón' en un archivo de texto"
            grep "patrón" archivo.txt
            ;;
        6)
            echo "Saliendo del script."
            exit 0
            ;;
        *)
            echo "Opción no válida. Por favor, seleccione una opción del 1 al 6."
            ;;
    esac
done
