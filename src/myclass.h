#ifndef MYCLASS_H
#define MYCLASS_H

#include <QtCore/QObject>
#include <QtCore/QVariant>
#include <QtCore/QUrl>

#include <QDebug>

class MyClass : public QObject
{
	Q_OBJECT

	public:
		MyClass(QObject *obj) : QObject(obj) {}
		virtual ~MyClass() {}

	public slots:
		void cppSlot(const QString &name, const QVariant &urls)
		{
			/*QList<QUrl> list;
			urls.toList()*/
			QList<QUrl> list = urls.value<QList<QUrl> >();
			qDebug() << "Called the C++ slot with message:" << urls;
			foreach(const QUrl &url, list)
			{
				qDebug() << "url:" << url.path();
			}
		}
};

#endif // MYCLASS_H
