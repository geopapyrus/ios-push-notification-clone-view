//
//  PushNotificationViewController.h
//  PushNotification
//
//  Created by Marco Vanossi on 2/7/17.
//  Copyright © 2017 Fam, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushNotificationView.h"

@interface PushNotificationViewController : UIViewController

@property(nonatomic,strong) PushNotificationView * pushNotificationView;

-(void) presentPushNotificationView:(void(^)(void))completion;

@end
