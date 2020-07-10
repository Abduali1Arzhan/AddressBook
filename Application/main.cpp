#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ContactsModel.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.addPluginPath(":/qml");
    engine.addImportPath(":/qml");
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    qmlRegisterType<ContactsModel>("ContactsModel", 1, 0, "ContactsModel");

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
