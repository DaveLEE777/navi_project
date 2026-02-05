cmake_minimum_required(VERSION 3.16)

project(navi_project VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appnavi_project
    main.cpp
)

qt_add_qml_module(appnavi_project
    URI navi_project
    QML_FILES
        Main.qml
        QML_FILES StatusBar.qml
        RESOURCES assets/icons/call.svg assets/icons/car.svg assets/icons/music.svg assets/icons/phone.svg assets/icons/vol0.svg assets/icons/vol1.svg assets/icons/vol2.svg assets/icons/vol3.svg assets/icons/winshield_back.svg assets/icons/winshield_front.svg
        QML_FILES StackView/MapView.qml
        QML_FILES TabIcon.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appnavi_project PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appnavi_project
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appnavi_project
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appnavi_project
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
