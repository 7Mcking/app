import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.2
Window {
    width: 1024
    height: 720
    visible: true
    title: qsTr("App")

    StackView{
        id:loader
        anchors.fill: parent
        initialItem: "qrc:/home"
    }
}
