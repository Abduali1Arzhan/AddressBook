import QtQuick 2.0
import ResourceProvider 1.0
import StyleModule 1.0
import QtGraphicalEffects 1.0

Rectangle
{
    id: root
    clip: true
    radius: width/2
    color: "transparent"
    border.color: Style.primaryColor
    border.width: 5

    property string imageSource

    Image {
        id: _internalImage
        sourceSize: Qt.size(parent.width, parent.height)
        source: root.imageSource
        antialiasing: true
        smooth: true
    }

    ColorOverlay{
        source: _internalImage
        anchors.fill: _internalImage
        color: Style.themeInvertedColor
        antialiasing: true
    }

}
