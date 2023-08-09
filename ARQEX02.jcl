//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//*----------------------------------------------------------------     00010109
//* APAGAR ARQUIVO ARQRELAT, CASO EXISTA                                00011008
//*----------------------------------------------------------------     00012009
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=PR.FOUR003.ARQRELAT,DISP=(MOD,DELETE,DELETE),         00030001
//         SPACE=(TRK,(1,1))                                            00040000
//*----------------------------------------------------------------     00050009
//* CLASSIFICAR ARQCLINT POR AGENCIA E CONTA, COM REFERENCIA (09)       00050109
//*----------------------------------------------------------------     00050209
//STEP02   EXEC PGM=SORT                                                00050309
//SORTIN   DD   DSN=PR.FOUR003.ARQCLINT,DISP=SHR                        00050409
//SORTOUT  DD   DSN=PR.FOUR003.ARQCLINT,DISP=OLD                        00050509
//SYSOUT   DD   SYSOUT=*                                                00050609
//SYSIN    DD *                                                         00050709
  SORT FIELDS=(01,09,CH,A)                                              00050809
//*----------------------------------------------------------------     00051009
//* EXECUTAR FR03EX02, LER ARQCLINT E GRAVAR NA SAIDA ARQRELAT          00052008
//*----------------------------------------------------------------     00053009
//STEP03   EXEC PGM=FR03EX02                                            00060009
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00070000
//JCLCLT   DD DSN=PR.FOUR003.ARQCLINT,DISP=SHR                          00080001
//JCLRELT  DD DSN=PR.FOUR003.ARQRELAT,DISP=(NEW,CATLG,DELETE),          00090002
//         SPACE=(TRK,(1,1)),                                           00100000
//         DCB=(RECFM=FB,LRECL=53,BLKSIZE=0)                            00110007
//SYSIN    DD *                                                         00120000
