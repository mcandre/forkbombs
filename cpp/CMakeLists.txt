cmake_minimum_required(VERSION 3.4)

project(bomb)
set(EXECUTABLE_OUTPUT_PATH "bin")
set(CMAKE_CXX_FLAGS "-std=c++11 -stdlib=libc++ -O2 -Wall -Wextra -pedantic -Weffc++ -Wno-c++98-compat")
if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wmost -Weverything")
endif()
add_executable(bomb lib/bomb.cpp)

add_custom_target(cppcheck COMMAND cppcheck -q --enable=all --suppressions-list=$ENV{HOME}/suppressions.cfg lib)
add_custom_target(splint COMMAND find lib -type f -iname '*.[ch]' -exec splint {} "\;")
add_custom_target(vera++ COMMAND find lib -type f -iname '*.cpp' -o -iname '*.cc' -o -iname '*.cxx' -o -iname '*.c' -o -iname '*.hh' -o -iname '*.hxx' -o -iname '*.h' -exec vera++ -s {} "\;")
add_custom_target(lint DEPENDS cppcheck splint vera++)
