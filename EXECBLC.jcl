//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010000
//STEP01   EXEC PGM=SORT                                                00011002
//SORTIN   DD DSN=PR.FOUR003.PROJ3,DISP=SHR                             00012002
//SORTOUT  DD DSN=PR.FOUR003.PROJ3,DISP=OLD                             00013002
//SYSOUT   DD SYSOUT=*                                                  00014002
//SYSIN    DD *                                                         00015002
 SORT FIELDS=(01,05,CH,A)                                               00016005
/*                                                                      00016103
//* CALSSIFICA ARQUIVOS POR ORDEM-----------------                      00017002
//STEP02   EXEC PGM=SORT                                                00017102
//SORTIN   DD DSN=PR.FOUR003.FUNC3,DISP=SHR                             00017202
//SORTOUT  DD DSN=PR.FOUR003.FUNC3,DISP=OLD                             00017302
//SYSOUT   DD SYSOUT=*                                                  00017402
//SYSIN    DD *                                                         00017502
 SORT FIELDS=(01,05,CH,A)                                               00017605
/*                                                                      00017703
//*--------- EXECUTAR PROGRAMA DE BALANCO -------                       00018002
//STEP03   EXEC PGM=FRXXEX02                                            00020002
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030000
//JCLFUNC  DD DSN=PR.FOUR003.FUNC3,DISP=SHR                             00031001
//JCLPROJ  DD DSN=PR.FOUR003.PROJ3,DISP=SHR                             00031101
//JCLLOG   DD DSN=PR.FOUR003.LOGERR,DISP=SHR                            00031200
//JCLFPROJ DD SYSOUT=*                                                  00031300
//JEXCESS  DD SYSOUT=*                                                  00031406
