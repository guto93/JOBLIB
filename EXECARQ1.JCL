//FOUR001X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//*-----------------------------------------------------------          00011000
//* CASO O ARQUIVO RESUMO EXISTA, APAGAR                                00012000
//*-----------------------------------------------------------          00013000
//STEP02   EXEC PGM=LEARQ2                                              00020000
//STEPLIB  DD DSN=PR.FOUR001.OBJ,DISP=SHR                               00030000
//JCLDADOS DD DSN=PR.FOUR001.DADOS,DISP=SHR                             00040000
