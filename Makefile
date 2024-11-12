all: lab11-2 hw11-21 test_lab11-2 test_hw11-21

CXX = clang++
CXXFLAGS = -std=c++14 -Wall -Werror


lab11-2: lab11-2.cpp
	$(CXX) $(CXXFLAGS) lab11-2.cpp -o lab11-2

hw11-21: hw11-21.cpp
	$(CXX) $(CXXFLAGS) hw11-21.cpp -o hw11-21

test_lab11-2: ./test_files/test_lab11-2.cpp
	$(CXX) $(CXXFLAGS) ./test_files/test_lab11-2.cpp -o ./test_files/test_lab11-2

test_hw11-21: ./test_files/test_hw11-21.cpp
	$(CXX) $(CXXFLAGS) ./test_files/test_hw11-21.cpp -o ./test_files/test_hw11-21

clean:
	rm -f lab11-2 hw11-21 ./test_files/test_lab11-2 ./test_files/test_hw11-21