//
//  RSWindow.h
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSConfig;

/**
     self.window = [[RSWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
     self.window.rootViewController = <Your Custom Root View Controller>;
     [self.window makeKeyAndVisible];
 */
@interface RSWindow : UIWindow
/// Current config, it useless directory modify content, use `reloadWindowWithConfig:` instead.
@property (nonatomic, readonly) RSConfig *currentConfig;

/**
 Reload new config

 @param config RSConfig
 */
- (void)reloadWindowWithConfig:(RSConfig *)config;

/**
 Restory origin with no config.
 */
- (void)restoryWindowToOrigin;
@end
