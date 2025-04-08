import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import org.kde.plasma.plasmoid 2.0
import org.kde.kirigami 2.20 as Kirigami
import "../code/weather.js" as Weather

PlasmoidItem {
    Layout.preferredWidth: 80
    Layout.preferredHeight: 50

    Kirigami.Theme.inherit: false
    Kirigami.Theme.colorSet: Kirigami.Theme.View


    property string temperature: "Loading..."
    property int time: 60000

    Timer {
        id: updateTimer
        interval: time
        running: true
        repeat: true
        onTriggered: fetchWeather()
    }

    function fetchWeather(){
        Weather.fetch(function(temp) {
                temperature = temp; 
            });
    }

    Component.onCompleted: fetchWeather()

    Text {
        anchors.centerIn: parent
        text: temperature
        font.pixelSize: 16
        color: Kirigami.Theme.textColor
    }
}

