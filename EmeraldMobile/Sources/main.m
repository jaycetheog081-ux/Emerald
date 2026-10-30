#import <UIKit/UIKit.h>

@interface EmeraldMobileAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation EmeraldMobileAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor colorWithRed:7.0/255 green:27.0/255 blue:24.0/255 alpha:1];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(24, 105, vc.view.bounds.size.width-48, 50)];
    title.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    title.text = @"◆ EmeraldMobile";
    title.textColor = [UIColor colorWithRed:0.35 green:0.95 blue:0.65 alpha:1];
    title.font = [UIFont systemFontOfSize:30 weight:UIFontWeightBold];
    [vc.view addSubview:title];
    UILabel *badge = [[UILabel alloc] initWithFrame:CGRectMake(24, 164, vc.view.bounds.size.width-48, 30)];
    badge.text = @"ROOTFUL • iOS 11–15 TARGET";
    badge.textColor = [UIColor colorWithRed:0.65 green:1 blue:0.82 alpha:1];
    badge.font = [UIFont systemFontOfSize:12 weight:UIFontWeightSemibold];
    [vc.view addSubview:badge];
    UILabel *info = [[UILabel alloc] initWithFrame:CGRectMake(24, 215, vc.view.bounds.size.width-48, 160)];
    info.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    info.numberOfLines = 0;
    info.textColor = UIColor.whiteColor;
    info.font = [UIFont systemFontOfSize:16];
    info.text = @"Ready to configure\\n\\nThis is the EmeraldMobile interface scaffold. No exploit or jailbreak backend is connected, and this app does not modify the device.";
    [vc.view addSubview:info];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool { return UIApplicationMain(argc, argv, nil, NSStringFromClass(EmeraldMobileAppDelegate.class)); }
}
