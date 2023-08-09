//FOUR003X  JOB 'COMPCOB',CLASS=C,MSGCLASS=X,NOTIFY=&SYSUID,TIME=(0,01) 00010000
//********************************************************************  00010103
//* EXECUTAR PROGRAMA FOUR001X                                       *  00011003
//********************************************************************  00012003
//EXECUTA  EXEC PGM=FR03LVSA
//STEPLIB  DD   DSN=GR.GERAL.LOADLIB,DISP=SHR
//VSAMPAI  DD   DSN=GR.FOUR003.ARQVSAM,DISP=OLD
//SYSIN    DD  *
00030
