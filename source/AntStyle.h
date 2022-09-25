#ifndef QMLANT_ANTSTYLE_H
#define QMLANT_ANTSTYLE_H
#include <QObject>
#include <QtQml>

namespace AntDesign {

/*
 * Implements attached properties for Ant controls
 */
class AntStyle : public QObject {
Q_OBJECT
    Q_PROPERTY(int textStyle READ textStyle WRITE setTextStyle NOTIFY tsChanged)
    Q_PROPERTY(int controlColor READ controlColor WRITE setControlColor NOTIFY ccChanged)
    Q_PROPERTY(int buttonStyle READ buttonStyle WRITE setButtonStyle NOTIFY bsChanged)

public:
    AntStyle(QObject *parent = nullptr);

    static AntStyle* qmlAttachedProperties(QObject* object);

    int textStyle() const;
    void setTextStyle(int style);

    int controlColor() const;
    void setControlColor(int color);

    int buttonStyle() const;
    void setButtonStyle(int style);

signals:
    void tsChanged();
    void ccChanged();
    void bsChanged();

private:
    int _textStyle;
    int _controlColor;
    int _buttonStyle;
};

}

QML_DECLARE_TYPEINFO(AntDesign::AntStyle, QML_HAS_ATTACHED_PROPERTIES)

#endif //QMLANT_ANTSTYLE_H
