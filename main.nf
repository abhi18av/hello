#!/usr/bin/env nextflow

cheers = Channel.from 'Bonjour', 'Ciao', 'Hola'

process sayHello {
  echo true
  
  input: 
    val x from cheers
  
  script:
   if (x == "Hello") {
   
    System.exit(0)
   
     } else {
  
    """
    echo '$x world!'
    """
    }
}

