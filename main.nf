#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {
  echo true
  input: 
    val x from cheers
  script:
   if (x == "Hello") {
     
       """
       exit 1
       """
     
     } else {
  
    """
    echo '$x world!'
    """
    }
}

