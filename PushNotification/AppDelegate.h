//
//  AppDelegate.h
//  PushNotification
//
//  Created by Marco Vanossi on 2/6/17.
//  Copyright © 2017 Fam, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushNotificationViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UIWindow *pushNotificationWindow;
-(void) presentPushNotificationWithAppName:(NSString*)appName iconURLString:(NSString*)iconURLString message:(NSString*)message time:(NSString*)time;

@end

