import QtQuick
import QtQuick.Controls

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: "Image Viewer"

    property string currentImage: ""
    property bool showImage: false

    // Grid Layout for Buttons
    Grid {
        id: buttonGrid
        anchors.fill: parent
        anchors.margins: 20
        columns: 2
        spacing: 20
        visible: !showImage  // Hide buttons when an image is displayed

        Button {
            text: "Image 1"
            width: (root.width - 60) / 2  // Dynamically adjust width
            height: (root.height - 60) / 2  // Dynamically adjust height
            font.pixelSize: width * 0.1  // Scale font size
            onClicked: {
                currentImage = "file:Cat.jpg"
                showImage = true
            }
        }

        Button {
            text: "Image 2"
            width: (root.width - 60) / 2
            height: (root.height - 60) / 2
            font.pixelSize: width * 0.1
            onClicked: {
                currentImage = "qrc:/pie.jpg"
                showImage = true
            }
        }

        Button {
            text: "Image 3"
            width: (root.width - 60) / 2
            height: (root.height - 60) / 2
            font.pixelSize: width * 0.1
            onClicked: {
                currentImage = "file:/home/fazloka/Android.png"
                showImage = true
            }
        }

        Button {
            text: "Image 4"
            width: (root.width - 60) / 2
            height: (root.height - 60) / 2
            font.pixelSize: width * 0.1
            onClicked: {
                currentImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/1200px-Tux.svg.png"
                showImage = true
            }
        }
    }

    // Fullscreen Image
    Image {
        id: imageDisplay
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: currentImage
        visible: showImage

        MouseArea {
            anchors.fill: parent
            onClicked: showImage = false  // Return to button grid
        }
    }
}
