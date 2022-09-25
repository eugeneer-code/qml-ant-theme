#ifndef QMLANT_ANTTYPES_H
#define QMLANT_ANTTYPES_H
#include <QObject>

/**
 * @brief Enum types for controls
 * Enum defined in C++ not in QML, so it can be used both in c++ and QML code.
 * If it would be defined in QML it can be used only in QML.
 */

namespace AntDesign {

class AppTheme {
    Q_GADGET
public:
    enum Value {
        Light,
        Dark
    };
    Q_ENUM(Value)
private:
    explicit AppTheme() {}
};

class Accent {
Q_GADGET
public:
    enum Value {
        Default,  // control will use default application color
        Red,
        Orange,
        Gold,
        Yellow,
        Lime,
        Green,
        Cyan,
        Blue,
        Geekblue,
        Purple,
        Magenta
    };
    Q_ENUM(Value)
private:
    explicit Accent(){}
};

class ButtonStyle {
Q_GADGET
public:
    enum Value {
        Primary,
        Secondary,
        Dashed,
        Link,
        Text
    };
    Q_ENUM(Value)
private:
    explicit ButtonStyle(){}
};

class TextStyle {
    Q_GADGET
public:
    enum Value {
        H1,
        H2,
        H3,
        H4,
        H5,
        Body1,
        Body2,
        Body3,
        Footnote
    };
    Q_ENUM(Value)
private:
    explicit TextStyle(){}
};

}

#endif //QMLANT_ANTTYPES_H
