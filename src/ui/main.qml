import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1

ApplicationWindow {
    width: 640
    height: 480
    visible: true

    color: systemPalette.window

    SystemPalette {
        id: systemPalette
    }

    ListView {
        id: eventsListView
        model: hierarchyModel

        spacing: 4
        clip: true
        anchors.fill: parent
        anchors.margins: 10

        delegate: HierarchyDelegate {
        }
    }

    ListModel {
        id: hierarchyModel
        ListElement { name: '278' }
        ListElement { name: '291' }
        ListElement { name: '292' }
        ListElement { name: '303' }
    }
}
