PGM
ADDENVVAR ENVVAR(QIBM_MULTI_THREADED) VALUE('Y')
MONMSG    MSGID(CPF0000)
/* CALL      PGM(QP2SHELL) PARM('/QOpenSys/pkgs/bin/jupyter' 'notebook') */
QSH       CMD('/QOpenSys/pkgs/bin/jupyter notebook') 
ENDPGM
