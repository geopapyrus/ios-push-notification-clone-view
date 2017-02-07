//
//  ViewController.m
//  PushNotification
//
//  Created by Marco Vanossi on 2/6/17.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor grayColor];
    
    //self.view.backgroundColor=[UIColor blackColor];

    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];


    [appDelegate presentPushNotificationWithAppName:@"SNAPCHAT" iconURLString:@"http://is3.mzstatic.com/image/thumb/Purple122/v4/19/63/e8/1963e836-9a9c-55b1-d4df-e5c6391129de/mzl.lnaiedte.png/100x100bb-85.png" message:@"You have a new message" time:@"now"];
        
        
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
