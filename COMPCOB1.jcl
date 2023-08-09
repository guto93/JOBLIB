//FOUR003X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID             00010000
// JCLLIB ORDER=PR.FOUR001.PROCLIB                                      00130000
//COBCOMP  EXEC DFHCOBOL,NOME='FR03CB01'                                00140000
//SYSTERM  DD  SYSOUT=*                                                 00141000
//LKED.SYSIN    DD   *                                                  00150000
  NAME FR03CB01(R)                                                      00160000
//*--------------------------------------------------------------------*00170000
//*          FIM JOB DE COMPILACAO COBOL BATCH                         *00180000
//*--------------------------------------------------------------------*00190000
