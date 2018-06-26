cmake_minimum_required(VERSION 2.6)
project(Polynom)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall")

# Library

add_library(Polynom_lib
	src/Polynom.cpp
	src/Polynom.h)

set_target_properties(Polynom_lib PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED YES
	CXX_EXTENSIONS NO)

  # Program itself

  add_executable(Polynom src/main.cpp)

  add_dependencies(Polynom Polynom_lib)

  set_target_properties(Polynom PROPERTIES
  	CXX_STANDARD 11
  	CXX_STANDARD_REQUIRED YES
  	CXX_EXTENSIONS NO)

  target_link_libraries(Polynom Polynom_lib)

  # Unittests

add_executable(Polynom_unittests
	tests/main.cpp
	tests/Polynom_unittests.cpp)

set_target_properties(Polynom_unittests PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED YES
	CXX_EXTENSIONS NO)

target_include_directories(Polynom_unittests PUBLIC
	"${PROJECT_SOURCE_DIR}/src"
	"${PROJECT_SOURCE_DIR}/tests/gtest/googletest"
	"${PROJECT_SOURCE_DIR}/tests/gtest/googletest/include")

add_dependencies(Polynom_unittests Polynom_lib)

target_link_libraries(Polynom_unittests Polynom_lib)


find_package(Threads REQUIRED)
target_link_libraries(Polynom_unittests ${CMAKE_THREAD_LIBS_INIT})
