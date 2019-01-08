import QtQuick 2.9
import QtQuick.Window 2.2
import QtQml.Models 2.3
Window
{
    visible: true
    width: 500
    height: 500



    /*Динамическое создание и удаление кнопок по id
    import QtQuick 2.5
    import QtQuick.Controls 1.4

    ApplicationWindow {
        visible: true
        width: 640
        height: 480
        title: qsTr("Hello World")

        /* Номер создаваемой кнопки, для её визуальной идентификации
         * при демонстрации проекта
         */
//        property int number: 0

        /* Строка с полем, где отображается индекс нажатой динамической кнопки,
         * кнопкой для создания динамических кнопок,
         * и кнопкой для удаления динамических кнопок по индексу
         * */
/*        Row {
            id: row
            // Задаём размеры строки и прибиваем к верхней части окна приложения
            height: 50
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            // Задаём размещение поля с индексом кнопки
            Rectangle {
                width: (parent.width / 5)
                height: 50

                // Устанавливаем текстовое поле для размещения индекса кнопки
                Text {
                    id: textIndex
                    anchors.fill: parent
                    text: ""
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            // Кнопка для создания динамических кнопок
            Button {
                id: button1
                text: qsTr("Create Button")
                width: (parent.width / 5)*2
                height: 50

                /* По клику по кнопке добавляем в model ListView
                 * объект, с заданными параметрами
                 * */
/*                onClicked: {
                    listModel.append({idshnik: "Button " + (++number)})

                }
            }

            // Кнопка для удаления динамических кнопок
            Button {
                id: button2
                text: qsTr("Delete Button")
                width: (parent.width / 5)*2
                height: 50

                // Удаляем кнопку по её индексу в ListView
                onClicked: {
                    if(textIndex.text != ""){
                        listModel.remove(textIndex.text)
                        textIndex.text = "" // Обнуляем текстовое поле с индексом
                    }
                }
            }
        }

        // ListView для представления данных в виде списка
        ListView {
            id: listView1
            // Размещаем его в оставшейся части окна приложения
            anchors.top: row.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            /* в данном свойстве задаём вёрстку одного объекта
             * который будем отображать в списке в качестве одного элемента списка
             * */
/*            delegate: Item {
                id: item
                anchors.left: parent.left
                anchors.right: parent.right
                height: 40

                // В данном элементе будет находиться одна кнопка
                Button {
                    anchors.fill: parent
                    anchors.margins: 5

                    /* самое интересное в данном объекте
                     * задаём свойству text переменную, по имени которой будем задавать
                     * свойства элемента
                     * */
/*                    text: idshnik

                    // По клику по кнопке отдаём в текстовое поле индекс элемента в ListView
                    onClicked: {
                        textIndex.text = index
                    }
                }
            }

            // Сама модель, в которой будут содержаться все элементы
            model: ListModel {
                id: listModel // задаём ей id для обращения
            }
        }
    }


/*Перетаскивание изображений
https://habr.com/post/134377/

*/
//Пример с заменой квадратов с номерами
//import QtQuick 2.3
//import QtQuick.Window 2.3

    GridView {
            id: root
            width: 320
            height: 480
            cellWidth: 80
            cellHeight: 80

            displaced: Transition {
                NumberAnimation {
                    properties: "x,y"
                    easing.type: Easing.OutQuad
                }
            }

            model: DelegateModel {
                id: visualModel
                model: ListModel {
                    id: colorModel

                    ListElement {
                        color: "blue"
                        itemNumber: "0"
                    }
                    ListElement {
                        color: "green"
                        itemNumber: "1"
                    }
                    ListElement {
                        color: "red"
                        itemNumber: "2"
                    }
                    ListElement {
                        color: "yellow"
                        itemNumber: "3"
                    }
                    ListElement {
                        color: "orange"
                        itemNumber: "4"
                    }
                    ListElement {
                        color: "purple"
                        itemNumber: "5"
                    }
                    ListElement {
                        color: "cyan"
                        itemNumber: "6"
                    }
                    ListElement {
                        color: "magenta"
                        itemNumber: "7"
                    }
                }

                delegate: MouseArea {
                    id: delegateRoot

                    property bool held: false
                    property int visualIndex: DelegateModel.itemsIndex

                    width: 80
                    height: 80

                    drag.target: held ? icon : undefined

                    onPressAndHold: {
                        held = true
                        icon.opacity = 0.5
                    }
                    onReleased: {
                        if (held === true) {
                            held = false
                            icon.opacity = 1
                            icon.Drag.drop()
                        } else {
                            //action on release
                        }
                    }

                    Rectangle {
                        id: icon
                        width: 50
                        height: 50
                        anchors {
                            horizontalCenter: parent.horizontalCenter
                            verticalCenter: parent.verticalCenter
                        }
                        color: model.color
                        radius: 3

                        Text {
                            anchors.centerIn: parent
                            text: model.itemNumber
                        }

                        Drag.active: delegateRoot.drag.active
                        Drag.source: delegateRoot
                        Drag.hotSpot.x: 36
                        Drag.hotSpot.y: 36

                        states: [
                            State {
                                when: icon.Drag.active

                                ParentChange {
                                    target: icon
                                    parent: root
                                }

                                AnchorChanges {
                                    target: icon
                                    anchors.horizontalCenter: undefined
                                    anchors.verticalCenter: undefined
                                }
                            }
                        ]
                    }

                    DropArea {
                        id: dropArea

                        anchors {
                            fill: parent
                            margins: 15
                        }

                        onDropped: {
                            var sourceColor = colorModel.get(drag.source.visualIndex).color;
                            var sourceNumber = colorModel.get(drag.source.visualIndex).itemNumber;

                            var targetColor = colorModel.get(delegateRoot.visualIndex).color;
                            var targetNumber = colorModel.get(delegateRoot.visualIndex).itemNumber;
                            colorModel.setProperty(drag.source.visualIndex, "color", targetColor);
                            colorModel.setProperty(drag.source.visualIndex, "itemNumber", targetNumber);
                            colorModel.setProperty(delegateRoot.visualIndex, "color", sourceColor);
                            colorModel.setProperty(delegateRoot.visualIndex, "itemNumber", sourceNumber);
                        }
                    }
                }
            }
        }

/*Пример из книги
    Rectangle{
        width: 400;
        height: 400;
        color: "black"
    Grid{
        x: 5;
        y: 5
        rows: 5;
        columns: 5;
        spacing: 10
    Repeater{
        model: 24
    Rectangle{
        width: 70;
        height: 70
        color:"lightgreen"
    Text{
        text: index
        font.pointSize: 30
        anchors.centerIn: parent
                }
            }
        }
    }
}


/*Шахматы с таймером
    Rectangle {
                width: 50
                height: 50
                x: 0
                y: 400

                Text {
                     anchors.fill: parent
                     text: "A"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 50
                y: 400

                Text {
                     anchors.fill: parent
                     text: "B"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 100
                y: 400

                Text {
                     anchors.fill: parent
                     text: "C"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 150
                y: 400

                Text {
                     anchors.fill: parent
                     text: "D"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 200
                y: 400

                Text {
                     anchors.fill: parent
                     text: "E"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 250
                y: 400

                Text {
                     anchors.fill: parent
                     text: "F"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 300
                y: 400

                Text {
                     anchors.fill: parent
                     text: "G"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 350
                y: 400

                Text {
                     anchors.fill: parent
                     text: "H"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 0

                Text {
                     anchors.fill: parent
                     text: "8"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 50

                Text {
                     anchors.fill: parent
                     text: "7"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 100

                Text {
                     anchors.fill: parent
                     text: "6"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 150

                Text {
                     anchors.fill: parent
                     text: "5"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 200

                Text {
                     anchors.fill: parent
                     text: "4"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 250

                Text {
                     anchors.fill: parent
                     text: "3"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 300

                Text {
                     anchors.fill: parent
                     text: "2"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }
        Rectangle {
                width: 50
                height: 50
                x: 400
                y: 350

                Text {
                     anchors.fill: parent
                     text: "1"
                     verticalAlignment: Text.AlignVCenter
                     horizontalAlignment: Text.AlignHCenter
                   }
            }


        Rectangle{
                id: a1
                width: 50
                height: 50
                color: "grey"
                border.color: "black"
                border.width: 1
                x: 0
                y: 350

                MouseArea{
                    anchors.fill: a1
                    onClicked: {
                        x1=0
                        y1=350
                    }
                }
            }
        Rectangle{
                id: a2
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 0
                y: 300

                MouseArea{
                    anchors.fill: a2
                    onClicked: {
                        x1=0
                        y1=300
                    }
                }
            }
        Rectangle{
                id: a3
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 0
                y: 250

                MouseArea{
                    anchors.fill: a3
                    onClicked: {
                        //x1=0
                        //y1=250
                        x1.text= 0
                        y1.text= 250
                    }
                }
            }
        Rectangle{
                id: a4
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 0
                y: 200

                MouseArea{
                    anchors.fill: a4
                    onClicked: {
                        x1=0
                        y1=200
                    }
                }
            }
        Rectangle{
                id: a5
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 0
                y: 150

                MouseArea{
                    anchors.fill: a5
                    onClicked: {
                        x1=0
                        y1=150
                    }
                }
            }
        Rectangle{
                id: a6
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 0
                y: 100

                MouseArea{
                    anchors.fill: a6
                    onClicked: {
                        x1=0
                        y1=100
                    }
                }
            }
        Rectangle{
                id: a7
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 0
                y: 50

                MouseArea{
                    anchors.fill: a7
                    onClicked: {
                        x1=0
                        y1=50
                    }
                }
            }
        Rectangle{
                id: a8
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 0
                y: 0

                MouseArea{
                    anchors.fill: a8
                    onClicked: {
                        x1=0
                        y1=0
                    }
                }
            }
        Rectangle{
                id: b1
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 50
                y: 350

                MouseArea{
                    anchors.fill: b1
                    onClicked: {
                        x1=50
                        y1=350
                    }
                }
            }
        Rectangle{
                id: b2
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 50
                y: 300

                MouseArea{
                    anchors.fill: b2
                    onClicked: {
                        x1=50
                        y1=300
                    }
                }
            }
        Rectangle{
                id: b3
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 50
                y: 250

                MouseArea{
                    anchors.fill: b3
                    onClicked: {
                        x1=50
                        y1=250
                    }
                }
            }
        Rectangle{
                id: b4
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 50
                y: 200

                MouseArea{
                    anchors.fill: b4
                    onClicked: {
                        x1=50
                        y1=200
                    }
                }
            }
        Rectangle{
                id: b5
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 50
                y: 150

                MouseArea{
                    anchors.fill: b5
                    onClicked: {
                        x1=50
                        y1=150
                    }
                }
            }
        Rectangle{
                id: b6
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 50
                y: 100

                MouseArea{
                    anchors.fill: b6
                    onClicked: {
                        x1=50
                        y1=100
                    }
                }
            }
        Rectangle{
                id: b7
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 50
                y: 50

                MouseArea{
                    anchors.fill: b7
                    onClicked: {
                        x1=50
                        y1=50
                    }
                }
            }
        Rectangle{
                id: b8
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 50
                y: 0

                MouseArea{
                    anchors.fill: b8
                    onClicked: {
                        x1=50
                        y1=0
                    }
                }
            }
        Rectangle{
                id: c1
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 100
                y: 350

                MouseArea{
                    anchors.fill: c1
                    onClicked: {
                        x1=100
                        y1=350
                    }
                }
            }
        Rectangle{
                id: c2
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 100
                y: 300

                MouseArea{
                    anchors.fill: c2
                    onClicked: {
                        x1=100
                        y1=300
                    }
                }
            }
        Rectangle{
                id: c3
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 100
                y: 250

                MouseArea{
                    anchors.fill: c3
                    onClicked: {
                        x1=100
                        y1=250
                    }
                }
            }
        Rectangle{
                id: c4
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 100
                y: 200

                MouseArea{
                    anchors.fill: c4
                    onClicked: {
                        x1=100
                        y1=200
                    }
                }
            }
        Rectangle{
                id: c5
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 100
                y: 150

                MouseArea{
                    anchors.fill: c5
                    onClicked: {
                        x1=100
                        y1=150
                    }
                }
            }
        Rectangle{
                id: c6
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 100
                y: 100

                MouseArea{
                    anchors.fill: c6
                    onClicked: {
                        x1=100
                        y1=100
                    }
                }
            }
        Rectangle{
                id: c7
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 100
                y: 50

                MouseArea{
                    anchors.fill: c7
                    onClicked: {
                        x1=100
                        y1=50
                    }
                }
            }
        Rectangle{
                id: c8
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 100
                y: 0

                MouseArea{
                    anchors.fill: c8
                    onClicked: {
                        x1=100
                        y1=0
                    }
                }
            }
        Rectangle{
                id: d1
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 150
                y: 350

                MouseArea{
                    anchors.fill: d1
                    onClicked: {
                        x1=150
                        y1=350
                    }
                }
            }
        Rectangle{
                id: d2
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 150
                y: 300

                MouseArea{
                    anchors.fill: d2
                    onClicked: {
                        x1=150
                        y1=300
                    }
                }
            }
        Rectangle{
                id: d3
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 150
                y: 250

                MouseArea{
                    anchors.fill: d3
                    onClicked: {
                        x1=150
                        y1=250
                    }
                }
            }
        Rectangle{
                id: d4
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 150
                y: 200

                MouseArea{
                    anchors.fill: d4
                    onClicked: {
                        x1=150
                        y1=200
                    }
                }
            }
        Rectangle{
                id: d5
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 150
                y: 150

                MouseArea{
                    anchors.fill: d5
                    onClicked: {
                        x1=150
                        y1=150
                    }
                }
            }
        Rectangle{
                id: d6
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 150
                y: 100

                MouseArea{
                    anchors.fill: d6
                    onClicked: {
                        x1=150
                        y1=100
                    }
                }
            }
        Rectangle{
                id: d7
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 150
                y: 50

                MouseArea{
                    anchors.fill: d7
                    onClicked: {
                        x1=150
                        y1=50
                    }
                }
            }
        Rectangle{
                id: d8
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 150
                y: 0

                MouseArea{
                    anchors.fill: d8
                    onClicked: {
                        x1=150
                        y1=0
                    }
                }
            }
        Rectangle{
                id: e1
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 200
                y: 350

                MouseArea{
                    anchors.fill: e1
                    onClicked: {
                        x1=200
                        y1=350
                    }
                }
            }
        Rectangle{
                id: e2
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 200
                y: 300

                MouseArea{
                    anchors.fill: e2
                    onClicked: {
                        x1=200
                        y1=300
                    }
                }
            }
        Rectangle{
                id: e3
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 200
                y: 250

                MouseArea{
                    anchors.fill: e3
                    onClicked: {
                        x1=200
                        y1=250
                    }
                }
            }
        Rectangle{
                id: e4
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 200
                y: 200

                MouseArea{
                    anchors.fill: e4
                    onClicked: {
                        x1=200
                        y1=200
                    }
                }
            }
        Rectangle{
                id: e5
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 200
                y: 150

                MouseArea{
                    anchors.fill: e5
                    onClicked: {
                        x1=200
                        y1=150
                    }
                }
            }
        Rectangle{
                id: e6
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 200
                y: 100

                MouseArea{
                    anchors.fill: e6
                    onClicked: {
                        x1=200
                        y1=100
                    }
                }
            }
        Rectangle{
                id: e7
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 200
                y: 50

                MouseArea{
                    anchors.fill: e7
                    onClicked: {
                        x1=200
                        y1=50
                    }
                }
            }
        Rectangle{
                id: e8
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 200
                y: 0

                MouseArea{
                    anchors.fill: e8
                    onClicked: {
                        x1=200
                        y1=0
                    }
                }
            }
        Rectangle{
                id: f1
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 250
                y: 350

                MouseArea{
                    anchors.fill: f1
                    onClicked: {
                        x1=250
                        y1=350
                    }
                }
            }
        Rectangle{
                id: f2
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 250
                y: 300

                MouseArea{
                    anchors.fill: f2
                    onClicked: {
                        x1=250
                        y1=300
                    }
                }
            }
        Rectangle{
                id: f3
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 250
                y: 250

                MouseArea{
                    anchors.fill: f3
                    onClicked: {
                        x1=250
                        y1=250
                    }
                }
            }
        Rectangle{
                id: f4
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 250
                y: 200

                MouseArea{
                    anchors.fill: f4
                    onClicked: {
                        x1=250
                        y1=200
                    }
                }
            }
        Rectangle{
                id: f5
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 250
                y: 150

                MouseArea{
                    anchors.fill: f5
                    onClicked: {
                        x1=250
                        y1=150
                    }
                }
            }
        Rectangle{
                id: f6
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 250
                y: 100

                MouseArea{
                    anchors.fill: f6
                    onClicked: {
                        x1=250
                        y1=100
                    }
                }
            }
        Rectangle{
                id: f7
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 250
                y: 50

                MouseArea{
                    anchors.fill: f7
                    onClicked: {
                        x1=250
                        y1=50
                    }
                }
            }
        Rectangle{
                id: f8
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 250
                y: 0

                MouseArea{
                    anchors.fill: f8
                    onClicked: {
                        x1=250
                        y1=0
                    }
                }
            }
        Rectangle{
                id: g1
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 300
                y: 350

                MouseArea{
                    anchors.fill: g1
                    onClicked: {
                        x1=300
                        y1=350
                    }
                }
            }
        Rectangle{
                id: g2
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 300
                y: 300

                MouseArea{
                    anchors.fill: g2
                    onClicked: {
                        x1=300
                        y1=300
                    }
                }
            }
        Rectangle{
                id: g3
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 300
                y: 250

                MouseArea{
                    anchors.fill: g3
                    onClicked: {
                        x1=300
                        y1=250
                    }
                }
            }
        Rectangle{
                id: g4
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 300
                y: 200

                MouseArea{
                    anchors.fill: g4
                    onClicked: {
                        x1=300
                        y1=200
                    }
                }
            }
        Rectangle{
                id: g5
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 300
                y: 150

                MouseArea{
                    anchors.fill: g5
                    onClicked: {
                        x1=300
                        y1=150
                    }
                }
            }
        Rectangle{
                id: g6
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 300
                y: 100

                MouseArea{
                    anchors.fill: g6
                    onClicked: {
                        x1=300
                        y1=100
                    }
                }
            }
        Rectangle{
                id: g7
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 300
                y: 50

                MouseArea{
                    anchors.fill: g7
                    onClicked: {
                        x1=300
                        y1=50
                    }
                }
            }
        Rectangle{
                id: g8
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 300
                y: 0

                MouseArea{
                    anchors.fill: g8
                    onClicked: {
                        x1=300
                        y1=0
                    }
                }
            }
        Rectangle{
                id: h1
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 350
                y: 350

                MouseArea{
                    anchors.fill: h1
                    onClicked: {
                        x1=350
                        y1=350
                    }
                }
            }
        Rectangle{
                id: h2
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 350
                y: 300

                MouseArea{
                    anchors.fill: h2
                    onClicked: {
                        x1=350
                        y1=300
                    }
                }
            }
        Rectangle{
                id: h3
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 350
                y: 250

                MouseArea{
                    anchors.fill: h3
                    onClicked: {
                        x1=350
                        y1=250
                    }
                }
            }
        Rectangle{
                id: h4
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 350
                y: 200

                MouseArea{
                    anchors.fill: h4
                    onClicked: {
                        x1=350
                        y1=200
                    }
                }
            }
        Rectangle{
                id: h5
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 350
                y: 150

                MouseArea{
                    anchors.fill: h5
                    onClicked: {
                        x1=350
                        y1=150
                    }
                }
            }
        Rectangle{
                id: h6
                width: 50
                height: 50
                color: "gray"
                border.color: "black"
                border.width: 1
                x: 350
                y: 100

                MouseArea{
                    anchors.fill: h6
                    onClicked: {
                        x1=350
                        y1=100
                    }
                }
            }
        Rectangle{
                id: h7
                width: 50
                height: 50
                color: "white"
                border.color: "black"
                border.width: 1
                x: 350
                y: 50

                MouseArea{
                    anchors.fill: h7
                    onClicked: {
                        x1=350
                        y1=50
                    }
                }
            }
        Rectangle{
                id: h8
                width: 50
                height: 50
                color: "blue"
                border.color: "black"
                border.width: 1
                x: 350
                y: 0

                MouseArea{
                    anchors.fill: h8
                    onClicked: {
                        x1=350
                        y1=0
                    }
                }
            }

        Image {
                    id: black_pawn
                    source: "/resources/img/black-pawn.svg"
                    x: 0
                    y: 50
                }
            Image {
                    id: black_pawn2
                    source: "/resources/img/black-pawn.svg"
                    x: 50
                    y: 50
                }
            Image {
                    id: black_pawn3
                    source: "/resources/img/black-pawn.svg"
                    x: 100
                    y: 50
                }
            Image {
                    id: black_pawn4
                    source: "/resources/img/black-pawn.svg"
                    x: 150
                    y: 50
                }
            Image {
                    id: black_pawn5
                    source: "/resources/img/black-pawn.svg"
                    x: 200
                    y: 50
                }
            Image {
                    id: black_pawn6
                    source: "/resources/img/black-pawn.svg"
                    x: 250
                    y: 50
                }
            Image {
                    id: black_pawn7
                    source: "/resources/img/black-pawn.svg"
                    x: 300
                    y: 50
                }
            Image {
                    id: black_pawn8
                    source: "/resources/img/black-pawn.svg"
                    x: 350
                    y: 50
                }
            Image {
                    id: black_rook
                    source: "/resources/img/black-rook.svg"
                    x: 0
                    y: 0
                }
            Image {
                    id: black_rook2
                    source: "/resources/img/black-rook.svg"
                    x: 350
                    y: 0
                }
            Image {
                    id: black_knight
                    source: "/resources/img/black-knight.svg"
                    x: 50
                    y: 0
                }
            Image {
                    id: black_knight2
                    source: "/resources/img/black-knight.svg"
                    x: 300
                    y: 0
                }
            Image {
                    id: black_bishop
                    source: "/resources/img/black-bishop.svg"
                    x: 100
                    y: 0
                }
            Image {
                    id: black_bishop2
                    source: "/resources/img/black-bishop.svg"
                    x: 250
                    y: 0
                }
            Image {
                    id: black_queen
                    source: "/resources/img/black-queen.svg"
                    x: 150
                    y: 0
                    Timer{
                        id: timer2
                        interval: 3000; running: false; repeat: false
                        onTriggered:{
                            black_queen.x= x1.text
                            black_queen.y= y1.text
                            x1.text= ""
                            y1.text= ""
                        }
                    }
                    MouseArea {
                        anchors.fill: black_queen
                        onClicked: {
                            if(x1.text !== "" && y1.text !== ""){
                            timer2.start()
                            }
                        }
                    }
                }
            Image {
                    id: black_king
                    source: "/resources/img/black-king.svg"
                    x: 200
                    y: 0
                    Timer{
                        id: timer1
                        interval: 2000; running: false; repeat: false
                        onTriggered:{
                            black_king.x= x1.text
                            black_king.y= y1.text
                            x1.text= ""
                            y1.text= ""
                        }
                    }
                    MouseArea {
                        anchors.fill: black_king
                        onClicked: {
                            if(x1.text !== "" && y1.text !== ""){
                            timer1.start()
                            }
                        }
                    }
                }

                Image {
                        id: white_pawn
                        source: "/resources/img/white-pawn.svg"
                        x: 0
                        y: 300
                    }
                Image {
                        id: white_pawn2
                        source: "/resources/img/white-pawn.svg"
                        x: 50
                        y: 300
                    }
                Image {
                        id: white_pawn3
                        source: "/resources/img/white-pawn.svg"
                        x: 100
                        y: 300
                    }
                Image {
                        id: white_pawn4
                        source: "/resources/img/white-pawn.svg"
                        x: 150
                        y: 300
                    }
                Image {
                        id: white_pawn5
                        source: "/resources/img/white-pawn.svg"
                        x: 200
                        y: 300
                    }
                Image {
                        id: white_pawn6
                        source: "/resources/img/white-pawn.svg"
                        x: 250
                        y: 300
                    }
                Image {
                        id: white_pawn7
                        source: "/resources/img/white-pawn.svg"
                        x: 300
                        y: 300
                    }
                Image {
                        id: white_pawn8
                        source: "/resources/img/white-pawn.svg"
                        x: 350
                        y: 300
                    }
                Image {
                        id: white_rook
                        source: "/resources/img/white-rook.svg"
                        x: 0
                        y: 350
                    }
                Image {
                        id: white_rook2
                        source: "/resources/img/white-rook.svg"
                        x: 350
                        y: 350
                    }
                Image {
                        id: white_knight
                        source: "/resources/img/white-knight.svg"
                        x: 50
                        y: 350
                    }
                Image {
                        id: white_knight2
                        source: "/resources/img/white-knight.svg"
                        x: 300
                        y: 350
                    }
                Image {
                        id: white_bishop
                        source: "/resources/img/white-bishop.svg"
                        x: 100
                        y: 350
                    }
                Image {
                        id: white_bishop2
                        source: "/resources/img/white-bishop.svg"
                        x: 250
                        y: 350
                    }
                Image {
                        id: white_queen
                        source: "/resources/img/white-queen.svg"
                        x: 150
                        y: 350
                    }
                Image {
                        id: white_king
                        source: "/resources/img/white-king.svg"
                        x: 200
                        y: 350
                    }




/*Перетаскивание, создано с помощью повторителя
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
        source: "/resources/img/black-pawn.svg"
        x: 0
        y: 50
        MouseArea {
            anchors.fill: black_pawn
            drag.target: black_pawn
        }
    }
    Image {
        id: black_pawn2
        source: "/resources/img/black-pawn.svg"
        x: 50
        y: 50
    }
    Image {
        id: black_pawn3
        source: "/resources/img/black-pawn.svg"
        x: 100
        y: 50
    }
    Image {
        id: black_pawn4
        source: "/resources/img/black-pawn.svg"
        x: 150
        y: 50
    }
    Image {
        id: black_pawn5
        source: "/resources/img/black-pawn.svg"
        x: 200
        y: 50
    }
    Image {
        id: black_pawn6
        source: "/resources/img/black-pawn.svg"
        x: 250
        y: 50
    }
    Image {
        id: black_pawn7
        source: "/resources/img/black-pawn.svg"
        x: 300
        y: 50
    }
    Image {
        id: black_pawn8
        source: "/resources/img/black-pawn.svg"
        x: 350
        y: 50
    }
    Image {
        id: black_rook
        source: "/resources/img/black-rook.svg"
        x: 0
        y: 0
    }
    Image {
        id: black_rook2
        source: "/resources/img/black-rook.svg"
        x: 350
        y: 0
    }
    Image {
        id: black_knight
        source: "/resources/img/black-knight.svg"
        x: 50
        y: 0
    }
    Image {
        id: black_knight2
        source: "/resources/img/black-knight.svg"
        x: 300
        y: 0
    }
    Image {
        id: black_bishop
        source: "/resources/img/black-bishop.svg"
        x: 100
        y: 0
    }
    Image {
        id: black_bishop2
        source: "/resources/img/black-bishop.svg"
        x: 250
        y: 0
    }
    Image {
        id: black_queen
        source: "/resources/img/black-queen.svg"
        x: 150
        y: 0
        MouseArea {
            anchors.fill: black_queen
            drag.target: black_queen
        }
    }
    Image {
        id: black_king
        source: "/resources/img/black-king.svg"
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
