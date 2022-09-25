import QtQuick 2.13
import QtQuick.Controls 2.13
import Ant 1.0

Item {
    Column {
        anchors{
            fill: parent
            margins: 10
        }
        spacing : 8

        Label {
            text: "H1"
            AntStyle.textStyle: TextStyle.H1
        }
        Label {
            text: "H2"
            AntStyle.textStyle: TextStyle.H2
        }
        Label {
            text: "H3"
            AntStyle.textStyle: TextStyle.H3
        }
        Label {
            text: "H4"
            AntStyle.textStyle: TextStyle.H4
        }
        Label {
            text: "H5"
            AntStyle.textStyle: TextStyle.H5
        }
        Label {
            text: "Body1"
            AntStyle.textStyle: TextStyle.Body1
        }
        Label {
            text: "Body2"
            AntStyle.textStyle: TextStyle.Body2
        }
        Label {
            text: "Body3"
            AntStyle.textStyle: TextStyle.Body3
        }
        Label {
            text: "Footnote"
            AntStyle.textStyle: TextStyle.Footnote
        }
    }
}