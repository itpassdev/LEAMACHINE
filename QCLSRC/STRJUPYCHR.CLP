PGM
DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
DCL        VAR(&TGTLIB) TYPE(*CHAR) LEN(10)
DCL        VAR(&CURPATH) TYPE(*CHAR) LEN(20) VALUE('\home\')
RTVUSRPRF  CURLIB(&TGTLIB)
RTVJOBA    CURUSER(&USER)
CHGVAR     VAR(&CURPATH) VALUE(&CURPATH *TCAT &USER)
CD         DIR(&CURPATH)
MONMSG     MSGID(CPF0000)
SBMJOB     CMD(CALL PGM(JUPYTERCHR)) +
             JOB(JUPYTERCHR) JOBQ(QSYS/QSYSNOMAX) +
             ALWMLTTHD(*YES) CURLIB(&TGTLIB)
ENDPGM
