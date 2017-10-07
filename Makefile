include ../mk/PcapPlusPlus.mk

# All Target
all:
	g++.exe $(PCAPPP_INCLUDES) -c -o main.o main.cpp
	g++.exe $(PCAPPP_LIBS_DIR) -static-libgcc -static-libstdc++ -o Tutorial-HelloWorld.exe main.o $(PCAPPP_LIBS)

# Clean Target
clean:
	del main.o
	del Tutorial-HelloWorld.exe
