//FOUR001X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//*-----------------------------------------------------------          00011000
//* CASO O ARQUIVO RESUMO EXISTA, APAGAR                                00012000
//*-----------------------------------------------------------          00013000
//STEP01   EXEC PGM=SORT                                                00014000
//SORTIN   DD DSN=PR.FOUR001.ARQPECAS,DISP=SHR                          00015000
//SORTOUT  DD DSN=PR.FOUR001.ARQPECAS,DISP=OLD                          00016000
//SYSOUT   DD SYSOUT=*                                                  00016100
//SYSIN    DD *                                                         00080000
 SORT FIELDS=(1,5,CH,A)                                                 00090000
