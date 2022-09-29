import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import Ant 1.0
import AntTypes 1.0
import "Pages"

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: "Ant Style Library"

    color: AntTheme.backgroundColor

    Component.onCompleted:{
        drawer.open()
    }

    Drawer {
        id: drawer
        width: 150
        height: window.height
        dim: false
        //interactive: false

        ListView {
            anchors.fill: parent
            model:["Colors", "Typography", "Buttons"]
            boundsBehavior: Flickable.StopAtBounds
            delegate: ItemDelegate{
                width: parent.width
                text: modelData
                onClicked: stack.currentIndex = index
            }
        }
    }

    StackLayout {
        id: stack
        anchors{
            fill: parent
            leftMargin: drawer.x + drawer.width
            topMargin: 40
        }
        currentIndex: 2
        Colors{}
        Typography{}
        Buttons{}
    }

    // Theme selector
    ComboBox {
        anchors {
           top: parent.top
           right: parent.right
        }
        model: ["Light", "Dark"]
        onActivated: {
            switch(index){
                case 0: AntTheme.setTheme(AppTheme.Light); break;
                case 1: AntTheme.setTheme(AppTheme.Dark); break;
            }
        }
    }
}
