//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=PR.FOUR003.RESUM,DISP=(MOD,DELETE,DELETE),            00030000
//         SPACE=(TRK,(1,1))                                            00040002
//*===========================================================          00060000
//STEP02   EXEC PGM=ARQ005                                              00070000
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00080000
//JCLARQ02 DD DSN=PR.FOUR003.ARQCB01,DISP=SHR                           00090000
//RESUM    DD DSN=PR.FOUR003.RESUM,DISP=(NEW,CATLG,DELETE),             00100000
//         SPACE=(TRK,(1,1)),                                           00110000
//         DCB=(RECFM=FB,LRECL=40,BLKSIZE=0)                            00120000
//SYSIN    DD *                                                         00130000
-----------123456789134567879123456897231                               00140000
