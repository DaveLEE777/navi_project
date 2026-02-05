import QtQuick 2.15

Item {
    width: 48
    height: 48

    // ✅ 필수: custom properties
    property string icon
    property string tabName
    property bool selected: false

    signal tabClicked()

    Image {
        anchors.centerIn: parent
        width: 28
        height: 28
        source: "qrc:/qt/qml/navi_project/assets/icons/" + icon
        opacity: selected ? 1.0 : 0.6
    }

    Rectangle {
        anchors.bottom: parent.bottom
        width: parent.width
        height: selected ? 3 : 0
        color: "#00AEEF"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: tabClicked()
    }
}
