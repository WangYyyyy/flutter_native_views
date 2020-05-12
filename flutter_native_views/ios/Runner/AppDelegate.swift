import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    //注册view
    
    let plugin = registrar(forPlugin: "NativeViewPlugin")
    plugin.register(NormalViewFactory(), withId: "normalView")
    plugin.register(AdvancedViewFactory(), withId: "advancedView")
    
//    NormalViewPlugin.register(with: self.registrar(forPlugin: "normalView"))
//    AdvancedViewPlugin.register(with: self.registrar(forPlugin: "advancedViewPlugin"))
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
