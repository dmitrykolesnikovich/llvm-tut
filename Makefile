CXX = clang++
CXXFLAGS = -g -O3 -rdynamic
LDFLAGS = `llvm-config --cxxflags --ldflags --system-libs --libs core mcjit native`
toy: toy.cpp
	$(CXX) $(CXXFLAGS) toy.cpp $(LDFLAGS) -o toy

clean:
	rm toy
