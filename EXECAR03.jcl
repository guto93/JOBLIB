//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//EXECUTAR EXEC PGM=ARQ003                                              00020000
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030000
//SYSIN    DD *                                                         00040000
//JCLARQ02 DD DSN=PR.FOUR003.ARQCB01,DISP=SHR                           00050003
