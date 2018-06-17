//
//  RSWindow.m
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import "RSWindow.h"
#import "RSConfig.h"
#import <AVFoundation/AVFoundation.h>

@interface RSWindow()
@property (nonatomic) RSConfig *config;
@end

@implementation RSWindow

- (void)reloadWindowWithConfig:(RSConfig *)config {
    _config = config;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.frame = config == nil ? [UIScreen mainScreen].bounds : [self makeRectWithSize:config.size insideRect:[UIScreen mainScreen].bounds withMode:config.contentMode];
        [self layoutIfNeeded];
    });
}

- (RSConfig *)currentConfig {
    return _config = nil ? nil : [_config copy];
}

#pragma mark - Private

- (CGRect)makeRectWithSize:(CGSize)size insideRect:(CGRect)boundingRect withMode:(RSConfigContentMode)mode {
    switch (mode) {
        case RSConfigContentModeScaleAspectFit: return AVMakeRectWithAspectRatioInsideRect(size, boundingRect);
        case RSConfigContentModeCenter: return CGRectMake((boundingRect.size.width - size.width) / 2, (boundingRect.size.height - size.height) / 2, size.width, size.height);
    }
}
@end
