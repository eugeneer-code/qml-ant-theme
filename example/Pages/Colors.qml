import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import Ant 1.0

Item {
    ColumnLayout {
        anchors{
            fill: parent
            margins: 10
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

        Label {
            Layout.topMargin: 12
            text: "Red accent"
        }
        Flow {
            Layout.preferredWidth: parent.width
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

        Item {
            Layout.fillHeight: true
        }
    }
}