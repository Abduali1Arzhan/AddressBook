import QtQuick 2.12
import QtQuick.Window 2.12
import StyleModule 1.0
import ContactsModule 1.0


Window
{
    visible: true
    width: 480
    height: 640
    title: qsTr("Application")
    color: Style.backgroundColor

    ContactsListView
    {
        anchors.fill: parent
    }
}
