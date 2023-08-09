//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=GR.FOUR003.PECACOMP,DISP=(MOD,DELETE,DELETE),         00030000
//         SPACE=(TRK,(1,1))                                            00040000
//*===========================================================          00050000
//STEP02   EXEC PGM=FR03EX01                                            00060000
//STEPLIB  DD DSN=GR.FOUR003.OBJ,DISP=SHR                               00070001
//JCLPCS   DD DSN=GR.FOUR003.ARQPECAS,DISP=SHR                          00080001
//JCLCOMP  DD DSN=GR.FOUR003.PECACOMP,DISP=(NEW,CATLG,DELETE),          00090001
//         SPACE=(TRK,(1,1)),                                           00100000
//         DCB=(RECFM=FB,LRECL=10,BLKSIZE=0)                            00110000
//SYSIN    DD *                                                         00120000
