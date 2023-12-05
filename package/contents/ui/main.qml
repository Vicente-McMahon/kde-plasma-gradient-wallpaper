/*
    SPDX-FileCopyrightText: 2022  <>
    SPDX-License-Identifier: LGPL-2.1-or-later
*/

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras
import "./Components"

Item {
    id: root
    Rectangle {
        width: parent.width
        height: parent.height
        transformOrigin: Item.Center
        anchors.centerIn: parent.Center
        antialiasing: true
        Background {
            id: background
            colour1: wallpaper.configuration.Colour1
            colour2: wallpaper.configuration.Colour2
            colour3: wallpaper.configuration.Colour3
            colour4: wallpaper.configuration.Colour4
            xCoefficient: wallpaper.configuration.X
            yCoefficient: wallpaper.configuration.Y
            cCoefficient: wallpaper.configuration.C
            theDuration: wallpaper.configuration.Duration
        }
    }
    Connections {
        target: wallpaper.configuration
        onValueChanged: {
            background.theSequentialAnimation.stop()
            background.theAnimation1.duration = wallpaper.configuration.Duration/2
            background.theAnimation2.duration = wallpaper.configuration.Duration/2
            background.theAnimation3.duration = wallpaper.configuration.Duration/2
            background.theAnimation4.duration = wallpaper.configuration.Duration/2
            background.theAnimation1.to = wallpaper.configuration.Colour3
            background.theAnimation2.to = wallpaper.configuration.Colour4
            background.theAnimation3.to = wallpaper.configuration.Colour1
            background.theAnimation4.to = wallpaper.configuration.Colour2
            background.theSequentialAnimation.start()
            background.xCoefficient = wallpaper.configuration.X
            background.yCoefficient = wallpaper.configuration.Y
            background.cCoefficient = wallpaper.configuration.C
        }
    }
}
