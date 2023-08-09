//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//EXECUTAR EXEC PGM=FR03CB21                                            00020000
//STEPLIB  DD DSN=PR.FOUR003.OBJ,DISP=SHR                               00030000
//SYSIN    DD *                                                         00040000
01MESA                                                                  00050009
02GELADEIRA                                                             00051004
03ARMARIO                                                               00060004
25                                                                      00070003
