//
//  PushNotificationViewController.m
//  PushNotification
//
//  Created by Marco Vanossi on 2/7/17.
//

#import "PushNotificationViewController.h"


@interface PushNotificationViewController ()


@end

@implementation PushNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor=[UIColor clearColor];
    
    self.pushNotificationView = [[PushNotificationView alloc] initWithFrame:CGRectMake(8, -8-74, self.view.frame.size.width-8*2, 74)];
    
    [self.view addSubview:self.pushNotificationView];

    
    //[self presentPushNotificationView];
    
    
}

-(void) presentPushNotificationView:(void(^)(void))completion
{

    __weak typeof(self) weakSelf = self;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        [UIView animateWithDuration:0.5
                              delay:0
                            options: 0
                         animations: ^{
                             weakSelf.pushNotificationView.frame=CGRectMake(8, 8, self.view.frame.size.width-8*2, 74);
                             
                         }
                         completion: ^(BOOL finished) {
                             
                             dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
                                 
                                 
                                 [UIView animateWithDuration:0.5
                                                       delay:0
                                                     options: 0
                                                  animations: ^{
                                                      
                                                      weakSelf.pushNotificationView.frame=CGRectMake(8, -8-74, weakSelf.view.frame.size.width-8*2, 74);
                                                      
                                                      
                                                  }
                                                  completion: ^(BOOL finished) {
                                                      
                                                      completion();

                                                      
                                                  }];
                                 
                             });
                             
                             
                             
                         }];
        
    });
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
