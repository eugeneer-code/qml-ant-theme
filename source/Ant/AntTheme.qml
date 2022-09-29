import QtQuick 2.12
import AntTypes 1.0

pragma Singleton

QtObject {
    id: themeObject

    property var palette: AntPalette{}
    property var buttonStyle: AntButtonStyle{
        theme: themeObject
    }

    property int appTheme: AppTheme.Light
    readonly property bool darkTheme: appTheme == AppTheme.Dark
    property var appAccent: AccentColor.Blue

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

    function setAccent(accent){
        if(accent == AccentColor.Default) return; // Default can't be used as application accent color
        appAccent = accent
    }

   Component.onCompleted: setTheme(AppTheme.Light)

    // returns selected accent color array
   function getColor(accent){
        if(accent == AccentColor.Default) accent = appAccent
        var colorName = palette.colorName(accent)
        if(darkTheme) colorName += "Dark"
        return palette[colorName]
   }

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
