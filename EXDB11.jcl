//FOUR003X JOB 'EXEC DB2',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010003
//*-------------------------------------------------------------------* 00020000
//*      JOB DE EXECUCAO   DE PROGRAMA COBOL COM DB2 BATCH            * 00030000
//*-------------------------------------------------------------------* 00040000
//EXECDB   EXEC PGM=IKJEFT01,DYNAMNBR=20                                00060008
//STEPLIB  DD   DSN=DSN810.SDSNLOAD,DISP=SHR
//DBRMLIB  DD   DSN=DSN810.DBRMLIB.DATA,DISP=SHR
//RELDB02  DD   DSN=GR.FOUR003.RELDB2,DISP=OLD
//SYSTSPRT DD   SYSOUT=*
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSTSIN  DD   *                                                       00080000
  DSN  SYSTEM(DB8G)
  RUN PROGRAM(FR03DB11) PLAN(FR03DB11) -                                00090004
       LIB('GR.GERAL.LOADLIB')                                          00100000
  END                                                                   00120000
/*
