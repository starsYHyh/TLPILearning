cmake_minimum_required(VERSION 3.10.0)

# 项目名称和版本
project(PIPES VERSION 1.0 LANGUAGES C)

# 设置C编译标准
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED True)

# 设置源文件目录变量
set(LIB_DIR ${PROJECT_SOURCE_DIR}/lib)
set(LOCAL_LIB_DIR ${PROJECT_SOURCE_DIR}/../lib)
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)

# 包含目录
include_directories(
    ${LIB_DIR}
    ${LOCAL_LIB_DIR}
)

# 添加公共和私有源文件到变量
aux_source_directory(${LIB_DIR} LIBSRC)     # 公用
aux_source_directory(${LOCAL_LIB_DIR} LOCLIBSRC)   # 私有

# 设置可执行文件输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)   # PROJECT_SOURCE_DIR为CMakeLists.txt所在的目录

# 添加链接库
link_libraries(crypt)

# 添加编译选项
add_compile_options(-Wall -Wextra)  # 启用所有警告、额外警告

set(CMAKE_BUILD_TYPE "Debug")

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_options(-g)
elseif(CMAKE_BUILD_TYPE STREQUAL "Release")
    add_compile_options(-O3)
endif()

# 将可执行文件的名字存储在变量中
set(EXE_NAME "PIPE_LS_WC")

add_executable(${EXE_NAME}
    ${LIBSRC}
    ${LOCLIBSRC}
    ${SRC_DIR}/pipe_ls_wc.c
)