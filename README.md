RateAppTool
=====================
A lib remind users to rate your App at App Store.RateAppTool will remaind uses after running three times.
![](https://github.com/Liqiankun/RateAppTool/raw/master/RateAppToolDemo/rateAppTool.png )
#How To Use
Drag RateAppTool file to your project.Then `import "RateAppTool.h`.<br>
Like this:<br>
```c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    self.window.backgroundColor = [UIColor whiteColor];
  
    ViewController *VC = [ViewController new];
    self.window.rootViewController = VC;
    [self.window makeKeyAndVisible];
    
    RateAppTool *rate = [[RateAppTool alloc] init];
    rate.alerTitle = @"为RateAppTool评分";
    rate.alertMessage = @"如果您觉得RateAppTool很好用，可否为其评一个分数？评分过程只需花费很少的时间。感谢您的支持！";
    rate.appDownloadURL = @"http://www.rateapptool.app";
    [rate rateApp];
  
    return YES;
}
```
#Configuration
To use it  more 
