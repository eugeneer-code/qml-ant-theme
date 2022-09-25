#ifndef ANTTHEMELIBRARY_H
#define ANTTHEMELIBRARY_H

#include "AntThemeExport.h"

class QQmlEngine;

namespace AntDesign {

class AntTheme_EXPORT AntThemeLibrary {
public:
    static void initLibrary(QQmlEngine *engine);
};

}

#endif // ANTTHEMELIBRARY_H
