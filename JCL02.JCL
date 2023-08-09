//FOUR003 JOB 'AUGUSTO',CLASS=C,MSGCLASS=X,NOTIFY=FOUR                  00010003
//STEP01  EXEC PGM=IEFBR14                                              00020002
//APAGAR  DD   DNS=PR.FOUR003.DADOS,                                    00030004
//             DISP=(MOD,DELETE,DELETE),                                00040002
//             SPACE=(TRK,(1,1))                                        00050003
//*            LIKE=PR.FOUR003.DADOS                                    00070002
//STEP02  EXEC PGM=IEFBR14                                              00090002
//DADOS   DD   DSN=PR.FOUR003.DADOS,                                    00100004
//             DISP=(NEW,CATLG,DELETE),                                 00110002
//             SPACE=(TRK,(1,1)),                                       00120002
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920)                    00130002
