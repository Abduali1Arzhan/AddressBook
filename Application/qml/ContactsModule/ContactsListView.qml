import QtQuick 2.0
import StyleModule 1.0
import ContactsModel 1.0

ListView
{
    id: root

    spacing: Style.bigSpacing
    section.criteria: ViewSection.FirstCharacter
    section.property: "nameText"

    model: ListModel{
        id: _defaultModel

        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Brzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Crzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Drzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }
        ListElement{
            nameText: "Arzhan"
            surnameText: "Abduali"
            phoneText: "7001098309"
        }

    }

    delegate: ContactsListDelegate
    {
        height: 70
        width: parent.width
        name: nameText
        surname: surnameText
        phone: phoneText
    }

}
