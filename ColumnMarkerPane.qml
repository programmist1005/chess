import QtQuick 2.0
import "Common.js" as Common

Row {
    property int align: Common.Alignment.undefined
    property int markerWidth: 0
    property int markerHeight: 0

    anchors.top: align === Common.Alignment.bottom ? field.bottom : undefined;
    anchors.bottom: align === Common.Alignment.top ? field.top : undefined;
    anchors.left: field.left;
    anchors.leftMargin: -markerHeight

    Repeater {
        id: alphas
        model: ["", "A", "B", "C", "D", "E", "F", "G", "H", ""]

        delegate: Rectangle {
            width: parent.markerWidth
            height: parent.markerHeight
            color: Common.Color.taupe

            property int firstIndex: 0
            property int lastIndex: alphas.count - 1

            onHeightChanged: {
                if(index == firstIndex || index == lastIndex )
                    width = height;
            }

            Text {
                text: modelData
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                font.pixelSize: 15
                anchors.fill: parent
                color: "white"
            }
        }
    }
}
