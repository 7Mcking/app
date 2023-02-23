#ifndef FRAME_H
#define FRAME_H

#include <QObject>
#include <QQuickPaintedItem>
#include <QImage>
#include <QPainter>

#include <opencv2/core>
#include <opencv2/core/utility>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

using namespace cv;

class Frame: public QQuickPaintedItem
{
public:
    Frame(QQuickItem *parent =0);

    void paint(QPainter *painter);

};

#endif // FRAME_H
