//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//EXECUTAR EXEC PGM=ARQ006                                              00060003
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00070000
//SYSIN    DD *                                                         00120000
//JCLROTIN DD DSN=PR.FOUR003.ROTINA,DISP=SHR                            00130004
