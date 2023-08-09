//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010000
//*--------PODE APAGAR O ARQUIVO CASO EXISTA --------                   00010124
//STEP01   EXEC PGM=IEFBR14                                             00010224
//APAGAR   DD DSN=PR.FOUR003.MOV2505A,DISP=(MOD,DELETE,DELETE),         00010324
//         SPACE=(TRK,(1,1))                                            00010424
//*--------ORGANIZAR EM SEQUENCIA OS LANCAMENTOS----                    00010807
//STEP01   EXEC PGM=SORT                                                00011013
//SORTIN   DD DSN=PR.FOUR003.MOV2505,DISP=SHR                           00012000
//SORTOUT  DD DSN=PR.FOUR003.MOV2505,DISP=OLD                           00013004
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSIN    DD *                                                         00015000
  SORT FIELDS=(01,05,CH,A)                                              00016015
/*                                                                      00016122
//* CALSSIFICA ARQUIVOS POR ORDEM-----------------                      00016200
//STEP02   EXEC PGM=SORT                                                00016313
//SORTIN   DD DSN=PR.FOUR003.CLI2505,DISP=SHR                           00016400
//SORTOUT  DD DSN=PR.FOUR003.CLI2505,DISP=OLD                           00016504
//SYSOUT   DD SYSOUT=*                                                  00016600
//SYSIN    DD *                                                         00016700
  SORT FIELDS=(01,05,CH,A)                                              00016815
/*                                                                      00016922
//*--------- EXECUTAR PROGRAMA DE BALANCO -------                       00017000
//STEP03   EXEC PGM=FRX3EX03                                            00018013
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00019000
//CLI2505  DD DSN=PR.FOUR003.CLI2505,DISP=SHR                           00020000
//MOV2505  DD DSN=PR.FOUR003.MOV2505,DISP=SHR                           00030002
//JCLLOG   DD DSN=PR.FOUR003.LOGERR,DISP=SHR                            00031000
//MOV2505A DD DSN=PR.FOUR003.MOV2505A,DISP=(NEW,CATLG,DELETE),          00031424
//         SPACE=(TRK,(1,1)),                                           00031524
//         DCB=(RECFM=FB,LRECL=46,BLKSIZE=0)                            00031624
//MOV2505C DD SYSOUT=*                                                  00031724
