//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00140010
//STEP01   EXEC PGM=IEFBR14                                             00220011
//APAGAR   DD DSN=PR.FOUR003.RESUM,DISP=(MOD,DELETE,DELETE),            00230013
//         SPACE=(TRK,(1,1))                                            00260020
//*        LIKE=FOUR003.RESUM                                           00260120
//*===========================================================          00261011
//STEP02   EXEC PGM=ARQ004                                              00271011
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00272011
//JCLARQ02 DD DSN=PR.FOUR003.ARQCB01,DISP=SHR                           00272117
//RESUM    DD DSN=PR.FOUR003.RESUM,DISP=(NEW,CATLG,DELETE),             00273011
//         SPACE=(TRK,(1,1)),                                           00274011
//         DCB=(RECFM=FB,LRECL=40,BLKSIZE=0)                            00275011
//SYSIN    DD *                                                         00276011
-----------123456789134567879123456897231                               00277018
