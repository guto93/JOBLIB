//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010001
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=PR.FOUR003.RESUMO,DISP=(MOD,DELETE,DELETE),           00030001
//*        LIKE=PR.FOUR003.RESUMO                                       00041003
//         SPACE=(TRK,(1,1))                                            00042003
//*-----------------------------------------------------------          00050000
//STEP02   EXEC PGM=FR01CBXX                                            00060000
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00070001
//ARQPROD  DD DSN=PR.FOUR003.ARQCB01,DISP=SHR                           00080004
//ARQRES   DD DSN=PR.FOUR003.RESUMO,DISP=(NEW,CATLG,DELETE),            00090001
//         SPACE=(TRK,(1,1)),                                           00100000
//         DCB=(RECFM=FB,LRECL=40,BLKSIZE=0)                            00110000
//SYSIN    DD *                                                         00120006
