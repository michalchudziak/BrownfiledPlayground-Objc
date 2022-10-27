#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTBridgeDelegate.h>

NS_ASSUME_NONNULL_BEGIN

@interface BridgeManager: NSObject<RCTBridgeDelegate>

@property (nonatomic) RCTBridge *bridge;

+ (instancetype)shared;

- (void)loadReactNative:(NSDictionary * _Nullable)launchOptions;

@end

NS_ASSUME_NONNULL_END
