#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#define MAX_KEY_SIZE   255
#define POS_BLOCK_SIZE 128

extern short int __stdcall BTRCALL
(
  unsigned short operation
, void*          posBlock
, void*          dataBuffer
, unsigned long* dataLength
, void*          keyBuffer
, unsigned char  keyLength
, char           ckeynum
);

MODULE = BTRIEVE::Native PACKAGE = BTRIEVE::Native

PROTOTYPES: DISABLE

short
Call( operation, posBlock, dataBuffer, dataLength, keyBuffer, keyNumber )
  unsigned short operation
  char*          posBlock
  char*          dataBuffer
  unsigned long  dataLength
  char*          keyBuffer
  short          keyNumber
  CODE:
  RETVAL = BTRCALL( operation, posBlock, dataBuffer, &dataLength, keyBuffer, MAX_KEY_SIZE, keyNumber );
  OUTPUT:
  posBlock   sv_setpvn((SV*)ST(1), posBlock  , POS_BLOCK_SIZE );
  dataBuffer sv_setpvn((SV*)ST(2), dataBuffer, dataLength     );
  dataLength
  keyBuffer  sv_setpvn((SV*)ST(4), keyBuffer , MAX_KEY_SIZE   );
  RETVAL
