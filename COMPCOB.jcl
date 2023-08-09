//FOUR003X JOB 'COMPCOB',CLASS=C,MSGCLASS=X,NOTIFY=&SYSUID
//*************************************************************
//*  JOB UTILIZADO PARA COMPILAR PROGRAMAS COBOL
//*************************************************************
// JCLLIB ORDER=GR.GERAL.PROCLIB
//COBCOMP  EXEC DFHCOBLB,LIB1=GR.FOUR003,NOME='FR03LVSA',LIB2=GR.GERAL
//LKED.SYSIN    DD   *
  NAME  F03LVSA(R)
/*
