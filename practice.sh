
#special variables

echo first no is: "$1"
echo sec no: "$2"

echo all arg: $@

## checking log files cat /tmp/Roboshop-shell.log

## new topics

## exit status and redirectories



#crontab

#how to check user exits or not

#"id" commonad --  id Rls -l

#logs check command ------ cat /tmp/Roboshop-shell.log

#commad >file #this will overwrite the content
        >>file #this will append to the content
        &>> #this will append output and error to the file


#exit status check         $? -eq/ne/ge/le/


#  1) quote concept:

" pupose of quot is to disable the speicailty of speical character"

eg: echo " **** show $a **** "
single quote: it will print as it is
Double quote: it will allows to print variables

#  2) redicectores:

  #input (<) and output (>) redirector
  # output is of two types
    #output - 1> or >
    #ERROR - 2>
    #OUTPUT+ERROR - &>

    #APPEND - >>, &>>

#    3) Loop:

#  if we want to execute the command again and again we use loop and there are two cre=iterias

  # while - expression based loop
  # for -- input based  loop