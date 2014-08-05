
CXX=g++
DMD=dmd

all: svm_use

clean:
	rm -f svm_use *.a *.o

svm_use: svm_use.d svm_cpp.o svm.a
	$(DMD) -L-lc++ svm.a svm_cpp.o svm_use.d -of$@

svm_cpp.o: svm_cpp.cpp
	$(CXX) -c -o $@ $<

svm.a: svm.di
	$(DMD) -lib -of$@ $<

