import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3


Button {
    id: control

    width: 45
    height: 26

    property string color: "black"
    property string colorHoverd: "white"
    property string colorPressed: "white"
    property string colorInactive: "#969696"

    property string bgcolorPressed: "#8c0a15"
    property string bgcolorHoverd: "#e81123"
    property string bgcolor: "transparent"

    property bool changeColor: true
    property bool active: changeColor ? Window.active : true


    contentItem: Item {
        Image {
            id: img
            width : 10
            height: 10
            visible: false
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/res/close-button1.svg"
        }


    }

    background: Rectangle {
        visible: control.down || control.hovered
        color: control.down ? control.bgcolorPressed : (control.hovered ? control.bgcolorHoverd : control.bgcolor)
    }


    ToolTip.visible: hovered && !down
    ToolTip.delay: Qt.styleHints.mousePressAndHoldInterval
    ToolTip.text: qsTr("Close")
}


