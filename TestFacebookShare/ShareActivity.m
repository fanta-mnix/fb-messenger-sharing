//
//  ShareActivity.m
//  TestFacebookShare
//
//  Created by Rafael Fantini on 10/6/15.
//  Copyright © 2015 Raíssa Nucci. All rights reserved.
//

#import "ShareActivity.h"
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>

NSString * const PKTShareActivityType = @"com.movile.playkids.talk.activity.Share";

@interface ShareActivity ()

@property (strong, nonatomic) UIImage *picture;

@end

@implementation ShareActivity

+ (UIActivityCategory)activityCategory {
    return UIActivityCategoryShare;
}

- (NSString *)activityType {
    return PKTShareActivityType;
}

- (NSString *)activityTitle {
    return @"Facebook Messengerz";
}

- (UIImage *)activityImage {
    return [UIImage imageNamed:@"ipad_portrait_1x"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    if (activityItems.count != 1) {
        return NO;
    }
    if (![activityItems[0] isKindOfClass:[UIImage class]]) {
        return NO;
    }
    
    return [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"fb-messenger://"]];
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    self.picture = activityItems[0];
}

- (void)performActivity {
    [FBSDKMessengerSharer shareImage:self.picture withOptions:nil];
}

@end
