import Capacitor
import Foundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(IonicWatchConnectivityPlugin)
public class IonicWatchConnectivityPlugin: CAPPlugin, CAPBridgedPlugin {
  public let identifier = "IonicWatchConnectivityPlugin"
  public let jsName = "IonicWatchConnectivity"
  public let pluginMethods: [CAPPluginMethod] = [
    CAPPluginMethod(name: "isWatchAvailable", returnType: CAPPluginReturnPromise),
    CAPPluginMethod(name: "updateApplicationContext", returnType: CAPPluginReturnPromise),
  ]

  private let implementation = IonicWatchConnectivity()

  @objc func isWatchAvailable(_ call: CAPPluginCall) {
    implementation.isWatchAvailable(call)
  }

  @objc func updateApplicationContext(_ call: CAPPluginCall) {
    implementation.updateApplicationContext(call)
  }
}
