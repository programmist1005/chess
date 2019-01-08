import QtQml.Models 2.2
import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    width: 360
    height: 360

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
}
