#import <UIKit/UIKit.h>

@interface Emerald32MAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation Emerald32MAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor colorWithRed:7.0/255 green:27.0/255 blue:24.0/255 alpha:1];
    UILabel *brand = [[UILabel alloc] initWithFrame:CGRectMake(24, 120, vc.view.bounds.size.width-48, 58)];
    brand.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    brand.text = @"◆ Emerald32M";
    brand.textColor = [UIColor colorWithRed:0.35 green:0.95 blue:0.65 alpha:1];
    brand.font = [UIFont systemFontOfSize:32 weight:UIFontWeightBold];
    [vc.view addSubview:brand];
    UILabel *status = [[UILabel alloc] initWithFrame:CGRectMake(24, 190, vc.view.bounds.size.width-48, 150)];
    status.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    status.numberOfLines = 0;
    status.textColor = UIColor.whiteColor;
    status.font = [UIFont systemFontOfSize:16];
    status.text = @"LEGACY iOS TOOLING\\n\\nUI scaffold only. No jailbreak backend is integrated.\\n\\nModern Xcode builds this scaffold for arm64; iOS 7–10 compatibility requires a legacy toolchain and separate validation.";
    [vc.view addSubview:status];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool { return UIApplicationMain(argc, argv, nil, NSStringFromClass(Emerald32MAppDelegate.class)); }
}
