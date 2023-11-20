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
    id: background
    property var colour1: "green"
    property var colour2: "blue"
    property var colour3: "green"
    property var colour4: "blue"
    property var theDuration: 500
    property var point1X: 0
    property var point1Y: 0
    property var point2X: 1024
    property var point2Y: 1024
    property alias theSequentialAnimation: sequentialAnimation
    property alias theAnimation1: animation1
    property alias theAnimation2: animation2
    property alias theAnimation3: animation3
    property alias theAnimation4: animation4
    width: parent.width
    height: parent.height
    SequentialAnimation {
        id: sequentialAnimation
        running: true
        loops: Animation.Infinite
        ParallelAnimation {
            id: parallelAnimation1
            ColorAnimation {id: animation1; target: background; property: "colour1"; to: colour3; duration: theDuration}
            ColorAnimation {id: animation2; target: background; property: "colour2"; to: colour4; duration: theDuration}
        }
        ParallelAnimation {
            id: parallelAnimation2
            ColorAnimation {id: animation3; target: background; property: "colour1"; to: colour1; duration: theDuration}
            ColorAnimation {id: animation4; target: background; property: "colour2"; to: colour2; duration: theDuration}
        }
    }
    Rectangle {
        width: parent.width
        height: parent.height
        color: "black"
        LinearGradient {
            id: gradient
            anchors.fill: parent
            start: Qt.point((point1X ?? 512) * parent.width/1024, (point1Y ?? 1024) * parent.height/1024)
            end: Qt.point((point2X ?? 512) * parent.width/1024, (point2Y ?? 1024) * parent.height/1024)
            gradient: Gradient {
                GradientStop { position: 0.0; color: colour1 }
                GradientStop { position: 1.0; color: colour2 }
            }
            visible: true
        }
    }
}
