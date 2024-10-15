import Capacitor
import Foundation
import WatchConnectivity

@objc public class IonicWatchConnectivity: NSObject {
    @objc func isWatchAvailable(_ call: CAPPluginCall) {
      let session = WCSession.default
      if session.isPaired && session.isWatchAppInstalled {
        call.resolve(true)
      } else {
        call.resolve(false)
      }
    }

  @objc func updateApplicationContext(_ call: CAPPluginCall) {
    guard let data = call.getObject("data") else {
      call.reject("Invalid data")
      return
    }

    do {
      try WCSession.default.updateApplicationContext(data)
      call.resolve(["success": true])
    } catch {
      call.reject("Failed to update application context: \(error.localizedDescription)")
    }
  }
}
