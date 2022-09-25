set(TARGET_NAME antqml)

find_package(Qt5 REQUIRED COMPONENTS Quick Core Qml Gui)

list(APPEND HEADERS
    AntThemeExport.h
    AntThemeLibrary.h
    AntStyle.h
    AntTypes.h
)

list(APPEND SOURCES
    AntThemeLibrary.cpp
    AntStyle.cpp
)

if(QMLANT_BUILD_STATIC)
    set(BUILD_TYPE STATIC)
else()
    set(BUILD_TYPE SHARED)
    add_definitions(-DANT_THEME_BUILD)
endif()

add_library(${TARGET_NAME} ${BUILD_TYPE}
    ${HEADERS} ${SOURCES}
    AntThemeRes.qrc
)

target_link_libraries(${TARGET_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
    Qt5::Qml
    Qt5::Gui
)

if(QMLANT_BUILD_STATIC)
    target_compile_definitions(${TARGET_NAME} PUBLIC -DANT_THEME_STATIC_BUILD)
endif()

target_include_directories(${TARGET_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})




