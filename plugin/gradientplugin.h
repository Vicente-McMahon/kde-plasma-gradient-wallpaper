/*
    SPDX-FileCopyrightText: 2022  <>
    SPDX-License-Identifier: LGPL-2.1-or-later
*/

#ifndef GRADIENTPLUGIN_H
#define GRADIENTPLUGIN_H

#include <QQmlExtensionPlugin>

class GradientPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri) override;
};

#endif // GRADIENTPLUGIN_H
