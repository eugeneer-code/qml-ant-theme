import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import Ant 1.0
import AntTypes 1.0

Item {
    ColumnLayout{
        anchors{
            fill: parent
            margins: 10
        }
        Repeater{
            model: [AccentColor.Blue, AccentColor.Red, AccentColor.Orange,
                    AccentColor.Green, AccentColor.Cyan]
            RowLayout{
                Button{
                    text: "Secondary"
                    AntStyle.controlColor: modelData
                }
                Button{
                    text: "Primary"
                    AntStyle.buttonStyle: ButtonStyle.Primary
                    AntStyle.controlColor: modelData
                }
                Button{
                    text: "Dashed"
                    AntStyle.buttonStyle: ButtonStyle.Dashed
                    AntStyle.controlColor: modelData
                }
                Button{
                    text: "Link"
                    AntStyle.buttonStyle: ButtonStyle.Link
                    AntStyle.controlColor: modelData
                }
                Button{
                    text: "Text"
                    AntStyle.buttonStyle: ButtonStyle.Text
                    AntStyle.controlColor: modelData
                }
            }
        }
        Item {
            Layout.fillHeight: true
        }
    }
}