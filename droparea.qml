import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    DropArea {
        width: 50; height: 50
        x: 0
        y: 0
        keys: [ 1 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 2 ]
        x: 50
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 100
        y: 0
        keys: [ 3 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 4 ]
        x: 150
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 200
        y: 0
        keys: [ 5 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 6 ]
        x: 250
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 300
        y: 0
        keys: [ 7 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 8 ]
        x: 350
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 9 ]
        x: 0
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 50
        y: 50
        keys: [ 10 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 11 ]
        x: 100
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 150
        y: 50
        keys: [ 12 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 13 ]
        x: 200
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 250
        y: 50
        keys: [ 14 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 15 ]
        x: 300
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 16 ]
        x: 350
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }





















    DropArea {
        width: 50; height: 50
        x: 0
        y: 100
        keys: [ 17 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 18 ]
        x: 50
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 100
        y: 100
        keys: [ 19 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 20 ]
        x: 150
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 200
        y: 100
        keys: [ 21 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 22 ]
        x: 250
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 300
        y: 100
        keys: [ 23 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 24 ]
        x: 350
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 25 ]
        x: 0
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 50
        y: 150
        keys: [ 26 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 27 ]
        x: 100
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 150
        y: 150
        keys: [ 28 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 29 ]
        x: 200
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 250
        y: 150
        keys: [ 30 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 31 ]
        x: 300
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 32 ]
        x: 350
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }







//закончил тут






    DropArea {
        width: 50; height: 50
        x: 0
        y: 0
        keys: [ 1 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 2 ]
        x: 50
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 100
        y: 0
        keys: [ 3 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 4 ]
        x: 150
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 200
        y: 0
        keys: [ 5 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 6 ]
        x: 250
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 300
        y: 0
        keys: [ 7 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 8 ]
        x: 350
        y: 0
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 9 ]
        x: 0
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 50
        y: 50
        keys: [ 10 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 11 ]
        x: 100
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 150
        y: 50
        keys: [ 12 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 13 ]
        x: 200
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 250
        y: 50
        keys: [ 14 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 15 ]
        x: 300
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 16 ]
        x: 350
        y: 50
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }





















    DropArea {
        width: 50; height: 50
        x: 0
        y: 100
        keys: [ 17 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 18 ]
        x: 50
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 100
        y: 100
        keys: [ 19 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 20 ]
        x: 150
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 200
        y: 100
        keys: [ 21 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 22 ]
        x: 250
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 300
        y: 100
        keys: [ 23 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 24 ]
        x: 350
        y: 100
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 25 ]
        x: 0
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 50
        y: 150
        keys: [ 26 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 27 ]
        x: 100
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 150
        y: 150
        keys: [ 28 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 29 ]
        x: 200
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        x: 250
        y: 150
        keys: [ 30 ]
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 31 ]
        x: 300
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "grey"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }
    DropArea {
        width: 50; height: 50
        keys: [ 32 ]
        x: 350
        y: 150
            //или
/*        onContainsDragChanged: { //если есть движение, то меняется цвет, если нет, то остается
                    if(containsDrag){
                       fondDropArea.border.color= "red"
                    }
                    else{
                        fondDropArea.border.color= "black"
                    }
                }
*/
        Rectangle {
//            id: fondDropArea
            anchors.fill: parent
            color: "white"
            border.color: "black"
            border.width: 1
            //или
/*            states: [
                State {
                    when: dropArea.containsDrag
                    PropertyChanges {
                        target: fondDropArea
                        border.color: "red"
                    }
                }
            ]
            */
        }
    }












    Rectangle {
        id: areaOfOrigin
        //property string colorKey
        color: "grey"
        width: 50
        height: 50
        border.color: "black"
        border.width: 1
        x: 300
        y: 300
        MouseArea {
            id: mouseArea
            width: 50; height: 50
            anchors.centerIn: parent
            drag.target: object
            onReleased: parent = object.Drag.target !== null ? object.Drag.target : areaOfOrigin
/*
            onReleased: {
                parent = object.Drag.target !== null ? object.Drag.target : areaOfOrigin
                    if(object.Drag.target === null){
                bject.anchors.verticalCenter= mouseArea.verticalCenter
                object.anchors.horizontalCenter= mouseArea.horizontalCenter
                }
                    if(object.Drag.target.objectName === "dropArea"){
                object.parent= dropArea
                object.anchors.verticalCenter= dropArea.verticalCenter
                object.anchors.horizontalCenter= dropArea.horizontalCenter
                    }
                }
                drag.onActiveChanged: {
                    if(drag.active){
                object.parent= areaOfOrigin
                object.anchors.verticalCenter= undefined
                object.anchors.horizontalCenter= undefined
                    }
                }

*/
            Image { //квадрат, которой перетаскиваем
                id: object
                width: 50; height: 50
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                source: "/resources/img/black-queen.svg"
                Drag.keys: [ 1,2,3,4,5,6,7,8 ]
                Drag.active: mouseArea.drag.active
                Drag.hotSpot.x: 25
                Drag.hotSpot.y: 25
                states: State {
                    when: mouseArea.drag.active
                    ParentChange { target: object; parent: areaOfOrigin }
                    AnchorChanges { target: object; anchors.verticalCenter: undefined; anchors.horizontalCenter: undefined }
                }
            }
        }
    }

}
