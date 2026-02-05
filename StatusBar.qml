import QtQuick


Rectangle {
    height: 60
    color: "#222222"

    signal tabSelected(string tab)
    property string currentTab: "map"

    Row {
        anchors.centerIn: parent
        spacing: 40

        TabIcon {
            icon: "music.svg"
            tabName: "music"
            selected: currentTab === "music"
            onTabClicked: {
                currentTab = tabName
                tabSelected(tabName)
            }
        }

        TabIcon {
            icon: "phone.svg"
            tabName: "phone"
            selected: currentTab === "phone"
            onTabClicked: {
                currentTab = tabName
                tabSelected(tabName)
            }
        }

        TabIcon {
            icon: "car.svg"
            tabName: "car"
            selected: currentTab === "car"
            onTabClicked: {
                currentTab = tabName
                tabSelected(tabName)
            }
        }

    }
}
