import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    visible: true
    width: 500
    height: 500

    property int number: 0

    Row {
            Repeater {
                model: 4
        Column {
            Repeater {
                model: 4
                    Grid {
                        rows: 2
                        columns: 2
                        Rectangle { color: "white"; width: 50; height: 50; border.color: "black"; border.width: 1 }
                        Rectangle { color: "gray"; width: 50; height: 50; border.color: "black"; border.width: 1 }
                        Rectangle { color: "gray"; width: 50; height: 50; border.color: "black"; border.width: 1 }
                        Rectangle { color: "white"; width: 50; height: 50; border.color: "black"; border.width: 1 }
                        }
                    }
                }
            }
        }
    Image {
        id: black_pawn
        source: "/res/img/black-pawn.svg"
        x: 0
        y: 50
        MouseArea {
            anchors.fill: black_pawn
            drag.target: black_pawn
        }
    }
    Image {
        id: black_pawn2
        source: "/res/img/black-pawn.svg"
        x: 50
        y: 50
    }
    Image {
        id: black_pawn3
        source: "/res/img/black-pawn.svg"
        x: 100
        y: 50
    }
    Image {
        id: black_pawn4
        source: "/res/img/black-pawn.svg"
        x: 150
        y: 50
    }
    Image {
        id: black_pawn5
        source: "/res/img/black-pawn.svg"
        x: 200
        y: 50
    }
    Image {
        id: black_pawn6
        source: "/res/img/black-pawn.svg"
        x: 250
        y: 50
    }
    Image {
        id: black_pawn7
        source: "/res/img/black-pawn.svg"
        x: 300
        y: 50
    }
    Image {
        id: black_pawn8
        source: "/res/img/black-pawn.svg"
        x: 350
        y: 50
    }
    Image {
        id: black_rook
        source: "/res/img/black-rook.svg"
        x: 0
        y: 0
    }
    Image {
        id: black_rook2
        source: "/res/img/black-rook.svg"
        x: 350
        y: 0
    }
    Image {
        id: black_knight
        source: "/res/img/black-knight.svg"
        x: 50
        y: 0
    }
    Image {
        id: black_knight2
        source: "/res/img/black-knight.svg"
        x: 300
        y: 0
    }
    Image {
        id: black_bishop
        source: "/res/img/black-bishop.svg"
        x: 100
        y: 0
    }
    Image {
        id: black_bishop2
        source: "/res/img/black-bishop.svg"
        x: 250
        y: 0
    }
    Image {
        id: black_queen
        source: "/res/img/black-queen.svg"
        x: 150
        y: 0
        MouseArea {
            anchors.fill: black_queen
            drag.target: black_queen
        }
    }
    Image {
        id: black_king
        source: "/res/img/black-king.svg"
        x: 200
        y: 0
        MouseArea {
            anchors.fill: black_king
            drag.target: black_king
        }
    }
/*
    MouseArea{
        //anchors.fill: parent
        width: 375
        height: 375
            onClicked: {
                black_king.x= mouseX- 25
                black_king.y= mouseY- 25
        }
    }
*/
}
