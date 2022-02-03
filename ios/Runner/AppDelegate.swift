import UIKit
import GoogleMaps
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyDdYDdOJKs5f19PUtrSCJKQi62NBUhLq6Q")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
