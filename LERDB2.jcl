//FOUR003X JOB 'EXEC DB2',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01)
//STEP01   EXEC PGM=IKJEFT01,DYNAMNBR=20
//STEPLIB  DD DSN=DSN810.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSREC00 DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//* DSNTIB81
//SYSPUNCH DD SYSOUT=*
//SYSTSIN  DD *
 DSN SYSTEM(DB8G)
   RUN PROGRAM(DSNTEP2) PLAN(DSNTEP81) -
   LIB('DSN810.RUNLIB.LOAD') PARMS('/ALIGN(LHS)'
 END
//SYSIN    DD *
   SELECT * FROM FOUR001.CHECK
/*
//*UPDATE FOUR001.CHECK SET REGISTRO=0 WHERE IDCHECK = 'IVAN'
//*SELECT * FROM FOUR001.FUNC2 ORDER BY ID
//*UPDATE FOUR001.FUNC SET SALARIO = 0 WHERE ID=101
//*SELECT * FROM FOUR001.FUNC2
//*SELECT * FROM FOUR001.CHECK;
//*SELECT * FROM FOUR001.FUNC ORDER BY ID