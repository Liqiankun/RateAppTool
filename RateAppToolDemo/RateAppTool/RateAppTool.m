//
//  RateAppTool.m
//  
//
//  Created by DavidLee on 15/10/19.
//
//

#import "RateAppTool.h"

#define VERSION @"lastestVersion"
#define COUNT @"count"

@implementation RateAppTool


-(instancetype)init
{
    self = [super init];
    if (self) {
        
        //默认设置
        self.rateTitle = @"现在就去";
        self.remainLater = @"稍后提醒";
        self.cancelTitle = @"不了，谢谢！";
        self.alerTitle = @"为XX评分";
        self.alertMessage = @"如果您觉得XX很好用，可否为其评一个分数？评分过程只需花费很少的时间。感谢您的支持！";
        self.remainCount = 2;
        
    }
    
    return self;
}


-(void)rateApp
{
    self.lastVersion = [[NSUserDefaults standardUserDefaults] valueForKey:VERSION];
    self.count = [[[NSUserDefaults standardUserDefaults] valueForKey:COUNT] integerValue];
    //检测当前版本
    self.versionStr = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    
    if ([self.lastVersion isEqualToString:self.versionStr]) {
        
    }else{
        if (self.count == self.remainCount) {
            
            [self showAlertView];
            
        }else{
            self.count++;
            NSNumber *countNum = [NSNumber numberWithInteger:self.count];
            [[NSUserDefaults standardUserDefaults] setObject:countNum forKey:COUNT];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
    }

}

-(void)showAlertView
{
    
    UIViewController *topController = [UIApplication sharedApplication].delegate.window.rootViewController;
    while (topController.presentedViewController)
    {
        topController = topController.presentedViewController;
    }

    UIAlertController *alert = [UIAlertController  alertControllerWithTitle:self.alerTitle message:self.alertMessage preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionOne = [UIAlertAction actionWithTitle:self.cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
        NSNumber *countNum = [NSNumber numberWithInteger:0];
        [[NSUserDefaults standardUserDefaults] setObject:self.versionStr forKey:VERSION];
        [[NSUserDefaults standardUserDefaults] setObject:countNum forKey:COUNT];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }];
    
    UIAlertAction *actionTwo = [UIAlertAction actionWithTitle:self.rateTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        NSNumber *countNum = [NSNumber numberWithInteger:0];
        [[NSUserDefaults standardUserDefaults] setObject:self.versionStr forKey:VERSION];
        [[NSUserDefaults standardUserDefaults] setObject:countNum forKey:COUNT];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        NSURL *url = [NSURL URLWithString:self.appDownloadURL];
        [[UIApplication sharedApplication] openURL:url];

    }];
    
    UIAlertAction *actionThree = [UIAlertAction actionWithTitle:self.remainLater style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        NSNumber *countNum = [NSNumber numberWithInteger:0];
        [[NSUserDefaults standardUserDefaults] setObject:countNum forKey:COUNT];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }];
    

    
    [alert addAction:actionOne];
    [alert addAction:actionTwo];
    [alert addAction:actionThree];
    
    [topController presentViewController:alert animated:YES completion:nil];
    
}





@end
