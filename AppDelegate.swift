/************************************************************************************************************************************/
/** @file       AppDelegate.swift
 *  @project    0_0 - Notifications
 *  @brief      x
 *  @details    x
 *
 *  @section    Opens
 *      none current
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property of Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    /********************************************************************************************************************************/
    /** @fcn        application(application, didFinishLaunchingWithOptions) -> Bool
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds);
        
        self.window?.backgroundColor = UIColor.white;
        
        let viewController:ViewController = ViewController();
        
        self.window?.rootViewController = viewController;
        
        self.window?.makeKeyAndVisible();
        
        print("AppDelegate.application():          Application launch complete");
        
        return true;
    }

    func applicationWillResignActive(_ application: UIApplication)    { return; }
    func applicationDidEnterBackground(_ application: UIApplication)  { return; }
    func applicationWillEnterForeground(_ application: UIApplication) { return; }
    func applicationDidBecomeActive(_ application: UIApplication)     { return; }
    func applicationWillTerminate(_ application: UIApplication)       { return; }
}

