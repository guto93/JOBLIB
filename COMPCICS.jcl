//FOUR003X JOB 'COMPCICS',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID             0010000
//*=================================================                    00020000
//* JCL PARA COMPILAR PROGRAMAS CICS                                    00030000
//*  NAME - NOME DO SEU PROGRAMA                                        00040000
//*  INSTR - SUA CHAVE                                                  00050000
//*=================================================                    00060000
//         JCLLIB ORDER=GR.GERAL.PROCLIB                                00070000
//*                                                                     00080000
//COMPPLI  EXEC DFHCICS1,NAME=F03CIP2,INSTR='FOUR003',                  090000
//         LIB2='GR.GERAL'                                              00100000
