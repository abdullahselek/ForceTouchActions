//
//  FTActionsIcon.m
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import "FTActionsIcon.h"

@implementation FTActionsIcon

+ (UIApplicationShortcutIconType)toShortcutIconType:(FTActionsIconType)actionIconType
{
    switch (actionIconType)
    {
        case FTActionsIconTypeCompose:
            return UIApplicationShortcutIconTypeCompose;
        case FTActionsIconTypePlay:
            return UIApplicationShortcutIconTypePlay;
        case FTActionsIconTypePause:
            return UIApplicationShortcutIconTypePause;
        case FTActionsIconTypeAdd:
            return UIApplicationShortcutIconTypeAdd;
        case FTActionsIconTypeLocation:
            return UIApplicationShortcutIconTypeLocation;
        case FTActionsIconTypeSearch:
            return UIApplicationShortcutIconTypeSearch;
        case FTActionsIconTypeShare:
            return UIApplicationShortcutIconTypeShare;
        case FTActionsIconTypeProhibit:
            return UIApplicationShortcutIconTypeProhibit;
        case FTActionsIconTypeContact:
            return UIApplicationShortcutIconTypeContact;
        case FTActionsIconTypeHome:
            return UIApplicationShortcutIconTypeHome;
        case FTActionsIconTypeMarkLocation:
            return UIApplicationShortcutIconTypeMarkLocation;
        case FTActionsIconTypeFavorite:
            return UIApplicationShortcutIconTypeFavorite;
        case FTActionsIconTypeLove:
            return UIApplicationShortcutIconTypeLove;
        case FTActionsIconTypeCloud:
            return UIApplicationShortcutIconTypeCloud;
        case FTActionsIconTypeInvitation:
            return UIApplicationShortcutIconTypeInvitation;
        case FTActionsIconTypeConfirmation:
            return UIApplicationShortcutIconTypeConfirmation;
        case FTActionsIconTypeMail:
            return UIApplicationShortcutIconTypeMail;
        case FTActionsIconTypeMessage:
            return UIApplicationShortcutIconTypeMessage;
        case FTActionsIconTypeDate:
            return UIApplicationShortcutIconTypeDate;
        case FTActionsIconTypeTime:
            return UIApplicationShortcutIconTypeTime;
        case FTActionsIconTypeCapturePhoto:
            return UIApplicationShortcutIconTypeCapturePhoto;
        case FTActionsIconTypeCaptureVideo:
            return UIApplicationShortcutIconTypeCaptureVideo;
        case FTActionsIconTypeTask:
            return UIApplicationShortcutIconTypeTask;
        case FTActionsIconTypeTaskCompleted:
            return UIApplicationShortcutIconTypeTaskCompleted;
        case FTActionsIconTypeAlarm:
            return UIApplicationShortcutIconTypeAlarm;
        case FTActionsIconTypeBookmark:
            return UIApplicationShortcutIconTypeBookmark;
        case FTActionsIconTypeShuffle:
            return UIApplicationShortcutIconTypeShuffle;
        case FTActionsIconTypeAudio:
            return UIApplicationShortcutIconTypeAudio;
        case FTActionsIconTypeUpdate:
            return UIApplicationShortcutIconTypeUpdate;
        case FTActionsIconTypeCustom:
            return FTActionsIconTypeCustomValue;
    }
}

@end
