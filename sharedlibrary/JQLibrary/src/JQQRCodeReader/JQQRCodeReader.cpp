/*
    This file is part of JasonQt

    Copyright: Jason

    Contact email: 188080501@qq.com

    GNU Lesser General Public License Usage
    Alternatively, this file may be used under the terms of the GNU Lesser
    General Public License version 2.1 or version 3 as published by the Free
    Software Foundation and appearing in the file LICENSE.LGPLv21 and
    LICENSE.LGPLv3 included in the packaging of this file. Please review the
    following information to ensure the GNU Lesser General Public License
    requirements will be met: https://www.gnu.org/licenses/lgpl.html and
    http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
*/
/*
    本文件中，部分源码来自于QZxing

    https://github.com/ftylitak/qzxing
*/

#include "JQQRCodeReader.h"

// Qt lib import
#include <QDebug>
#include <QImage>
#include <QMetaObject>
#include <QSemaphore>

// zxing lib import
#include "QZXing.h"



// JQQRCodeReader
JQQRCodeReader::JQQRCodeReader()
{
}

JQQRCodeReader::~JQQRCodeReader()
{
}

//解码图片
QString JQQRCodeReader::decodeImage(QImage &image, const int &decodeType)
{
    QZXing *pDecoder = new QZXing(QZXing::DecoderFormat_MAXICODE);
    QString strQRCode = pDecoder->decodeImage( image );

    return strQRCode;
}
