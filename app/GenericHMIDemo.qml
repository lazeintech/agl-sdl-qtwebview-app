import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtMultimedia 5.6
import AGL.Demo.Controls 1.0
import QtWebView 1.1

ApplicationWindow {
    id: root

    WebView {
            id: webView
            anchors.fill: parent
            url: "file:///usr/share/smartdevicelink/generic_hmi/index.html"
            onLoadingChanged: {
                if (loadRequest.errorString)
                    console.error(loadRequest.errorString);
            }
    }
}
