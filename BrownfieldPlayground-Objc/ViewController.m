#import "ViewController.h"
#import "BridgeManager.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RCTBridge* bridge = [[BridgeManager shared] bridge];
    self.view = [[RCTRootView alloc] initWithBridge:bridge moduleName:@"MyReactComponent" initialProperties:@{@"text": @"Hello world!"}];
}

@end

