#!/bin/sh
FFIGEN_DIR=/Users/Walrus/ffigen5/ffigen
# CFLAGS="-isystem ${FFIGEN_DIR}/include -quiet -fffigen ${CFLAGS}"
CFLAGS=" ${CFLAGS}"
GEN=/Users/Walrus/ffigen5/ffigen5


while [ $# -gt 1 ]
do 
    case ${1} in
      -pthread*)
        CFLAGS="${CFLAGS} -D_REENTRANT"
        shift
        ;;
      -x)
        shift
        shift
        ;;
      *)
        CFLAGS="${CFLAGS} ${1}"
        shift
        ;;
   esac
done

echo +++ ${1}
mkdir -p .`dirname ${1}`
OFILE=.`dirname ${1}`/`basename ${1} .h`.ffi
${GEN} ${CFLAGS} -o ${OFILE} ${1}

