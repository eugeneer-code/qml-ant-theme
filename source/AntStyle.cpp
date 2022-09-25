#include "AntStyle.h"
#include "AntTypes.h"

using namespace AntDesign;

AntStyle::AntStyle(QObject* parent)
    : QObject(parent)
    , _textStyle(TextStyle::Body1)
    , _controlColor(Accent::Default)
    , _buttonStyle(ButtonStyle::Secondary)
{
}

AntStyle* AntStyle::qmlAttachedProperties(QObject *object)
{
    return new AntStyle(object);
}

int AntStyle::textStyle() const
{
    return _textStyle;
}
void AntStyle::setTextStyle(int style)
{
    _textStyle = style;
    emit tsChanged();
}

int AntStyle::controlColor() const
{
    return _controlColor;
}

void AntStyle::setControlColor(int color)
{
    _controlColor = color;
    emit ccChanged();
}

int AntStyle::buttonStyle() const
{
    return _buttonStyle;
}

void AntStyle::setButtonStyle(int style)
{
    _buttonStyle = style;
    emit bsChanged();
}
