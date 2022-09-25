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
            text: "Basic colors"
        }
        Flow {
            width: parent.width
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

        Label {
            text: "Red accent"
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
                     color: AntTheme.darkTheme ? AntTheme.palette.redDark[modelData + 1] : AntTheme.palette.red[modelData + 1]
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: "red-" + (modelData + 1)
                }
            }
        }
    }
}