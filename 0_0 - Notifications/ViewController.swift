//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Current Status: This shiznit doesn't work...?
//  Primary
//  URL: ? (swift)http://stackoverflow.com/questions/24520024/how-to-use-uilocalnotification-in-swift
//                    note - once works, post your answer here :O
//  URL: ? (objC) https://mobiarch.wordpress.com/2013/09/03/posting-a-message-in-ios-notification-center/
//
//  General Notifcations Stuff
//  URL: http://www.idev101.com/learn_iphone_programming.html
//  URL: http://www.idev101.com/code/Cocoa/Notifications.html
//  URL: http://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/Notifications/Introduction/introNotifications.html#//apple_ref/doc/uid/10000043i


import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        optDemo_addButton(self.view);
        
        makeAMonsterousLabel(self.view);
        
        addNotification(self.view);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete?");
        
        return;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        
        return;
    }
    
    
    @objc func addNotification(_ view:UIView) {
        
        print("Posting Notification");
        
        let notification = UILocalNotification();
        
        notification.timeZone = TimeZone.current;
        
        let dateTime:Date = Date(timeIntervalSinceNow: 15);
        
        notification.fireDate = dateTime;
        
        notification.alertBody = "Test";
        
        UIApplication.shared.scheduleLocalNotification(notification);
        
        ScheduleLocalNotificationIfPossible();
        
        print("ViewController.addNotification():       addNotification() complete");
        
        return;
    }
    
    
  
    fileprivate let kLocalNotificationMessage:String = "Your message goes here!"
    fileprivate let kLocalNotificationTimeInterval:TimeInterval = 5
    
    fileprivate func LocalNotification() -> UILocalNotification {
        
        let localNotification:UILocalNotification = UILocalNotification();
        
        print("LocalNotifification was called");
        
        localNotification.fireDate = Date(timeIntervalSinceNow:kLocalNotificationTimeInterval);
        
        localNotification.alertBody = kLocalNotificationMessage;
        
        return localNotification;
    }
    
    fileprivate func ScheduleLocalNotificationIfPossible() {
        
        print("scheduleLocal was called");
        
    //    if (UIApplication.sharedApplication().isRegisteredForRemoteNotifications()) {
            
            UIApplication.shared.scheduleLocalNotification(LocalNotification())
            
            print("complete");
  //      }
        
        return;
    }
    

    
    
    
    
    @objc func optDemo_addButton(_ view:UIView) {
        
        let button   = UIButton(type: UIButtonType.system) as UIButton;
        
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50);
        
        button.backgroundColor = UIColor.green
        
        button.setTitle("Test Button", for: UIControlState());
        
        button.addTarget(self, action: #selector(ViewController.myButton_response(_:)), for:  .touchUpInside);
        
        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): Button added");
        
        return;
    }
    
    
    @objc func makeAMonsterousLabel(_ view:UIView) {
        
        let myFirstLabel = UILabel();
        let myFirstButton = UIButton();
        
        myFirstLabel.text = "I made a label on the screen #toogood4you";
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor = UIColor.red;
        myFirstLabel.textAlignment = .center;
        myFirstLabel.numberOfLines = 5;
        
        myFirstLabel.frame = CGRect(x: 15, y: 54, width: 300, height: 500);
        myFirstButton.setTitle("✸", for: UIControlState());
        myFirstButton.setTitleColor(UIColor.blue, for: UIControlState());
        myFirstButton.frame = CGRect(x: 15, y: 200, width: 300, height: 500);
        
        myFirstButton.addTarget(self, action: #selector(ViewController.pressed(_:)), for: .touchUpInside);
        
        view.addSubview(myFirstLabel);
        view.addSubview(myFirstButton);
        
        return;
    }
    
    
    @objc func pressed(_ sender: UIButton!) {
  
        let alertController = UIAlertController(title: "A Title",
                                                message: "message.",
                                                preferredStyle: UIAlertControllerStyle.alert);
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            (result : UIAlertAction) -> Void in
            print("Cancel");
        }
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            (result : UIAlertAction) -> Void in
            print("OK");
        }
        
        alertController.addAction(cancelAction);
        alertController.addAction(okAction);
        self.present(alertController, animated: true, completion: nil);
        
        return;
    }
    
    
    @objc func myButton_response(_ sender: UIButton!) {
        
        print("Button Response fired. Game on!");
        
        return;
    }
}



