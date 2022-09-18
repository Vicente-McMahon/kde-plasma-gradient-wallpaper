add_definitions(-DTRANSLATION_DOMAIN=\"plasma_wallpaper_org.kde.plasma.gradient\")

add_library(gradientplugin SHARED gradientplugin.cpp)

target_link_libraries(gradientplugin
    KF5::I18n
    Qt5::Gui
    Qt5::Qml
)
install(TARGETS gradientplugin DESTINATION ${KDE_INSTALL_QMLDIR}/org/kde/plasma/private/gradient)
install(FILES qmldir DESTINATION ${KDE_INSTALL_QMLDIR}/org/kde/plasma/private/gradient)
