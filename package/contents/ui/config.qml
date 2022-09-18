/*
    SPDX-FileCopyrightText: 2022  <>
    SPDX-License-Identifier: LGPL-2.1-or-later
*/

import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0 as QtControls
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrols 2.0 as KQuickControls
import QtGraphicalEffects 1.0

ColumnLayout {
    id: root
    property alias cfg_Colour1: colour1.color
    property alias cfg_Colour2: colour2.color
    property alias cfg_Point1X: point1x.value
    property alias cfg_Point1Y: point1y.value
    property alias cfg_Point2X: point2x.value
    property alias cfg_Point2Y: point2y.value

    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Colour1:")
        }
        KQuickControls.ColorButton {
            id: colour1
            dialogTitle: i18n("Colour1:")
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Colour2:")
        }
        KQuickControls.ColorButton {
            id: colour2
            dialogTitle: i18n("Colour2:")
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Preview:")
        }
        Rectangle {
            width: 100
            height: 50
            LinearGradient {
                    anchors.fill: parent
                    start: Qt.point((cfg_Point1X ?? 512) * parent.width/1024, (cfg_Point1Y ?? 1024) * parent.height/1024)
                    end: Qt.point((cfg_Point2X ?? 512) * parent.width/1024, (cfg_Point2Y ?? 1024) * parent.height/1024)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: cfg_Colour1 || "blue" }
                        GradientStop { position: 1.0; color: cfg_Colour2 || "green" }
                    }
                }
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Point1X(start of gradient):")
        }
        QtControls.Slider {
            id: point1x
            minimumValue: 0
            maximumValue: 1024
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Point1Y(start of gradient):")
        }
        QtControls.Slider {
            id: point1y
            minimumValue: 0
            maximumValue: 1024
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "  Point2X(end of gradient):")
        }
        QtControls.Slider {
            id: point2x
            minimumValue: 0
            maximumValue: 1024
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "  Point2Y(end of gradient):")
        }
        QtControls.Slider {
            id: point2y
            minimumValue: 0
            maximumValue: 1024
        }
    }

    Item {
        Layout.fillHeight: true
    }
}
