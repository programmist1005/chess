import QtQuick 2.6
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted: {
        var colores = ['blue', 'red', 'black', 'orange', 'green', 'brown'];
        var ix;
        var jx;
        var cl=0;
        for(jx= 0;jx< 20; ++jx){
        for(ix= 0; ix< colores.length; ++ix){
            gridView.model.append({myColor: colores[ix],
            myText: cl
            });
            ++cl;
        }
}
        // gridView.model.append({myColor: "blue"});
       // gridView.model.append({myColor: "red"});
       // gridView.model.append({myColor: "black"});
    }

    GridView{
        id: gridView

        cellHeight: height/ 3
        cellWidth: width/ 3

        anchors. top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 20
        anchors.topMargin: 20

        model: ListModel {}
        delegate: Rectangle{
            width: gridView.cellWidth* 0.9
            height: gridView.cellHeight* 0.9
            color: myColor

            Text {

                text: myText
                font.pixelSize: 20
            }
        }

    }




    }


