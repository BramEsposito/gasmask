//
//  NotificationHelper.m
//  Gas Mask
//
//  Created by Siim Raud on 16.11.12.
//  Copyright (c) 2012 Clockwise. All rights reserved.
//

#import "NotificationHelper.h"

@interface NotificationHelper(Private)
+ (void)notifyNative:(NSString*)title message:(NSString*)message;
@end

@implementation NotificationHelper

+ (void)notify:(NSString*)title message:(NSString*)message
{
    [NotificationHelper notifyNative:title message:message];
}

@end

@implementation NotificationHelper (Private)

+ (void)notifyNative:(NSString*)title message:(NSString*)message
{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = title;
    notification.informativeText = message;
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}

@end
