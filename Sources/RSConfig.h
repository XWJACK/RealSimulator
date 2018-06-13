//
//  RSConfig.h
//  RealSimulator
//
//  Created by Jack on 2018/6/13.
//  Copyright © 2018 XWJACK. All rights reserved.
//

typedef NS_ENUM(NSUInteger, RSConfigDesignResolutionType) {
    /// Resotry Origin
    RSConfigDesignResolutionTypeOrigin = 0,
    /// 320x568     4       640x1136
    RSConfigDesignResolutionType4 = 4,
    /// 373x667     4.7     750x1334
    RSConfigDesignResolutionType47 = 47,
    /// 414x736     5.5     1080x1920
    RSConfigDesignResolutionType55 = 55,
    /// 375x812     5.8     1125x2436
    RSConfigDesignResolutionType58 = 58,
};

typedef NS_ENUM(NSUInteger, RSConfigContentMode) {
    RSConfigContentModeScaleAspectFit,
    RSConfigContentModeCenter,
};

@interface RSConfig : NSObject
@property (nonatomic, readonly) RSConfigDesignResolutionType designResolutionType;
@property (nonatomic, readonly) RSConfigContentMode contentMode;
@property (nonatomic, readonly) CGSize size;

- (instancetype)initWithDesignResolutionType:(RSConfigDesignResolutionType)type contentMode:(RSConfigContentMode)contentMode;
@end
