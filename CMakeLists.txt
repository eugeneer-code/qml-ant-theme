cmake_minimum_required(VERSION 3.7)

project(QmlAnt LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

option(QMLANT_BUILD_EXAMPLE "Build ant theme demo" ON)
option(QMLANT_BUILD_STATIC "Build QmlAnt as static library" ON)

add_subdirectory(source)
if(QMLANT_BUILD_EXAMPLE)
    add_subdirectory(example)
endif()

message("---------------------------------
Configure Qml Ant theme build
---------------------------------
Product        = ${PROJECT_NAME}
Configuration  = ${CMAKE_BUILD_TYPE}
Static libs    = ${QMLANT_BUILD_STATIC}
Version        = TODO!
Qt version     = ${Qt5Core_VERSION}
Build path     = ${CMAKE_BINARY_DIR}
Compiler       = ${CMAKE_CXX_COMPILER_ID}
Compiler path  = ${CMAKE_CXX_COMPILER}
Compiler flags = ${CMAKE_CXX_FLAGS}
Linker flags   = ${CMAKE_EXE_LINKER_FLAGS}
Install path   = ${INSTALLATION_DIR}
Build example  = ${QMLANT_BUILD_EXAMPLE}
---------------------------------
")



