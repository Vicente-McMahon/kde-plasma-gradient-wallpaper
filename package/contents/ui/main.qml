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

Item {
    id: root
    LinearGradient {
            anchors.fill: parent
            start: Qt.point((wallpaper.configuration.Point1X ?? 512) * parent.width/1024, (wallpaper.configuration.Point1Y ?? 1024) * parent.height/1024)
            end: Qt.point((wallpaper.configuration.Point2X ?? 512) * parent.width/1024, (wallpaper.configuration.Point2Y ?? 1024) * parent.height/1024)
            gradient: Gradient {
                GradientStop { position: 0.0; color: wallpaper.configuration.Colour1 || "blue" }
                GradientStop { position: 1.0; color: wallpaper.configuration.Colour2 || "green" }
            }
        }
}
