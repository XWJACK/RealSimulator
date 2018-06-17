//
//  RSWindow.h
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSConfig;

NS_ASSUME_NONNULL_BEGIN
/**
     self.window = [[RSWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
     self.window.rootViewController = <Your Custom Root View Controller>;
     [self.window makeKeyAndVisible];
 */
@interface RSWindow : UIWindow

/// Current config, it useless directory modify content, use `reloadWindowWithConfig:` instead.
@property (nonatomic, readonly, nullable) RSConfig *currentConfig;

/**
 Reload new config

 @param config RSConfig, if pass nil to config, it will restory to default config.
 */
- (void)reloadWindowWithConfig:(RSConfig * _Nullable)config;

@end

NS_ASSUME_NONNULL_END
