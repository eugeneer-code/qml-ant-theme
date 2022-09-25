#ifndef ANT_THEME_EXPORT_H
#define ANT_THEME_EXPORT_H

#include <QtCore/qglobal.h>

#ifndef ANT_THEME_STATIC_BUILD
#  ifdef ANT_THEME_BUILD
#    define AntTheme_EXPORT Q_DECL_EXPORT
#  else
#    define AntTheme_EXPORT Q_DECL_IMPORT
#  endif
#else
#  define AntTheme_EXPORT
#endif

#endif // ANT_THEME_EXPORT_H
