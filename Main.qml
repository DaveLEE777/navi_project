import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 1024
    height: 600
    visible: true

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("MapView.qml")
    }

    StatusBar {
        anchors.bottom: parent.bottom
        width: parent.width

        onTabSelected: function(tab) {
            if (tab === "car") {
                stackView.replace(Qt.resolvedUrl("MapView.qml"))
            } else if (tab === "music") {
                stackView.replace(Qt.resolvedUrl("MusicView.qml"))
            } else if (tab === "phone") {
                stackView.replace(Qt.resolvedUrl("PhoneView.qml"))
            }
        }
    }
}
