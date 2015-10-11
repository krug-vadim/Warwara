import QtQuick 2.4
import QtQuick.Controls 1.3

Rectangle {
    anchors.horizontalCenter: parent.horizontalCenter

    width: parent.width
    height: rowItem.height + 16

    color: systemPalette.button

    border.color: "#c0c0c0"
    border.width: 0
    radius: 8

    Row {
        id: rowItem
        anchors.verticalCenter: parent.verticalCenter

        spacing: 16

        Rectangle {
            id: dropRect
            width: 128
            height: 128

            border.color: "#a0a0a0"
            border.width: 2
            radius: 8

            Text {
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

                font.pixelSize: 66
                color: "#e0e0e0"
                text: "⇪"
            }

            DropArea {
                id: dropArea
                anchors.fill: parent

                onDropped: myClass.cppSlot(name, drop.urls)
            }

            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: dropRect
                        color: "grey"
                    }
                }
            ]
        }

        Rectangle
        {
            width: 1
            height: parent.height
            color: "#c0c0c0"
        }

        Text {
            height: parent.height
            color: "#c0c0c0"

            font.pixelSize: 66
            text: name
            verticalAlignment: Text.AlignVCenter
        }
    }

}
