#Cambios en el archivo dentro del ordenador
#!/bin/bash #Linea informativa
seq=$1 #Guarda el valor a entrar como argumento en una variable a analizar
seq=$(echo $seq | tr a-z A-Z)  #Cambia los argumentos entrados a mayuscula
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si el valor entrado corresponde a ACGTU entrara dentro del condicional
  if [[ $seq =~ T ]]; then #Si tiene T entrara dentro
    echo "The sequence is DNA" #Te retornara el mensaje 
  elif [[ $seq =~ U ]]; then #Si tiene U entrara dentro
    echo "The sequence is RNA" #Te retornara el mensaje
  else  #Si no contiene T o U el argumento, entrara dentro
    echo "The sequence can be DNA or RNA" #Te retornara el mensaje
  fi
else #Si no contiene ninguno de los valores dichos anteriormente ejecutara este condicional
  echo "The sequence is not DNA nor RNA" #Te retornara el mensaje
fi #Acaba el script

