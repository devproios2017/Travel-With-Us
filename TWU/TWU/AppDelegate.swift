
import UIKit
import UserNotifications
import Firebase
import FirebaseInstanceID
import FirebaseMessaging
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate ,UNUserNotificationCenterDelegate{
    
    var window: UIWindow?
    
    // The callback to handle data message received via FCM for devices running iOS 10 or above.
    //    func application(received remoteMessage: MessagingRemoteMessage) {
    //        print(" remote Message \(remoteMessage.appData)")
    //    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Custom navigation 
        let navigationBarAppearace = UINavigationBar.appearance()
        
        navigationBarAppearace.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationBarAppearace.barTintColor = UIColor(red:1.00, green:0.50, blue:0.00, alpha:1.0)

//        tintColor :attribute change the background color of the navigation bar
//        barTintColor: attribute affect to the color of the
                //back indicator image
                //button titles
                //button images
            navigationBarAppearace.backgroundColor = UIColor(red:1.00, green:0.50, blue:0.00, alpha:1.0)

        // change navigation item title color
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        
        
        
        //Run ViewController from your storyboard
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//        
//            let storyboard = UIStoryboard(name: "Ai", bundle: nil)
//        
//            let initialViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
//        
//            self.window?.rootViewController = initialViewController
//            self.window?.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        
        if #available(iOS 10.0, *) {
            // For iOS 10 display notification (sent via APNS)
            UNUserNotificationCenter.current().delegate = self
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
            // For iOS 10 data message (sent via FCM
            Messaging.messaging().delegate = self as? MessagingDelegate
        } else {
            let settings: UIUserNotificationSettings =
                UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
        }
        
        application.registerForRemoteNotifications()
        
        let token = Messaging.messaging().fcmToken
        print("FCM token: \(token ?? "")")
        
        FirebaseApp.configure()
        return true
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}
