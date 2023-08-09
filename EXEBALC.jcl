//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010013
//EXECUTAR EXEC PGM=BALANC                                              00020000
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030000
//JCLCLT   DD DSN=PR.FOUR003.CLINT,DISP=SHR                             00031009
//JCLLNC   DD DSN=PR.FOUR003.LANC,DISP=SHR                              00031111
//JCLLOG   DD DSN=PR.FOUR003.LOGERR,DISP=SHR                            00032005
//JCLCLTE  DD SYSOUT=*                                                  00033010
