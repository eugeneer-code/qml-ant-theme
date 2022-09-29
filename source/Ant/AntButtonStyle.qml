import QtQuick 2.12
import AntTypes 1.0

QtObject {
    property var theme // AntTheme object

    function getBaseColor(buttonType, colorType){
        var accent = theme.getColor(colorType)
        switch(buttonType){
            case ButtonStyle.Primary: return accent[6]
            case ButtonStyle.Secondary: return theme.palette.basic[1]
            case ButtonStyle.Dashed: return theme.palette.basic[1]
            case ButtonStyle.Link: return "transparent"
            case ButtonStyle.Text: return "transparent"
        }
    }
}