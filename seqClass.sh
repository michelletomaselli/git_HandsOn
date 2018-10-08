#Cambios en el archivo dentro del ordenador
#!/bin/bash #Linea informativa
seq=$1 #Guarda el valor a entrar como argumento en una variable a analizar
seq=$(echo $seq | tr a-z A-Z)  #Cambia los argumentos entrados a mayuscula
if [[ $seq =~ ^[ACGTU]+$ ]]; then #Si el valor entrado corresponde a ACGTU entrara dentro del condicional
  if [[ $seq =~ T ]]; then #Si contiene alguna T entrara dentro
    if [[ $seq =~ U ]]; then #Si ademas de la T contiene una U entrara dentro     
      echo "The sequence can be DNA or RNA" #Te retornara el mensaje 
    else #Si no tiene ninguna U pero si T ya que esta dentro de este condicional, entrara dentro
      echo "The sequence is DNA" #Te retornara el mensaje #Te retornara el mensaje
    fi 
  elif [[ $seq =~ U ]]; then #Si tiene U entrara dentro
    echo "The sequence is RNA" #Te retornara el mensaje
  else  #Si no contiene T o U el argumento, entrara dentro
    echo "The sequence can be DNA or RNA" #Te retornara el mensaje
  fi
else #Si no contiene ninguno de los valores dichos anteriormente ejecutara este condicional
  echo "The sequence is not DNA nor RNA" #Te retornara el mensaje
fi #Acaba el script

