import QtQuick 2.13
import QtGraphicalEffects 1.13
import AntTypes 1.0

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
    property var volcano: {
        1: "#fff2e8",
        2: "#ffd8bf",
        3: "#ffbb96",
        4: "#ff9c6e",
        5: "#ff7a45",
        6: "#fa541c",
        7: "#d4380d",
        8: "#ad2102",
        9: "#871400",
        10: "#610b00"
    }
    property var orange: {
        1: "#fff7e6",
        2: "#ffe7ba",
        3: "#ffd591",
        4: "#ffc069",
        5: "#ffa940",
        6: "#fa8c16",
        7: "#d46b08",
        8: "#ad4e00",
        9: "#873800",
        10: "#612500"
    }
    property var gold: {
        1: "#fffbe6",
        2: "#fff1b8",
        3: "#ffe58f",
        4: "#ffd666",
        5: "#ffc53d",
        6: "#faad14",
        7: "#d48806",
        8: "#ad6800",
        9: "#874d00",
        10: "#613400"
    }
    property var yellow: {
        1: "#feffe6",
        2: "#ffffb8",
        3: "#fffb8f",
        4: "#fff566",
        5: "#ffec3d",
        6: "#fadb14",
        7: "#d4b106",
        8: "#ad8b00",
        9: "#876800",
        10: "#614700"
    }
    property var lime: {
        1: "#fcffe6",
        2: "#f4ffb8",
        3: "#eaffbf",
        4: "#d3f261",
        5: "#bae637",
        6: "#a0d911",
        7: "#7cb305",
        8: "#5b8c00",
        9: "#3f6600",
        10: "#254009"
    }
    property var green: {
        1: "#f6ffed",
        2: "#d9f7be",
        3: "#b7eb8f",
        4: "#95de64",
        5: "#73d13d",
        6: "#52c41a",
        7: "#389e0d",
        8: "#237804",
        9: "#135200",
        10: "#092b00"
    }
    property var cyan: {
        1: "#e6fffb",
        2: "#b5f5ec",
        3: "#87e8de",
        4: "#5cdbd3",
        5: "#36cfc9",
        6: "#13c2c2",
        7: "#08979c",
        8: "#006d75",
        9: "#00474f",
        10: "#002329"
    }
    property var blue: {
        1: "#e6f7ff",
        2: "#bae7ff",
        3: "#91d5ff",
        4: "#69c0ff",
        5: "#40a9ff",
        6: "#1890ff",
        7: "#096dd9",
        8: "#0050b3",
        9: "#003a8c",
        10: "#002766"
    }
    property var geekblue: {
        1: "#f0f5ff",
        2: "#d6e4ff",
        3: "#adc6ff",
        4: "#85a5ff",
        5: "#597ef7",
        6: "#2f54eb",
        7: "#1d39c4",
        8: "#10239e",
        9: "#061178",
        10: "#030652"
    }
    property var purple: {
        1: "#f9f0ff",
        2: "#efdbff",
        3: "#d3adf7",
        4: "#b37feb",
        5: "#9254de",
        6: "#722ed1",
        7: "#531dab",
        8: "#391085",
        9: "#22075e",
        10: "#120338"
    }
    property var magenta: {
        1: "#fff0f6",
        2: "#ffd6e7",
        3: "#ffadd2",
        4: "#ff85c0",
        5: "#f759ab",
        6: "#eb2f96",
        7: "#c41d7f",
        8: "#9e1068",
        9: "#780650",
        10: "#520339"
    }

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
    property var volcanoDark: {
        1: "#2b1611",
        2: "#441d12",
        3: "#592716",
        4: "#7c3118",
        5: "#aa3e19",
        6: "#d84a1b",
        7: "#e87040",
        8: "#f3956a",
        9: "#f8b692",
        10: "#fad4bc"
    }
    property var orangeDark: {
        1: "#2b1d11",
        2: "#442a11",
        3: "#593815",
        4: "#7c4a15",
        5: "#aa6215",
        6: "#d87a16",
        7: "#e89a3c",
        8: "#f3b765",
        9: "#f8cf8d",
        10: "#fae3b7"
    }
    property var goldDark: {
        1: "#2b2111",
        2: "#443111",
        3: "#594214",
        4: "#7c5914",
        5: "#aa7714",
        6: "#d89614",
        7: "#e8b339",
        8: "#f3cc62",
        9: "#f8df8b",
        10: "#faedb5"
    }
    property var yellowDark: {
        1: "#2b2611",
        2: "#443b11",
        3: "#595014",
        4: "#7c6e14",
        5: "#aa9514",
        6: "#d8bd14",
        7: "#e8d639",
        8: "#f3ea62",
        9: "#f8f48b",
        10: "#fafab5"
    }
    property var limeDark: {
        1: "#1f2611",
        2: "#2e3c10",
        3: "#3e4f13",
        4: "#536d13",
        5: "#6f9412",
        6: "#8bbb11",
        7: "#a9d134",
        8: "#c9e75d",
        9: "#e4f88b",
        10: "#f0fab5"
    }
    property var greenDark: {
        1: "#162312",
        2: "#1d3712",
        3: "#274916",
        4: "#306317",
        5: "#3c8618",
        6: "#49aa19",
        7: "#6abe39",
        8: "#8fd460",
        9: "#b2e58b",
        10: "#d5f2bb"
    }
    property var cyanDark: {
        1: "#112123",
        2: "#112526",
        3: "#144848",
        4: "#146262",
        5: "#138582",
        6: "#13a8a8",
        7: "#33bcb7",
        8: "#58d1c9",
        9: "#84e2d8",
        10: "#b2f1e8"
    }
    property var blueDark: {
        1: "#111d2c",
        2: "#112a45",
        3: "#15395b",
        4: "#164c7e",
        5: "#1765ad",
        6: "#177ddc",
        7: "#3c9ea8",
        8: "#65b7f3",
        9: "#8dcff8",
        10: "#b7e3fa"
    }
    property var geekblueDark: {
        1: "#131629",
        2: "#161d40",
        3: "#1c2755",
        4: "#203175",
        5: "#263ea0",
        6: "#2b4acb",
        7: "#5273e0",
        8: "#7f9ef3",
        9: "#a8c1f8",
        10: "#d2e0fa"
    }
    property var purpleDark: {
        1: "#1a1325",
        2: "#24163a",
        3: "#301c4d",
        4: "#3e2069",
        5: "#51258f",
        6: "#642ab5",
        7: "#854eca",
        8: "#ab7ae0",
        9: "#cda8f0",
        10: "#ebd7da"
    }
    property var magentaDark: {
        1: "#291321",
        2: "#40162f",
        3: "#551c3b",
        4: "#75204f",
        5: "#a02669",
        6: "#cb2b83",
        7: "#e0529c",
        8: "#f37fb7",
        9: "#f8a8cc",
        10: "#fad2e3"
    }

    function colorName(accent){
        switch(accent){
            case AccentColor.Red: return "red";
            case AccentColor.Orange: return "orange";
            case AccentColor.Gold: return "gold";
            case AccentColor.Yellow: return "yellow";
            case AccentColor.Lime: return "lime";
            case AccentColor.Green: return "green";
            case AccentColor.Cyan: return "cyan";
            case AccentColor.Blue: return "blue";
            case AccentColor.Geekblue: return "geekblue";
            case AccentColor.Purple: return "purple";
            case AccentColor.Magenta: return "magenta";
            default: return "blue";
        }
    }
}
