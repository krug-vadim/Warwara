#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>

#include "myclass.h"

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	MyClass myClass(0);
	QQmlApplicationEngine engine(QUrl("qrc:/src/ui/main.qml"));
	engine.rootContext()->setContextProperty("myClass", &myClass);

	/*QObject::connect(engine, SIGNAL(qmlSignal(QString)),
	                 &myClass, SLOT(cppSlot(QString)));*/


	return app.exec();
}
