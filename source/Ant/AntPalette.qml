import QtQuick 2.13
import QtGraphicalEffects 1.13

/*
 *  Colors definition
 */
QtObject {
    // gray basic colors
    property var basic: {
        1: "#ffffff",
        2: "#fafafa",
        3: "#f5f5f5",
        4: "#f0f0f0",
        5: "#d9d9d9",
        6: "#bfbfbf",
        7: "#8c8c8c",
        8: "#595959",
        9: "#434343",
        10: "#262626",
        11: "#1f1f1f",
        12: "#141414",
        13: "#000000"
    }

    // accent colors for Light theme
    property var red: {
        1: "#fff1f0",
        2: "#ffccc7",
        3: "#ffa39e",
        4: "#ff7875",
        5: "#ff4d4f",
        6: "#f5222d",
        7: "#cf1322",
        8: "#a8071a",
        9: "#820014",
        10: "#5c0011"
    }
    /// TODO: other colors
    property var volcano: {}
    property var orange: {}
    property var gold: {}
    property var yellow: {}
    property var lime: {}
    property var green: {}
    property var cyan: {}
    property var blue: {}
    property var geekblue: {}
    property var purple: {}
    property var magenta: {}

    // accent colors for Dark theme
    property var redDark: {
        1: "#2a1215",
        2: "#431418",
        3: "#58181c",
        4: "#791a1f",
        5: "#a61d24",
        6: "#d32029",
        7: "#e84749",
        8: "#f37370",
        9: "#f89f9a",
        10: "#fac8c3"
    }
    /// TODO: other colors
    property var volcanoDark: {}
    property var orangeDark: {}
    property var goldDark: {}
    property var yellowDark: {}
    property var limeDark: {}
    property var greenDark: {}
    property var cyanDark: {}
    property var blueDark: {}
    property var geekblueDark: {}
    property var purpleDark: {}
    property var magentaDark: {}
}
