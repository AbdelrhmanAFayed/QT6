import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: "Caps Lock LED Controller"
    color: "#121212"  // Dark cyberpunk background

    property int ledState: 0  // Store the current LED state (0 or 1)

    Rectangle {
        width: parent.width
        height: parent.height
        color: "transparent"

        // Neon Glow Background
        Rectangle {
            width: parent.width
            height: parent.height
            gradient: Gradient {
                GradientStop { position: 0.3; color: "#222" }
                GradientStop { position: 1.0; color: "#000" }
            }
        }

        // ** Glowing Effect **
        Rectangle {
            width: 160
            height: 60
            radius: 30
            color: "transparent"
            border.color: ledState === 0 ? "#1E90FF" : "#FF4500"  // Blue or Orange glow
            border.width: 3
            opacity: 0.8
            anchors.centerIn: parent

            // Animate the glow pulse
            Behavior on opacity {
                NumberAnimation {
                    duration: 600
                    easing.type: Easing.InOutQuad
                }
            }
        }

        // ** Cool Animated Button **
        Button {
            id: toggleButton
            text: ledState === 0 ? "Turn ON Caps Lock LED" : "Turn OFF Caps Lock LED"
            anchors.centerIn: parent
            font.pixelSize: 18
            font.bold: true
            font.family: "Arial"

            background: Rectangle {
                color: ledState === 0 ? "#1E90FF" : "#FF4500"  // Blue for OFF, Orange for ON
                radius: 25
                border.color: "#ffffff"
                border.width: 2

                // Animate the button color change
                Behavior on color {
                    ColorAnimation {
                        duration: 300
                    }
                }
            }

            onClicked: {
                ledState = ledState === 0 ? 1 : 0;  // Toggle state
                fileWriter.writeBrightness(ledState);
            }
        }
    }
}
