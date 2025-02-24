#include "FileWriter.h"

FileWriter::FileWriter(QObject *parent) : QObject(parent) {}

FileWriter::~FileWriter() {}

bool FileWriter::writeBrightness(int value) {
    QFile file("/sys/class/leds/input11::capslock/brightness");

    if (!file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        qDebug() << "Failed to open file:" << file.errorString();
        return false;
    }

    QTextStream out(&file);
    out << value;
    file.close();
    return true;
}
