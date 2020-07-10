import QtQuick 2.0
import StyleModule 1.0
import ResourceProvider 1.0

Rectangle
{
    id: root

    color: Style.backgroundColor
    opacity: !_delegateArea.pressed ? Style.defaultOpacity : Style.emphasisOpacity

    property string name
    property string surname
    property string phone

    signal triggered

    MouseArea{
        id: _delegateArea
        anchors.fill: parent
        onClicked: root.triggered()
    }

    ImageBubble{
        id: _imageBubble
        height: parent.height
        width: height
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: Style.smallSpacing
        imageSource: ResourceProvider.defaultContactIcon
    }

    Column
    {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: _imageBubble.right
        anchors.leftMargin: Style.mediumSpacing
        spacing: Style.mediumSpacing
        Row{
            spacing: Style.smallSpacing
            Text {
                id: _nameText
                text: qsTr(root.name)
                color: Style.primaryColor
            }
            Text {
                id: _surnameText
                text: qsTr(root.surname)
                color: Style.primaryColor
            }
        }

        Text {
            id: _phoneText
            text: qsTr("+7" + root.phone)
            color: Style.primaryColor
        }
    }

}
