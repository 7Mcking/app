import QtQuick 2.15
import QtQuick.Controls 2.2
Page {
    anchors.fill: parent

    Rectangle{
        id:bar
        width: parent.width
        height: parent.height*0.025
        color: "orange"


    Label{
        text: "Welcome to the Qt Open CV App"
        color: "white"
        anchors.centerIn: parent
    }
   }

    Button{
        text: "Show Image"
        anchors.top: bar.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: loader.push("qrc:/showImage")

    }
}
