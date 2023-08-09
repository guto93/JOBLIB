//FOUR001X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//*-----------------------------------------------------------          00011000
//* CASO O ARQUIVO RESUMO EXISTA, APAGAR                                00012000
//*-----------------------------------------------------------          00013000
//STEP01   EXEC PGM=IEFBR14                                             00014000
//APAGAR   DD DSN=PR.FOUR001.RELAT,DISP=(MOD,DELETE,DELETE),            00015000
//         SPACE=(TRK,(1,1))                                            00016000
//*-----------------------------------------------------------          00017000
//* EXECUTAR PROGRAMA FR01CBXX QUE LE PRODUTOS E GUARDA EM RESUMO       00018000
//*-----------------------------------------------------------          00019000
//STEP02   EXEC PGM=RESEXER3                                            00020000
//STEPLIB  DD DSN=PR.FOUR001.OBJ,DISP=SHR                               00030000
//CLIENTES DD DSN=PR.FOUR001.CLIENTES,DISP=SHR                          00040000
//RELAT    DD DSN=PR.FOUR001.RELAT,DISP=(NEW,CATLG,DELETE),             00050000
//         SPACE=(TRK,(1,1)),                                           00060000
//         DCB=(RECFM=FB,LRECL=53,BLKSIZE=0)                            00070000
//SYSIN    DD *                                                         00080000
-----------23456789012345678901234567890                                00090000
