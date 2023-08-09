//FOUR011X JOB 'GUSTAVO,4206',CLASS=C,MSGCLASS=X,NOTIFY=&SYSUID         00010001
//*---- CRIACAO DE UM SEQUENCIAL                                        00011001
//STEP01   EXEC PGM=IEFBR14                                             00020001
//CLIENTES DD  DSN=PR.FOUR011.CLIENTES,                                 00030005
//             DISP=(NEW,CATLG,DELETE),                                 00040002
//             SPACE=(TRK,(1,1)),                                       00050005
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920)                    00060002
