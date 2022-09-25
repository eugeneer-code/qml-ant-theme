import QtQuick 2.13
import Ant 1.0

pragma Singleton

QtObject {
    id: styleObject

    property var palette: AntPalette{}

    property int appTheme: AppTheme.Light

    property color backgroundColor
    property color textColor
    property color secondaryTextColor
    property color disableColor
    property color dividerColor
    property color borderColor

    function setTheme(theme){
        switch(theme){
        case AppTheme.Light:
            backgroundColor = Qt.rgba(0, 0, 0, 0.04)
            textColor = Qt.rgba(0, 0, 0, 0.85)
            secondaryTextColor = Qt.rgba(0, 0, 0, 0.45)
            disableColor = Qt.rgba(0, 0, 0, 0.25)
            dividerColor = Qt.rgba(0, 0, 0, 0.06)
            borderColor = Qt.rgba(0, 0, 0, 0.15)
            break;
        case AppTheme.Dark:
            backgroundColor = Qt.rgba(1, 1, 1, 0.08)
            textColor = Qt.rgba(1, 1, 1, 0.85)
            secondaryTextColor = Qt.rgba(1, 1, 1, 0.45)
            disableColor = Qt.rgba(1, 1, 1, 0.30)
            dividerColor = Qt.rgba(1, 1, 1, 0.12)
            borderColor = Qt.rgba(1, 1, 1, 0.20)
            break;
        }
        appTheme = theme
    }

   Component.onCompleted: setTheme(AppTheme.Light)

   // load fonts
   property FontLoader fontBlack: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Black.ttf")}
   property FontLoader fontBlackItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-BlackItalic.ttf")}
   property FontLoader fontBold: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Bold.ttf")}
   property FontLoader fontBoldItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-BoldItalic.ttf")}
   property FontLoader fontItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Italic.ttf")}
   property FontLoader fontLight: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Light.ttf")}
   property FontLoader fontLightItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-LightItalic.ttf")}
   property FontLoader fontMedium: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Medium.ttf")}
   property FontLoader fontMediumItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-MediumItalic.ttf")}
   property FontLoader fontRegular: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Regular.ttf")}
   property FontLoader fontThin: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-Thin.ttf")}
   property FontLoader fontThinItalic: FontLoader{source: Qt.resolvedUrl("fonts/Roboto-ThinItalic.ttf")}
}
