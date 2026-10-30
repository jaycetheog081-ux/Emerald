#import <UIKit/UIKit.h>

@interface EmeraldRootlessAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation EmeraldRootlessAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UIViewController *vc = [UIViewController new];
    vc.view.backgroundColor = [UIColor colorWithRed:7.0/255 green:27.0/255 blue:24.0/255 alpha:1];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(24, 95, vc.view.bounds.size.width-48, 50)];
    title.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    title.text = @"◆ EmeraldRootless";
    title.textColor = [UIColor colorWithRed:0.35 green:0.95 blue:0.65 alpha:1];
    title.font = [UIFont systemFontOfSize:28 weight:UIFontWeightBold];
    [vc.view addSubview:title];
    UILabel *device = [[UILabel alloc] initWithFrame:CGRectMake(24, 151, vc.view.bounds.size.width-48, 40)];
    device.text = @"A12–A14+ • ROOTLESS TRACK";
    device.textColor = [UIColor colorWithRed:0.65 green:1 blue:0.82 alpha:1];
    device.font = [UIFont systemFontOfSize:12 weight:UIFontWeightSemibold];
    [vc.view addSubview:device];
    UIView *card = [[UIView alloc] initWithFrame:CGRectMake(20, 210, vc.view.bounds.size.width-40, 180)];
    card.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    card.backgroundColor = [UIColor colorWithWhite:1 alpha:0.07];
    card.layer.cornerRadius = 18;
    [vc.view addSubview:card];
    UILabel *status = [[UILabel alloc] initWithFrame:CGRectMake(18, 18, card.bounds.size.width-36, 140)];
    status.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    status.numberOfLines = 0;
    status.textColor = UIColor.whiteColor;
    status.font = [UIFont systemFontOfSize:16];
    status.text = @"Research scaffold ready\\n\\nNo exploit backend is integrated. Requested iOS/device ranges are goals, not verified compatibility.";
    [card addSubview:status];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool { return UIApplicationMain(argc, argv, nil, NSStringFromClass(EmeraldRootlessAppDelegate.class)); }
}
