//
//  MPConfigh.m
//  IMChat
//
//  Created by admin on 17/1/25.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "MPConfigh.h"

@interface MPConfigh ()

@end

@implementation MPConfigh
+ (instancetype)sharedConfig
{
    static MPConfigh *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MPConfigh alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    if (self = [super init])
    {
        _appKey = @"45c6af3c98409b18a84451215d0bdd6e";
        _apiURL = @"https://app.netease.im/api";
        _cerName= @"ENTERPRISE";
    }
    return self;
}

- (NSString *)appKey
{
    return _appKey;
}

- (NSString *)apiURL
{
//    NSAssert([[NIMSDK sharedSDK] isUsingDemoAppKey], @"只有 demo appKey 才能够使用这个API接口");
    return _apiURL;
}

- (NSString *)cerName
{
    return _cerName;
}


@end
