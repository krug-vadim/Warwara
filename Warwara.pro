QT += qml core

QMAKE_CXXFLAGS += -s

TEMPLATE += app
TARGET = Warwara

DISTFILES += \
    src/ui/main.qml \
    src/ui/HierarchyDelegate.qml

SOURCES += \
    src/main.cpp \
    src/myclass.cpp

RESOURCES += \
    Warwara.qrc

HEADERS += \
    src/myclass.h
