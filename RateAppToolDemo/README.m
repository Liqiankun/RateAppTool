//
//  README.m
//  
//
//  Created by DavidLee on 15/10/20.
//
//

/*
 
*****功能
RateApp是一个提醒用户评论在使用App的一个框架。
 
 
*****使用
 1>将Rate文件夹拖到你的工程里。
 
 2>在AppDelegate中导入头文件 #import "RateAppTool.h"
 
 3>调用rateApp方法

 RateAppTool *rate = [RateAppTool alloc] init];
 
 //一定要设置下载url
 rate.appDownloadURL = @"";
 
 [rate rateApp];
 
 
*****其他自定义设置

用户打开App的次数提醒用户评价App,默认是2
@property(nonatomic,assign) NSInteger remainCount;


iOS版App下载地址，默认是"http://www.aihehuo.com/app"
@property(nonatomic,copy) NSString *appDownloadURL;
 
 
提示框的标题,默认是"为爱合伙评分"
@property(nonatomic,copy) NSString *alerTitle;
 

提示框的提示内容，默认是"如果您觉得爱合伙很好用，可否为其评一个分数？评分过程只需花费很少的时间。感谢您的支持！"
@property(nonatomic,copy) NSString *alertMessage;
 

评论按钮的title,默认是"现在就去"
@property(nonatomic,copy) NSString *rateTitle;

稍后提醒按钮的title, 默认是“稍后提醒”
@property(nonatomic,copy) NSString *remainLater;
 
 

取消按钮的title，默认是“不了，谢谢！”
@property(nonatomic,copy) NSString *cancelTitle;
 
 */
