import QtQuick 2.15
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Page {
    anchors.fill: parent

    Rectangle{
        id:bar
        width: parent.width
        height: parent.height*0.025
        color: "orange"


    Label{
        text: "Show Image"
        color: "white"
        anchors.centerIn: parent
    }
   }

    ColumnLayout{
        id:imageContainer
        width: 640
        height: 480

        anchors.top: bar.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Image{
            id: picture
            source:"qrc:/logo"
            Layout.preferredWidth: imageContainer.width
            Layout.preferredHeight: imageContainer.height
            fillMode: Image.PreserveAspectFit
        }
    }

    RowLayout{
        anchors.top:imageContainer.bottom
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width*0.6
        spacing: width*0.2

        Button{
            text: "Open Image"
            Layout.preferredWidth: parent.width*0.4
        }

        Button{
            text: " Go Back"
            Layout.preferredWidth: parent.width*0.4
            onClicked: loader.pop()
        }
    }
}
