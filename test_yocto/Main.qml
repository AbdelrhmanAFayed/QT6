import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id:rect1ID
        width: parent.width*3/28
        height: parent.width*3/28

        border.color: "black"
        border.width: 5

        color: "blue"

        x: parent.width*2/28
        y: parent.height*4/10

        Text{
            id:rect1TXTID
            text: qsTr("Hello")
            font.pointSize: 20
            font.bold: true
            anchors.centerIn: parent

        }
    }
    Rectangle{
        id:rect2ID
        width: parent.width*3/28
        height: parent.width*3/28

        border.color: "black"
        border.width: 5

        radius: 50

        color: "yellow"
        x:rect1ID.x + rect1ID.width + parent.width*2/28
        y:rect1ID.y
        Text{
            id:rect2TXTID
            text: qsTr("World!")
            font.pointSize: 20
            font.italic: true
            anchors.centerIn: parent
        }

        }


    Rectangle
    {
        id:rect3ID
        width: parent.width*3/28
        height: parent.width*3/28

        border.color: "black"
        border.width: 5

        color: "green"
        x:rect2ID.x + rect2ID.width + parent.width*2/28
        y:rect2ID.y
        Text{
            id:rect3TXTID
            text: qsTr("!")
            font.pointSize: 20
            font.italic: true
            anchors.centerIn: parent
        }

    }

    Rectangle
    {
        id:rect4ID
        width: parent.width*3/28
        height: parent.width*3/28

        border.color: "black"
        border.width: 5

        color: "purple"

        radius: 30

        x:rect3ID.x + rect3ID.width + parent.width*2/28
        y:rect3ID.y
        Text{
            id:rect4TXTID
            text: qsTr("Abdelrhman")
            font.pointSize: 20
            font.bold: true
            anchors.centerIn: parent
        }

    }

    Rectangle
    {
        id:rect5ID
        width: parent.width*3/28
        height: parent.width*3/28

        border.color: "black"
        border.width: 5

        color: "red"
        radius:rect5ID.width
        x:rect4ID.x + rect4ID.width + parent.width*2/28
        y:rect4ID.y
        Text{
            id:rect5TXTID
            text: qsTr("Fayed")
            font.pointSize: 20
            font.italic: true
            anchors.centerIn: parent
        }

    }



}
