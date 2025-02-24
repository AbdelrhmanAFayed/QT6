#ifndef FILEWRITER_H
#define FILEWRITER_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>

class FileWriter : public QObject {
    Q_OBJECT  // Required for Qt's meta-object system

public:
    explicit FileWriter(QObject *parent = nullptr);
    ~FileWriter();  // Explicit destructor

    Q_INVOKABLE bool writeBrightness(int value);
};

#endif // FILEWRITER_H
