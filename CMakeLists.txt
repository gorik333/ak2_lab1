cmake_minimum_required (VERSION 3.5)
project(calculator)


set(SRC_FILES calculatorTest.cpp)
set(LIB_FILES calculator.cpp calculator.h)



add_executable(calculatorTest ${SRC_FILES})
add_library(calcLib STATIC ${LIB_FILES})
target_link_libraries(calculatorTest calcLib)
