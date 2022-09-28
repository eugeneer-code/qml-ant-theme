import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import Ant 1.0

ScrollView {
    id: view
    contentHeight: column.height
    ColumnLayout {
        id: column
        width: view.width

        ListModel {
            id: colorsModel
            ListElement{name: "Red accent"; alias: "red"}
            ListElement{name: "Volcano accent"; alias: "volcano"}
            ListElement{name: "Orange accent"; alias: "orange"}
            ListElement{name: "Gold accent"; alias: "gold"}
            ListElement{name: "Yellow accent"; alias: "yellow"}
            ListElement{name: "Lime accent"; alias: "lime"}
            ListElement{name: "Green accent"; alias: "green"}
            ListElement{name: "Cyan accent"; alias: "cyan"}
            ListElement{name: "Blue accent"; alias: "blue"}
            ListElement{name: "Geekblue accent"; alias: "geekblue"}
            ListElement{name: "Purple accent"; alias: "purple"}
            ListElement{name: "Magenta accent"; alias: "magenta"}
        }

        Label {
            text: "Basic colors"
        }
        Flow {
            Layout.preferredWidth: parent.width
            spacing: 8
            Repeater {
                model: 13
                delegate: Rectangle{
                     width: 50
                     height: 50
                     radius: 3
                     color: AntTheme.palette.basic[modelData + 1]
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: "basic-" + (modelData + 1)
                }
            }
        }

        Repeater{
            model: colorsModel
            Column {
                Layout.topMargin: 12
                Layout.preferredWidth: parent.width
                Label {
                    text: name
                }
                Flow {
                    width: parent.width
                    spacing: 8
                    Repeater {
                        model: 10
                        delegate: Rectangle{
                             width: 50
                             height: 50
                             radius: 3
                             color: AntTheme.darkTheme ? AntTheme.palette[alias+"Dark"][modelData + 1] : AntTheme.palette[alias][modelData + 1]
                             MouseArea{
                                id: mouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                             }
                             ToolTip.visible: mouseArea.containsMouse
                             ToolTip.text: alias + "-" + (modelData + 1)
                        }
                    }
                }
            }
        }

        Item {
            Layout.fillHeight: true
        }
    }
}