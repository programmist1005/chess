import QtQml.Models 2.3
import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 530
    height: 530


    property int number: 0
    Rectangle{
            width: 480;
            height: 480;
            color: "black"
        Grid{
            x: 5;
            y: 5
            rows: 8;
            columns: 8;
            spacing: 10

        Repeater{
            model: 64

        Rectangle{
            width: 50;
            height: 50
            color:"white"

            MouseArea{
                anchors.fill: parent
                Text{
                      id: pos
                      font.pointSize: 30
                      anchors.centerIn: parent }

                onClicked: {
                       number= index
                       pos.text= number
                }
                    }


                }
            }
        }


    }

}
