CXX = /usr/local/Cellar/gcc/8.3.0/bin/g++-8
CXXFLAGS = -Wall -pedantic -fopenmp --std=c++11
map: system_solver.cpp
	$(CXX)  system_solver.cpp -o system_solver_debug -DMAP=1 $(CXXFLAGS)

solver:
	$(CXX)  system_solver.cpp -o system_solver  $(CXXFLAGS)

test: solver
	./system_solver input/input_data_exo_1.1/matrice_file_64.csv  10  output/output_data_exo_1.1/validation_matrice_file_64_10.csv 2

debug: map
	./system_solver_debug input/input_data_exo_1.1/matrice_file_64.csv  10  output/output_data_exo_1.1/validation_matrice_file_64_10.csv 2

