import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IonicWatchConnectivityPlugin)
public class IonicWatchConnectivityPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "IonicWatchConnectivityPlugin"
    public let jsName = "IonicWatchConnectivity"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = IonicWatchConnectivity()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
