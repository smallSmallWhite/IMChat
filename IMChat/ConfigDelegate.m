//
//  ConfigDelegate.m
//  IMChat
//
//  Created by admin on 17/1/25.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ConfigDelegate.h"
#import <NIMNotificationContent.h>
#import <NIMNotificationObject.h>
@implementation ConfigDelegate

-(BOOL)shouldIgnoreNotification:(NIMNotificationObject *)notification{
    
    BOOL ignore = NO;
    NIMNotificationContent *content = notification.content;
    if ([content isKindOfClass:[NIMTeamNotificationContent class]]) //这里做个示范如何忽略部分通知 (不在聊天界面显示)
    {
//        if ([content notificationType] == [(NIMTeamNotificationContent *)content operationType]) {
        
//        }
//        NSArray *types = [[NTESBundleSetting sharedConfig] ignoreTeamNotificationTypes];
//        NIMTeamOperationType type = [(NIMTeamNotificationContent *)content operationType];
//        for (NSString *item in types)
//        {
//            if (type == [item integerValue])
//            {
//                ignore = YES;
//                break;
//            }
//        }
    }
    return ignore;
}

@end
