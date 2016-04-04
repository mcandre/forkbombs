cmake_minimum_required(VERSION 3.4)

project(bomb)
set(EXECUTABLE_OUTPUT_PATH "bin")
set(CMAKE_C_FLAGS "-O2 -Wall -Wextra -Wmost -Weverything")
add_executable(bomb lib/bomb.c)

add_custom_target(cppcheck COMMAND cppcheck -q --enable=all --suppressions-list=$ENV{HOME}/suppressions.cfg lib)
add_custom_target(splint COMMAND find lib -type f -name '*.[ch]' -exec splint {} "\;")
add_custom_target(vera++ COMMAND find lib -type f -name '*.cpp' -o -name '*.[ch]' -exec vera++ -s {} "\;")
add_custom_target(lint DEPENDS cppcheck splint vera++)
