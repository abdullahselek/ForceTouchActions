//
//  FTActionsIcon.h
//  ForceTouchActions
//
//  Created by Abdullah Selek on 10/09/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FTActionsIconType) {
    FTActionsIconTypeCompose,
    FTActionsIconTypePlay,
    FTActionsIconTypePause,
    FTActionsIconTypeAdd,
    FTActionsIconTypeLocation,
    FTActionsIconTypeSearch,
    FTActionsIconTypeShare,
    FTActionsIconTypeProhibit,
    FTActionsIconTypeContact,
    FTActionsIconTypeHome,
    FTActionsIconTypeMarkLocation,
    FTActionsIconTypeFavorite,
    FTActionsIconTypeLove,
    FTActionsIconTypeCloud,
    FTActionsIconTypeInvitation,
    FTActionsIconTypeConfirmation,
    FTActionsIconTypeMail,
    FTActionsIconTypeMessage,
    FTActionsIconTypeDate,
    FTActionsIconTypeTime,
    FTActionsIconTypeCapturePhoto,
    FTActionsIconTypeCaptureVideo,
    FTActionsIconTypeTask,
    FTActionsIconTypeTaskCompleted,
    FTActionsIconTypeAlarm,
    FTActionsIconTypeBookmark,
    FTActionsIconTypeShuffle,
    FTActionsIconTypeAudio,
    FTActionsIconTypeUpdate,
    FTActionsIconTypeCustom
};

@interface FTActionsIcon : NSObject

+ (UIApplicationShortcutIconType)toShortcutIconType:(FTActionsIconType)actionIconType;

@end
