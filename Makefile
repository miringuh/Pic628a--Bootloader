FILE=f628
PFILE=parser
PATH=/opt/microchip/xc8/v2.46/pic/bin/xc8
PATH2=/opt/microchip/xc8/v2.46/bin/xc8-cc
GCCS=/usr/bin/clang

all:
	${PATH2} -mcpu=16f628a -mno-keep-startup --fill=0X3FFF@0:0X3F -mdownload-hex -ginhx32 -w -mconst-data-in-progmem  -funsigned-char -oheaders/$(FILE) ${FILE}.c
parser:
	${GCCS} -oparser.o parser.c
#	./parser.o >icsp.txt	
	./parser.o >../AVRs/isp.c	

arch:
	/opt/microchip/xc8/v2.46/bin/xc8-ar dv --target=so headers/f628.h

clean:
	/bin/rm -f headers/*.sym headers/*.hex headers/*.sdb headers/*.lst headers/*.o headers/*.rlf headers/*.s headers/*.d headers/*.i headers/*.p1 headers/*.cmf headers/*.elf headers/*.hxl 
	/bin/clear
