//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010004
//*----------------------------------------------------------------     00010100
//* APAGAR ARQUIVO ARQRELAT, CASO EXISTA                                00010200
//*----------------------------------------------------------------     00010300
//STEP01   EXEC PGM=IEFBR14                                             00010400
//APAGAR   DD DSN=PR.FOUR003.RELATEX3,DISP=(MOD,DELETE,DELETE),         00010500
//         SPACE=(TRK,(1,1))                                            00010600
//*----------------------------------------------------------------     00010700
//* CLASSIFICAR ARQCLINT POR AGENCIA E CONTA, COM REFERENCIA (09)       00010800
//*----------------------------------------------------------------     00010900
//STEP02   EXEC PGM=SORT                                                00011000
//SORTIN   DD   DSN=PR.FOUR003.MOV2505A,DISP=SHR                        00012000
//SORTOUT  DD   DSN=PR.FOUR003.MOV2505A,DISP=OLD                        00013000
//SYSOUT   DD   SYSOUT=*                                                00014000
//SYSIN    DD *                                                         00015000
  SORT FIELDS=(01,05,CH,A)                                              00016004
//*----------------------------------------------------------------     00017000
//* EXECUTAR FR03EX02, LER ARQCLINT E GRAVAR NA SAIDA ARQRELAT          00018000
//*----------------------------------------------------------------     00019000
//STEP03   EXEC PGM=RELAT03                                             00020003
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030000
//MOV2505A DD DSN=PR.FOUR003.MOV2505A,DISP=SHR                          00040001
//RELATO   DD DSN=PR.FOUR003.RELATEX3,DISP=(NEW,CATLG,DELETE),          00050001
//         SPACE=(TRK,(1,1)),                                           00060000
//         DCB=(RECFM=FB,LRECL=57,BLKSIZE=0)                            00070007
//SYSIN    DD *                                                         00080006
