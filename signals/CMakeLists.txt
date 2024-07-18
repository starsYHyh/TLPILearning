cmake_minimum_required(VERSION 2.8.3)

project(FILEIO)

aux_source_directory(../lib LIBSRC) # 所有项目公用的

aux_source_directory(./lib LOCLIBSRC) # 本项目特有的

include_directories(../lib ./lib)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

set(SRC ${PROJECT_SOURCE_DIR}/src)

set(CMAKE_BUILD_TYPE "Debug")

add_executable(SIG_RECEIVER
    ${LIBSRC}
    ${LOCLIBSRC}
    ${SRC}/sig_receiver.c
)