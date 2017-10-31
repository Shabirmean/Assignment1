/****************************************************************************
** Meta object code from reading C++ file 'QTestGaitsGUI.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/aqua_gait/include/aqua_gait/QTestGaitsGUI.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QTestGaitsGUI.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QWidgetBox_t {
    QByteArrayData data[1];
    char stringdata0[11];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QWidgetBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QWidgetBox_t qt_meta_stringdata_QWidgetBox = {
    {
QT_MOC_LITERAL(0, 0, 10) // "QWidgetBox"

    },
    "QWidgetBox"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QWidgetBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

       0        // eod
};

void QWidgetBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObject QWidgetBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_QWidgetBox.data,
      qt_meta_data_QWidgetBox,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QWidgetBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QWidgetBox::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QWidgetBox.stringdata0))
        return static_cast<void*>(const_cast< QWidgetBox*>(this));
    return QGroupBox::qt_metacast(_clname);
}

int QWidgetBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    return _id;
}
struct qt_meta_stringdata_LegWidget_t {
    QByteArrayData data[4];
    char stringdata0[28];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_LegWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_LegWidget_t qt_meta_stringdata_LegWidget = {
    {
QT_MOC_LITERAL(0, 0, 9), // "LegWidget"
QT_MOC_LITERAL(1, 10, 8), // "setAngle"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 7) // "radians"

    },
    "LegWidget\0setAngle\0\0radians"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_LegWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Double,    3,

       0        // eod
};

void LegWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        LegWidget *_t = static_cast<LegWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setAngle((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject LegWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_LegWidget.data,
      qt_meta_data_LegWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *LegWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *LegWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_LegWidget.stringdata0))
        return static_cast<void*>(const_cast< LegWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int LegWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
struct qt_meta_stringdata_LegWithTextWidget_t {
    QByteArrayData data[6];
    char stringdata0[57];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_LegWithTextWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_LegWithTextWidget_t qt_meta_stringdata_LegWithTextWidget = {
    {
QT_MOC_LITERAL(0, 0, 17), // "LegWithTextWidget"
QT_MOC_LITERAL(1, 18, 14), // "updateFromText"
QT_MOC_LITERAL(2, 33, 0), // ""
QT_MOC_LITERAL(3, 34, 9), // "newvalstr"
QT_MOC_LITERAL(4, 44, 8), // "setAngle"
QT_MOC_LITERAL(5, 53, 3) // "rad"

    },
    "LegWithTextWidget\0updateFromText\0\0"
    "newvalstr\0setAngle\0rad"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_LegWithTextWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x0a /* Public */,
       4,    1,   27,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Float,    5,

       0        // eod
};

void LegWithTextWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        LegWithTextWidget *_t = static_cast<LegWithTextWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateFromText((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->setAngle((*reinterpret_cast< float(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject LegWithTextWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_LegWithTextWidget.data,
      qt_meta_data_LegWithTextWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *LegWithTextWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *LegWithTextWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_LegWithTextWidget.stringdata0))
        return static_cast<void*>(const_cast< LegWithTextWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int LegWithTextWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
struct qt_meta_stringdata_LegsWidget_t {
    QByteArrayData data[7];
    char stringdata0[52];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_LegsWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_LegsWidget_t qt_meta_stringdata_LegsWidget = {
    {
QT_MOC_LITERAL(0, 0, 10), // "LegsWidget"
QT_MOC_LITERAL(1, 11, 7), // "setTime"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 1), // "t"
QT_MOC_LITERAL(4, 22, 12), // "setLegAngles"
QT_MOC_LITERAL(5, 35, 6), // "float*"
QT_MOC_LITERAL(6, 42, 9) // "anglesRad"

    },
    "LegsWidget\0setTime\0\0t\0setLegAngles\0"
    "float*\0anglesRad"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_LegsWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x0a /* Public */,
       4,    1,   27,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::Double,    3,
    QMetaType::Void, 0x80000000 | 5,    6,

       0        // eod
};

void LegsWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        LegsWidget *_t = static_cast<LegsWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setTime((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 1: _t->setLegAngles((*reinterpret_cast< float*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject LegsWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_LegsWidget.data,
      qt_meta_data_LegsWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *LegsWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *LegsWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_LegsWidget.stringdata0))
        return static_cast<void*>(const_cast< LegsWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int LegsWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
struct qt_meta_stringdata_PeriodicLegStateWidget_t {
    QByteArrayData data[8];
    char stringdata0[78];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PeriodicLegStateWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PeriodicLegStateWidget_t qt_meta_stringdata_PeriodicLegStateWidget = {
    {
QT_MOC_LITERAL(0, 0, 22), // "PeriodicLegStateWidget"
QT_MOC_LITERAL(1, 23, 12), // "stateUpdated"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 7), // "zeroCmd"
QT_MOC_LITERAL(4, 45, 14), // "updateFromText"
QT_MOC_LITERAL(5, 60, 2), // "ID"
QT_MOC_LITERAL(6, 63, 11), // "setReadOnly"
QT_MOC_LITERAL(7, 75, 2) // "RO"

    },
    "PeriodicLegStateWidget\0stateUpdated\0"
    "\0zeroCmd\0updateFromText\0ID\0setReadOnly\0"
    "RO"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PeriodicLegStateWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       3,    0,   35,    2, 0x0a /* Public */,
       4,    1,   36,    2, 0x0a /* Public */,
       6,    1,   39,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::Bool,    7,

       0        // eod
};

void PeriodicLegStateWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        PeriodicLegStateWidget *_t = static_cast<PeriodicLegStateWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->stateUpdated(); break;
        case 1: _t->zeroCmd(); break;
        case 2: _t->updateFromText((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->setReadOnly((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (PeriodicLegStateWidget::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&PeriodicLegStateWidget::stateUpdated)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject PeriodicLegStateWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_PeriodicLegStateWidget.data,
      qt_meta_data_PeriodicLegStateWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *PeriodicLegStateWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PeriodicLegStateWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_PeriodicLegStateWidget.stringdata0))
        return static_cast<void*>(const_cast< PeriodicLegStateWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int PeriodicLegStateWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void PeriodicLegStateWidget::stateUpdated()
{
    QMetaObject::activate(this, &staticMetaObject, 0, Q_NULLPTR);
}
struct qt_meta_stringdata_ROSWidget_t {
    QByteArrayData data[26];
    char stringdata0[272];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_ROSWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_ROSWidget_t qt_meta_stringdata_ROSWidget = {
    {
QT_MOC_LITERAL(0, 0, 9), // "ROSWidget"
QT_MOC_LITERAL(1, 10, 18), // "receivedNewBodyCmd"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 5), // "speed"
QT_MOC_LITERAL(4, 36, 5), // "heave"
QT_MOC_LITERAL(5, 42, 4), // "roll"
QT_MOC_LITERAL(6, 47, 5), // "pitch"
QT_MOC_LITERAL(7, 53, 3), // "yaw"
QT_MOC_LITERAL(8, 57, 18), // "receivedNewSineCmd"
QT_MOC_LITERAL(9, 76, 7), // "setMode"
QT_MOC_LITERAL(10, 84, 7), // "newMode"
QT_MOC_LITERAL(11, 92, 10), // "setBodyCmd"
QT_MOC_LITERAL(12, 103, 10), // "newSineCmd"
QT_MOC_LITERAL(13, 114, 18), // "PeriodicLegState_t"
QT_MOC_LITERAL(14, 133, 3), // "cmd"
QT_MOC_LITERAL(15, 137, 8), // "spinOnce"
QT_MOC_LITERAL(16, 146, 10), // "publishMsg"
QT_MOC_LITERAL(17, 157, 13), // "updatePubRate"
QT_MOC_LITERAL(18, 171, 9), // "newvalstr"
QT_MOC_LITERAL(19, 181, 15), // "requestSineGait"
QT_MOC_LITERAL(20, 197, 15), // "sineGaitChecked"
QT_MOC_LITERAL(21, 213, 9), // "calibrate"
QT_MOC_LITERAL(22, 223, 10), // "pauseRobot"
QT_MOC_LITERAL(23, 234, 11), // "resumeRobot"
QT_MOC_LITERAL(24, 246, 19), // "requestSetPauseMode"
QT_MOC_LITERAL(25, 266, 5) // "pause"

    },
    "ROSWidget\0receivedNewBodyCmd\0\0speed\0"
    "heave\0roll\0pitch\0yaw\0receivedNewSineCmd\0"
    "setMode\0newMode\0setBodyCmd\0newSineCmd\0"
    "PeriodicLegState_t\0cmd\0spinOnce\0"
    "publishMsg\0updatePubRate\0newvalstr\0"
    "requestSineGait\0sineGaitChecked\0"
    "calibrate\0pauseRobot\0resumeRobot\0"
    "requestSetPauseMode\0pause"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_ROSWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    5,   79,    2, 0x06 /* Public */,
       8,    0,   90,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       9,    1,   91,    2, 0x0a /* Public */,
      11,    5,   94,    2, 0x0a /* Public */,
      12,    1,  105,    2, 0x0a /* Public */,
      15,    0,  108,    2, 0x0a /* Public */,
      16,    0,  109,    2, 0x0a /* Public */,
      17,    1,  110,    2, 0x0a /* Public */,
      19,    1,  113,    2, 0x0a /* Public */,
      21,    0,  116,    2, 0x0a /* Public */,
      22,    0,  117,    2, 0x0a /* Public */,
      23,    0,  118,    2, 0x0a /* Public */,
      24,    1,  119,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double,    3,    4,    5,    6,    7,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,   10,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double,    3,    4,    5,    6,    7,
    QMetaType::Void, 0x80000000 | 13,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   18,
    QMetaType::Void, QMetaType::Int,   20,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   25,

       0        // eod
};

void ROSWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        ROSWidget *_t = static_cast<ROSWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->receivedNewBodyCmd((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5]))); break;
        case 1: _t->receivedNewSineCmd(); break;
        case 2: _t->setMode((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->setBodyCmd((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5]))); break;
        case 4: _t->newSineCmd((*reinterpret_cast< const PeriodicLegState_t(*)>(_a[1]))); break;
        case 5: _t->spinOnce(); break;
        case 6: _t->publishMsg(); break;
        case 7: _t->updatePubRate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 8: _t->requestSineGait((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->calibrate(); break;
        case 10: _t->pauseRobot(); break;
        case 11: _t->resumeRobot(); break;
        case 12: _t->requestSetPauseMode((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (ROSWidget::*_t)(double , double , double , double , double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ROSWidget::receivedNewBodyCmd)) {
                *result = 0;
            }
        }
        {
            typedef void (ROSWidget::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&ROSWidget::receivedNewSineCmd)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject ROSWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_ROSWidget.data,
      qt_meta_data_ROSWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *ROSWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *ROSWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_ROSWidget.stringdata0))
        return static_cast<void*>(const_cast< ROSWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int ROSWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}

// SIGNAL 0
void ROSWidget::receivedNewBodyCmd(double _t1, double _t2, double _t3, double _t4, double _t5)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ROSWidget::receivedNewSineCmd()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}
struct qt_meta_stringdata_TestGaitsGUI_t {
    QByteArrayData data[34];
    char stringdata0[409];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TestGaitsGUI_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TestGaitsGUI_t qt_meta_stringdata_TestGaitsGUI = {
    {
QT_MOC_LITERAL(0, 0, 12), // "TestGaitsGUI"
QT_MOC_LITERAL(1, 13, 18), // "sineParamsReadOnly"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 8), // "sineMode"
QT_MOC_LITERAL(4, 42, 14), // "refreshBodyCmd"
QT_MOC_LITERAL(5, 57, 5), // "speed"
QT_MOC_LITERAL(6, 63, 5), // "heave"
QT_MOC_LITERAL(7, 69, 4), // "roll"
QT_MOC_LITERAL(8, 74, 5), // "pitch"
QT_MOC_LITERAL(9, 80, 3), // "yaw"
QT_MOC_LITERAL(10, 84, 12), // "handleSigint"
QT_MOC_LITERAL(11, 97, 18), // "processUserSineCmd"
QT_MOC_LITERAL(12, 116, 12), // "resetBodyCmd"
QT_MOC_LITERAL(13, 129, 23), // "handleNewSineCmdFromROS"
QT_MOC_LITERAL(14, 153, 16), // "handleNewBodyCmd"
QT_MOC_LITERAL(15, 170, 11), // "updateSpeed"
QT_MOC_LITERAL(16, 182, 9), // "newvalstr"
QT_MOC_LITERAL(17, 192, 11), // "updateHeave"
QT_MOC_LITERAL(18, 204, 10), // "updateRoll"
QT_MOC_LITERAL(19, 215, 11), // "updatePitch"
QT_MOC_LITERAL(20, 227, 9), // "updateYaw"
QT_MOC_LITERAL(21, 237, 15), // "updateAmplitude"
QT_MOC_LITERAL(22, 253, 15), // "updateFrequency"
QT_MOC_LITERAL(23, 269, 13), // "updateForeAft"
QT_MOC_LITERAL(24, 283, 16), // "backwardsChecked"
QT_MOC_LITERAL(25, 300, 8), // "nextMode"
QT_MOC_LITERAL(26, 309, 10), // "updateMode"
QT_MOC_LITERAL(27, 320, 7), // "newMode"
QT_MOC_LITERAL(28, 328, 18), // "announceNewBodyCmd"
QT_MOC_LITERAL(29, 347, 13), // "toggleSimTime"
QT_MOC_LITERAL(30, 361, 14), // "simTimeChecked"
QT_MOC_LITERAL(31, 376, 15), // "resetSimTimeNow"
QT_MOC_LITERAL(32, 392, 11), // "tickSimTime"
QT_MOC_LITERAL(33, 404, 4) // "tick"

    },
    "TestGaitsGUI\0sineParamsReadOnly\0\0"
    "sineMode\0refreshBodyCmd\0speed\0heave\0"
    "roll\0pitch\0yaw\0handleSigint\0"
    "processUserSineCmd\0resetBodyCmd\0"
    "handleNewSineCmdFromROS\0handleNewBodyCmd\0"
    "updateSpeed\0newvalstr\0updateHeave\0"
    "updateRoll\0updatePitch\0updateYaw\0"
    "updateAmplitude\0updateFrequency\0"
    "updateForeAft\0backwardsChecked\0nextMode\0"
    "updateMode\0newMode\0announceNewBodyCmd\0"
    "toggleSimTime\0simTimeChecked\0"
    "resetSimTimeNow\0tickSimTime\0tick"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TestGaitsGUI[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      22,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,  124,    2, 0x06 /* Public */,
       4,    5,  127,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      10,    0,  138,    2, 0x0a /* Public */,
      11,    0,  139,    2, 0x0a /* Public */,
      12,    0,  140,    2, 0x0a /* Public */,
      13,    0,  141,    2, 0x0a /* Public */,
      14,    5,  142,    2, 0x0a /* Public */,
      15,    1,  153,    2, 0x0a /* Public */,
      17,    1,  156,    2, 0x0a /* Public */,
      18,    1,  159,    2, 0x0a /* Public */,
      19,    1,  162,    2, 0x0a /* Public */,
      20,    1,  165,    2, 0x0a /* Public */,
      21,    1,  168,    2, 0x0a /* Public */,
      22,    1,  171,    2, 0x0a /* Public */,
      23,    1,  174,    2, 0x0a /* Public */,
      25,    0,  177,    2, 0x0a /* Public */,
      26,    1,  178,    2, 0x0a /* Public */,
      28,    0,  181,    2, 0x0a /* Public */,
      29,    1,  182,    2, 0x0a /* Public */,
      31,    0,  185,    2, 0x0a /* Public */,
      32,    0,  186,    2, 0x0a /* Public */,
      33,    0,  187,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double,    5,    6,    7,    8,    9,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double, QMetaType::Double,    5,    6,    7,    8,    9,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::QString,   16,
    QMetaType::Void, QMetaType::Int,   24,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   27,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   30,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void TestGaitsGUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TestGaitsGUI *_t = static_cast<TestGaitsGUI *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->sineParamsReadOnly((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->refreshBodyCmd((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5]))); break;
        case 2: _t->handleSigint(); break;
        case 3: _t->processUserSineCmd(); break;
        case 4: _t->resetBodyCmd(); break;
        case 5: _t->handleNewSineCmdFromROS(); break;
        case 6: _t->handleNewBodyCmd((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5]))); break;
        case 7: _t->updateSpeed((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 8: _t->updateHeave((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->updateRoll((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 10: _t->updatePitch((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->updateYaw((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 12: _t->updateAmplitude((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 13: _t->updateFrequency((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 14: _t->updateForeAft((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: _t->nextMode(); break;
        case 16: _t->updateMode((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 17: _t->announceNewBodyCmd(); break;
        case 18: _t->toggleSimTime((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 19: _t->resetSimTimeNow(); break;
        case 20: _t->tickSimTime(); break;
        case 21: _t->tick(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (TestGaitsGUI::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&TestGaitsGUI::sineParamsReadOnly)) {
                *result = 0;
            }
        }
        {
            typedef void (TestGaitsGUI::*_t)(double , double , double , double , double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&TestGaitsGUI::refreshBodyCmd)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject TestGaitsGUI::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_TestGaitsGUI.data,
      qt_meta_data_TestGaitsGUI,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *TestGaitsGUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TestGaitsGUI::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_TestGaitsGUI.stringdata0))
        return static_cast<void*>(const_cast< TestGaitsGUI*>(this));
    return QWidget::qt_metacast(_clname);
}

int TestGaitsGUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 22)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 22;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 22)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 22;
    }
    return _id;
}

// SIGNAL 0
void TestGaitsGUI::sineParamsReadOnly(bool _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void TestGaitsGUI::refreshBodyCmd(double _t1, double _t2, double _t3, double _t4, double _t5)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
