//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010002
//*----------------------------------------------------------------     00010102
//* APAGAR ARQUIVO ARQRELAT, CASO EXISTA                                00010202
//*----------------------------------------------------------------     00010302
//STEP01   EXEC PGM=IEFBR14                                             00010402
//APAGAR   DD DSN=PR.FOUR003.SPAGFORN,DISP=(MOD,DELETE,DELETE),         00010502
//         SPACE=(TRK,(1,1))                                            00010602
//*----------------------------------------------------------------     00010702
//* CLASSIFICAR ARQCLINT POR AGENCIA E CONTA, COM REFERENCIA (09)       00010802
//*----------------------------------------------------------------     00010902
//STEP02   EXEC PGM=SORT                                                00011002
//SORTIN   DD   DSN=PR.FOUR003.EPAGFOR,DISP=SHR                         00012003
//SORTOUT  DD   DSN=PR.FOUR003.EPAGFOR,DISP=OLD                         00013003
//SYSOUT   DD   SYSOUT=*                                                00014002
//SYSIN    DD *                                                         00015002
  SORT FIELDS=(01,09,CH,A)                                              00016002
//*----------------------------------------------------------------     00017002
//* EXECUTAR FR03EX02, LER ARQCLINT E GRAVAR NA SAIDA ARQRELAT          00018002
//*----------------------------------------------------------------     00019002
//STEP03   EXEC PGM=FR03EX03                                            00020004
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030002
//JCLEPA   DD DSN=PR.FOUR003.EPAGFOR,DISP=SHR                           00040003
//JCLSPA   DD DSN=PR.FOUR003.SPAGFORN,DISP=(NEW,CATLG,DELETE),          00050002
//         SPACE=(TRK,(1,1)),                                           00060002
//         DCB=(RECFM=FB,LRECL=47,BLKSIZE=0)                            00070009
//SYSIN    DD *                                                         00080002
