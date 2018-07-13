//
//  RSConfig.m
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSConfig.h"

@interface RSConfig()
@property (nonatomic, assign) RSConfigDesignResolutionType designResolutionType;
@property (nonatomic, assign) RSConfigContentMode contentMode;
@end

@implementation RSConfig
- (instancetype)initWithDesignResolutionType:(RSConfigDesignResolutionType)type contentMode:(RSConfigContentMode)contentMode {
    if (self = [super init]) {
        self.designResolutionType = type;
        self.contentMode = contentMode;
    }
    return self;
}
- (CGSize)size {
    switch (self.designResolutionType) {
        case RSConfigDesignResolutionTypeOrigin: return UIScreen.mainScreen.bounds.size;
        case RSConfigDesignResolutionType4: return CGSizeMake(320, 568);
        case RSConfigDesignResolutionType47: return CGSizeMake(373, 667);
        case RSConfigDesignResolutionType55: return CGSizeMake(414, 736);
        case RSConfigDesignResolutionType58: return CGSizeMake(375, 812);
    }
}

@end
