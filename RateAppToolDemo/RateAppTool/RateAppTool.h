//
//  RateAppTool.h
//  
//
//  Created by DavidLee on 15/10/19.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface RateAppTool : NSObject<UIAlertViewDelegate>

/*----------------私有属性-------------------*/
/**
 * 上一次App的版本
 */
@property(nonatomic,copy) NSString *lastVersion;

/**
 * 现在App的版本
 */
@property(nonatomic,copy) NSString *versionStr;

/**
 * 提示用户的AlertView
 */
@property(nonatomic,strong) UIAlertView *alertView;

/**
 * 用户打开App的次数
 */
@property(nonatomic,assign) NSInteger count;


/*----------------用户自定义的属性-------------------*/

/**
 * 用户打开App的次数提醒用户评价App,默认是2
 */
@property(nonatomic,assign) NSInteger remainCount;

/**
 * iOS版App下载地址，默认是"http://www.aihehuo.com/app"
 */
@property(nonatomic,copy) NSString *appDownloadURL;

/**
 * 提示框的标题,默认是"为爱合伙评分"
 */
@property(nonatomic,copy) NSString *alerTitle;

/**
 * 提示框的提示内容，默认是"如果您觉得爱合伙很好用，可否为其评一个分数？评分过程只需花费很少的时间。感谢您的支持！"
 */
@property(nonatomic,copy) NSString *alertMessage;

/**
 * 评论按钮的title,默认是"现在就去"
 */
@property(nonatomic,copy) NSString *rateTitle;

/**
 * 稍后提醒按钮的title, 默认是“稍后提醒”
 */
@property(nonatomic,copy) NSString *remainLater;

/**
 * 取消按钮的title，默认是“不了，谢谢！”
 */
@property(nonatomic,copy) NSString *cancelTitle;


/*----------------调用方法-------------------*/
-(void)rateApp;

@end
