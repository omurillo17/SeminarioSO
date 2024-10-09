#!/bin/bash

show_menu() {
    echo "Seleccione una opción:"
    echo "1. Listar el contenido de un fichero"
    echo "2. Crear un archivo de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso del comando awk"
    echo "5. Mostrar uso del comando grep"
    echo "6. Salir"
}

list_content() {
    read -p "Introduzca la ruta absoluta del fichero o carpeta: " filepath
    if [ -d "$filepath" ]; then
        ls "$filepath"
    else
        echo "El fichero o carpeta no existe."
    fi
}

create_text_file() {
    read -p "Introduzca el nombre del archivo a crear: " filename
    read -p "Introduzca el texto que desea almacenar: " text
    echo "$text" > "$filename"
    echo "Archivo creado y texto almacenado."
}

compare_files() {
    read -p "Introduzca la ruta del primer archivo: " file1
    read -p "Introduzca la ruta del segundo archivo: " file2
    if cmp -s "$file1" "$file2"; then
        echo "Los archivos son iguales."
    else
        echo "Los archivos son diferentes."
    fi
}

use_awk() {
    read -p "Introduzca la ruta del archivo para usar awk: " file
    awk '{ print $1 }' "$file"
}

use_grep() {
    read -p "Introduzca la cadena a buscar: " pattern
    read -p "Introduzca la ruta del archivo: " file
    grep "$pattern" "$file"
}

while true; do
    show_menu
    read -p "Seleccione una opción [1-6]: " choice
    case $choice in
        1) list_content ;;
        2) create_text_file ;;
        3) compare_files ;;
        4) use_awk ;;
        5) use_grep ;;
        6) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción no válida. Intente de nuevo." ;;
    esac
done
