import QtQuick 2.12
import Ant 1.0

pragma Singleton

QtObject {
    id: styleObject

    property var palette: AntPalette{}

    property int appTheme: AppTheme.Light
    property bool darkTheme: appTheme == AppTheme.Dark

    property color backgroundColor
    property color textColor
    property color titleTextColor
    property color secondaryTextColor
    property color disableColor
    property color dividerColor
    property color borderColor

    function setTheme(theme){
        switch(theme){
        case AppTheme.Light:
            backgroundColor = "#f5f5f5"
            textColor = "#595959"
            titleTextColor = "#262626"
            secondaryTextColor = "#8c8c8c"
            disableColor = "#bfbfbf"
            dividerColor = "#f0f0f0"
            borderColor = "#ececec"
            break;
        case AppTheme.Dark:
            backgroundColor = "#262626"
            textColor = "#acacac"
            titleTextColor = "#d8d8d8"
            secondaryTextColor = "#7d7d7d"
            disableColor = "#5a5a5a"
            dividerColor = "#303030"
            borderColor = "#434343"
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
