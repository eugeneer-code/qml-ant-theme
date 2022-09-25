import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T
import Ant 1.0

T.Label {
    id: control

    color: AntTheme.titleTextColor
    //linkColor: control.palette.link

    property int textStyle: control.AntStyle.textStyle

    font.family: "Roboto"
    font.pixelSize: {
        switch(textStyle){
            case TextStyle.H1: return 38
            case TextStyle.H2: return 30
            case TextStyle.H3: return 24
            case TextStyle.H4: return 20
            case TextStyle.H5: return 16
            case TextStyle.Body1: return 14
            case TextStyle.Body2: return 14
            case TextStyle.Body3: return 14
            case TextStyle.Footnote: return 12
            default: return 16
        }
    }
    font.weight: {
        switch(textStyle){
            case TextStyle.H1: return Font.DemiBold
            case TextStyle.H2: return Font.DemiBold
            case TextStyle.H3: return Font.DemiBold
            case TextStyle.H4: return Font.DemiBold
            case TextStyle.H5: return Font.DemiBold
            case TextStyle.Body1: return Font.Normal
            case TextStyle.Body2: return Font.DemiBold
            case TextStyle.Body3: return Font.Bold
            case TextStyle.Footnote: return Font.Normal
            default: return Font.Normal
        }
    }
}