cmake_minimum_required (VERSION 2.5.0)
project (Wicked-REPL)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_BUILD_TYPE Release)
#set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -O3")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_subdirectory (Funky-Assembler)
add_subdirectory (Funky-VM)
add_subdirectory (Wicked-Compiler)

if(COMMAND cmake_policy)
    cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR})

add_executable(iwicked repl.c)
target_link_libraries(iwicked wickedc funky-as funky-vm readline)
