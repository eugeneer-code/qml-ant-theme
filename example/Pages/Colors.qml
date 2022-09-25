import QtQuick 2.13
import QtQuick.Controls 2.13
import Ant 1.0

Item {
    Column {
        anchors{
            fill: parent
            margins: 10
        }

        Label {
            text: "Colors"
        }
        Flow {
            width: parent.width
            spacing: 8
            Repeater {
                model: [
                    {name: "basic-1", data: AntTheme.palette.basic[1]},
                    {name: "basic-2", data: AntTheme.palette.basic[2]},
                    {name: "basic-3", data: AntTheme.palette.basic[3]},
                    {name: "basic-4", data: AntTheme.palette.basic[4]},
                    {name: "basic-5", data: AntTheme.palette.basic[5]},
                    {name: "basic-6", data: AntTheme.palette.basic[6]},
                    {name: "basic-7", data: AntTheme.palette.basic[7]},
                    {name: "basic-8", data: AntTheme.palette.basic[8]}
                ]
                delegate: Rectangle{
                     width: 50
                     height: 50
                     radius: 3
                     color: modelData.data
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: modelData.name
                }
            }
        }
    }
}