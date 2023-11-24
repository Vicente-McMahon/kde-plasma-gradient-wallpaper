/*
    SPDX-FileCopyrightText: 2022  <>
    SPDX-License-Identifier: LGPL-2.1-or-later
*/

import QtQuick 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0 as QtControls
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.kquickcontrols 2.0 as KQuickControls
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
//import "./Components"

ColumnLayout {
    id: root
    property alias cfg_Colour1: colour1.color
    property alias cfg_Colour2: colour2.color
    property alias cfg_Colour3: colour3.color
    property alias cfg_Colour4: colour4.color
    // property alias cfg_Point1X: point1X.value
    // property alias cfg_Point1Y: point1Y.value
    // property alias cfg_Point2X: point2X.value
    // property alias cfg_Point2Y: point2Y.value
    property alias cfg_X: x.value
    property alias cfg_Y: y.value
    property alias cfg_C: c.value
    property alias cfg_Duration: duration.value

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
            dialogTitle: i18n("Colour1")
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
            dialogTitle: i18n("Colour2")
        }
    }
    QtControls.Label {
        Layout.minimumWidth: width
        Layout.maximumWidth: width
        width: formAlignment - PlasmaCore.Units.largeSpacing
        horizontalAlignment: Text.AlignRight
        text: i18nd("plasma_wallpaper.gradient", "Colour to animate to.")
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Colour3:")
        }
        KQuickControls.ColorButton {
            id: colour3
            dialogTitle: i18n("Colour3")
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Colour4:")
        }
        KQuickControls.ColorButton {
            id: colour4
            dialogTitle: i18n("Colour4")
        }
    }
    QtControls.Label {
        Layout.minimumWidth: width
        Layout.maximumWidth: width
        width: formAlignment - PlasmaCore.Units.largeSpacing
        horizontalAlignment: Text.AlignRight
        text: i18nd("plasma_wallpaper.gradient", "How long the animation takes.")
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 2
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Duration:")
        }
        QtControls.Slider {
            id: duration
            from: 500
            to: 20000
        }
    }
    RowLayout {
        spacing: PlasmaCore.Units.largeSpacing / 4
        QtControls.Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - PlasmaCore.Units.largeSpacing
            horizontalAlignment: Text.AlignRight
            text: i18nd("plasma_wallpaper.gradient", "Co-efficients of x, y, and c:")
        }
        QtControls.SpinBox {
            id: x
            from: -128
            value: 0
            to: 128
        }
        QtControls.SpinBox {
            id: y
            from: -128
            value: 0
            to: 128
        }
        QtControls.SpinBox {
            id: c
            from: -128
            value: 0
            to: 128
        }
    }
    Item {
        Layout.fillHeight: true
    }
}
