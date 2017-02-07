//
//  PushNotificationView.m
//  PushNotification
//
//  Created by Marco Vanossi on 2/6/17.
//

#import "PushNotificationView.h"
#import "SDWebImageManager.h"

@interface PushNotificationView()

@property(nonatomic,strong) UIView * topView;
@property(nonatomic,strong) UIImageView * appIconImageView;
@property(nonatomic,strong) UILabel * appNameLabel;
@property(nonatomic,strong) UILabel * messageLabel;
@property(nonatomic,strong) UILabel * timeLabel;
@property(nonatomic,strong) NSString * iconURLString;


@end


@implementation PushNotificationView


- (id) initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        
        self.backgroundColor=[UIColor colorWithRed:197.0/255.0 green:209.0/255.0 blue:211.0/255.0 alpha:1.0];
        self.clipsToBounds=YES;
        
        
        self.topView = [[UIView alloc] init];
        self.topView.backgroundColor=[UIColor colorWithRed:206.0/255.0 green:219.0/255.0 blue:222.0/255.0 alpha:1.0];
        [self addSubview:self.topView];
        
        self.appIconImageView = [[UIImageView alloc] init];
        self.appIconImageView.backgroundColor=[UIColor clearColor];
        self.appIconImageView.layer.cornerRadius=4;
        self.appIconImageView.clipsToBounds=YES;
        [self addSubview:self.appIconImageView];
    
        
        self.appNameLabel = [[UILabel alloc] init];
        //self.appNameLabel.text=appName;
        self.appNameLabel.font=[UIFont systemFontOfSize:14];
        //self.appNameLabel.backgroundColor=[UIColor whiteColor];
        self.appNameLabel.textColor=[UIColor colorWithRed:65.0/255.0 green:76.0/255.0 blue:82.0/255.0 alpha:1.0];

        [self addSubview:self.appNameLabel];
        
        
        self.messageLabel = [[UILabel alloc] init];
        //self.messageLabel.text=message;
        self.messageLabel.font=[UIFont systemFontOfSize:14];
        //self.messageLabel.backgroundColor=[UIColor whiteColor];
        [self addSubview:self.messageLabel];
        
        
        self.timeLabel = [[UILabel alloc] init];
        //self.timeLabel.text=time;
        self.timeLabel.font=[UIFont systemFontOfSize:14];
        //self.messageLabel.backgroundColor=[UIColor whiteColor];
        self.timeLabel.textColor=[UIColor colorWithRed:65.0/255.0 green:76.0/255.0 blue:82.0/255.0 alpha:1.0];

        [self addSubview:self.timeLabel];
        
        //self.iconURLString = iconURLString;
        //[self setUpImageView];
        
        
    }
    return self;
    
}
-(void) setAppName:(NSString*)appName iconURLString:(NSString*)iconURLString message:(NSString*)message time:(NSString*)time {
    
    self.appNameLabel.text=appName;
    self.messageLabel.text=message;
    self.timeLabel.text=time;
    self.iconURLString = iconURLString;
    [self setUpImageView];

    
}


-(void)layoutSubviews {
    
    [super layoutSubviews];
    
    NSLog(@"layoutSubviews");
    self.layer.cornerRadius=15;
    
    
    self.topView.frame=CGRectMake(0, 0, self.frame.size.width, 36);
    
    self.appIconImageView.frame=CGRectMake(8, 8, 20, 20);

    self.appNameLabel.frame=CGRectMake(37, 8, 170, 20);
    
    self.messageLabel.frame=CGRectMake(15.5, 36+8, 300, 36-8*2);


    self.timeLabel.frame=CGRectMake(self.frame.size.width-24-15.5, 14, 28, 10);

}


-(void)setUpImageView {
    
    __weak typeof(self) weakSelf = self;
    
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:self.iconURLString] options:0 progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        if (!error && image) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.appIconImageView.image = image;
            });
            
        }
        
        
    }];
    
}
@end
