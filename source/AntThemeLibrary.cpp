#include "AntThemeLibrary.h"
#include <QtQml/QtQml>
#include "AntStyle.h"
#include "AntTypes.h"

using namespace AntDesign;

void AntThemeLibrary::initLibrary(QQmlEngine *engine)
{
#if defined ANT_THEME_STATIC_BUILD
	// Init resources in case of static build
	Q_INIT_RESOURCE(AntThemeRes);
#endif

	// Define style search path
	engine->addImportPath(":/");

	// Register C++ objects
    qmlRegisterUncreatableType<AntDesign::AntStyle>("Ant", 1, 0, "AntStyle", "Ant attached properties");

    qmlRegisterUncreatableType<AntDesign::AppTheme>("AntTypes", 1, 0, "AppTheme", "enum class for theme");
    qmlRegisterUncreatableType<AntDesign::Accent>("AntTypes", 1, 0, "AccentColor", "enum class for accent color");
    qmlRegisterUncreatableType<AntDesign::ButtonStyle>("AntTypes", 1, 0, "ButtonStyle", "enum class for button style");
    qmlRegisterUncreatableType<AntDesign::TextStyle>("AntTypes", 1, 0, "TextStyle", "enum class for text style");

	qDebug() << "Ant theme init done";
}
