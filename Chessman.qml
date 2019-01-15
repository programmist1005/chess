import QtQuick 2.0
import "Common.js" as Common

Item {
    id: chessman
    objectName: "cm"
    anchors.fill: parent && parent.objectName !== "ward" ? parent : undefined
    rotation: parent && parent.parent && parent.parent.parent ? parent.parent.parent.rotation : 0

    property var field

    property int rank
    property int warlord

    property int minX
    property int minY
    property int maxX
    property int maxY

    property bool active: false
    property bool movePermissible: false
    property bool permissionReceived: false

    signal movePermissionRequested(int from, int to);
    signal moveSubmitted(int disposition, int dislocation);

    MouseArea {
        id: grip
        objectName: "grip"
        anchors.fill: parent
        cursorShape: field && field.chessmanMoving ? Qt.ClosedHandCursor :
                              (enabled ?             Qt.OpenHandCursor :
                                                     Qt. ArrowCursor)
        drag.target: tile
        drag.maximumX: chessman.maxX
        drag.minimumX: chessman.minX
        drag.maximumY: chessman.maxY
        drag.minimumY: chessman.minY
        enabled: chessman.active && chessman.parent && chessman.parent.objectName != "ward";

        onPressed: {
            field.chessmanMoving = true;
            if(chessman.parent.ground) {
                chessman.parent.datum = true
                chessman.parent.ground.border.width = 3;
                chessman.parent.ground.border.color = Common.Color.peach;
            }
        }

        onPositionChanged: {
            if(pressed && tile.disposition !== tile.dislocation)
                chessman.permissionReceived = false;

            chessman.movePermissible = false;
            chessman.movePermissionRequested(tile.disposition, tile.dislocation);
        }

        onReleased:  {
            if(chessman.parent.ground)
                chessman.parent.ground.border.width = 0;

            chessman.parent.datum = false
            field.chessmanMoving = false;

            var sqr = tile.Drag.target;

            if(sqr && sqr !== chessman.parent && tile.movePermissible) {
                chessman.moveSubmitted(tile.disposition, tile.dislocation);
                field.parent.chessmanMoved();
            }

            tile.Drag.drop();
        }

        Tile {
            id: tile
            width: chessman.width
            height: chessman.height
            disposition: chessman.parent && chessman.parent.objectName != "ward" ?
                         chessman.parent.locationID : -1

            movePermissible: chessman.movePermissible
            permissionReceived: chessman.permissionReceived

            Drag.active: grip.drag.active
            // if we want disable dragging & permission frame over "one of us" we using Drag/Drop keys
            // q.v. couterpart in Square.qml
            // Drag.keys: [chessman.warlord ? Common.Warlord.mrBlack : Common.Warlord.mrWhite]

            skin.text: Common.Sign[chessman.rank]
            skin.color: chessman.warlord ? Common.Color.blackishBlue : Common.Color.bluish

            states: [

                State { when: grip.pressed
                    ParentChange { target: tile; parent: field }
                    AnchorChanges { target: tile; anchors.horizontalCenter: undefined;
                                                  anchors.verticalCenter: undefined }
                },

                State { when: !grip.drag.active
                    PropertyChanges { target: tile; dislocation: -1;
                                                    movePermissible: false }
                    PropertyChanges { target: chessman; movePermissible: false;
                                                        permissionReceived: false}
                }
            ]
        }
    }

    Behavior on rotation  { NumberAnimation { easing { type: Easing.InCirc } } }
}
