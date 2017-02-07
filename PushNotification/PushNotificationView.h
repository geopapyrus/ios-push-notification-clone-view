//
//  PushNotificationView.h
//  PushNotification
//
//  Created by Marco Vanossi on 2/6/17.
//  Copyright © 2017 Fam, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PushNotificationView : UIView

-(void) setAppName:(NSString*)appName iconURLString:(NSString*)iconURLString message:(NSString*)message time:(NSString*)time;

@end
