//FOUR003 JOB 'AUGUSTO',CLASS=C,MSGCLASS=X,NOTIFY=FOUR                  00010000
//STEP01  EXEC PGM=IEBGENER                                             00020000
//SYSUT1  DD   DNS=PR.FOUR003.DADOS,DISP=SHR                            00021001
//SYSUT2  DD   DNS=PR.FOUR003.DADOS2,                                   00030001
//             DISP=(MOD,DELETE,DELETE),                                00040000
//             SPACE=(TRK,(1,1)),                                       00050001
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920)                    00070000
//SYSPRINT DD  SYSOUT=*                                                 00080001
//SYSIN    DD  *                                                        00090001
