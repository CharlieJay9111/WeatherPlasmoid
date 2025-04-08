import QtQuick 2.15
import QtQuick.Layouts 1.15
import org.kde.plasma.plasmoid 2.0
import org.kde.kirigami 2.20 as Kirigami

PlasmoidItem {
    Layout.preferredWidth: 80
    Layout.preferredHeight: 50

    Kirigami.Theme.inherit: false
    Kirigami.Theme.colorSet: Kirigami.Theme.View

    Text {
        anchors.centerIn: parent
        text: "☀ 12 °C"
        font.pixelSize: 18
        color: Kirigami.Theme.textColor
    }
}

