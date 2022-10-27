#import <Foundation/Foundation.h>
#import <React/RCTBundleURLProvider.h>

#import "BridgeManager.h"


@implementation BridgeManager

@synthesize bridge;

+ (id)shared {
    static BridgeManager *sharedBridgeManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedBridgeManager = [self new];
    });
    
    return sharedBridgeManager;
}

- (void)loadReactNative:(NSDictionary *)launchOptions {
    if (bridge != nil) {
        return;
    }
    
    bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
}

#pragma mark - RCTBridgeDelegate Methods

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {
  #if DEBUG
    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
  #else
    return [[NSBundle bundleForClass:[self class]] URLForResource:@"main" withExtension:@"jsbundle"];
  #endif
}

@end
