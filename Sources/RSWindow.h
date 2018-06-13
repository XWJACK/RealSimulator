//
//  RSWindow.h
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSConfig;

@interface RSWindow : UIWindow
@property (nonatomic, readonly) RSConfig *currentConfig;
- (void)reloadWindowWithConfig:(RSConfig *)config;
@end
