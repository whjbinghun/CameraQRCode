#
#   This file is part of JQLibrary
#
#   Copyright: Jason
#
#   Contact email: 188080501@qq.com
#
#   GNU Lesser General Public License Usage
#   Alternatively, this file may be used under the terms of the GNU Lesser
#   General Public License version 2.1 or version 3 as published by the Free
#   Software Foundation and appearing in the file LICENSE.LGPLv21 and
#   LICENSE.LGPLv3 included in the packaging of this file. Please review the
#   following information to ensure the GNU Lesser General Public License
#   requirements will be met: https://www.gnu.org/licenses/lgpl.html and
#   http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
#

INCLUDEPATH *= \
    $$PWD/include/JQQRCodeReader/

DEFINES *= \
    QZXING_LIBRARY \
    ZXING_ICONV_CONST \
    DISABLE_LIBRARY_FEATURES \
    NO_ICONV

INCLUDEPATH *= \
    $$PWD/src/JQQRCodeReader/lib \
    $$PWD/src/JQQRCodeReader/QZXing \
    $$PWD/src/JQQRCodeReader/zxing

LIBS += -L$$PWD/src/JQQRCodeReader/lib -lQZXing2

HEADERS *= \
    $$PWD/include/JQQRCodeReader/JQQRCodeReader.h \
    $$PWD/src/JQQRCodeReader/lib/QZXing.h \
    $$PWD/src/JQQRCodeReader/lib/QZXing_global.h

SOURCES *= \
    $$PWD/src/JQQRCodeReader/JQQRCodeReader.cpp \

win32-msvc* {

    INCLUDEPATH *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/msvc

    HEADERS *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/msvc/stdint.h \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/iconv.h

    SOURCES *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/win_iconv.c
}

win32-g++ {

    INCLUDEPATH *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing

    HEADERS *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/iconv.h

    SOURCES *= \
        $$PWD/src/JQQRCodeReader/zxing/win32/zxing/win_iconv.c
}

contains( QT, qml ) {

    contains(QT, concurrent) {

        contains(QT, multimedia) {

            HEADERS *= \
                $$PWD/include/JQQRCodeReader/JQQRCodeReaderForQml.h

            SOURCES *= \
                $$PWD/src/JQQRCodeReader/JQQRCodeReaderForQml.cpp

            RESOURCES *= \
                $$PWD/qml/JQQRCodeReaderQml.qrc

            QML_IMPORT_PATH *= \
                $$PWD/qml/

            PLUGINS *= \
                declarative_multimedia
        }
    }
}
