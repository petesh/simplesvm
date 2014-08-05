
CXX=g++
DMD=dmd

all: run

run: svm_use
	./$^

clean:
	rm -f svm_use *.a *.o dummymain.d

svm_use: svm_use.d svm_cpp.o svm.o dummymain.o
	$(DMD) -unittest -L-lstdc++ -of$@ $^

svm_cpp.o: svm_cpp.cpp
	$(CXX) -c -o $@ $^

%.o: %.d
	$(DMD) -c -of$@ $^

dummymain.d:
	echo "void main() {}" > $@

