//
//  ViewController.m
//  TestFacebookShare
//
//  Created by Raíssa Nucci on 9/18/15.
//  Copyright © 2015 Raíssa Nucci. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKMessageDialog.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
#import <FBSDKShareLinkContent.h>
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>
#import "ShareActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionPressed:(id)sender {
    ShareActivity *shareActivity = [[ShareActivity alloc] init];
    UIActivityViewController *vc = [[UIActivityViewController alloc]
                                    initWithActivityItems:@[[UIImage imageNamed:@"ipad_portrait_1x"]]
                                    applicationActivities:@[shareActivity]];
    
    [self presentViewController:vc animated:YES completion:nil];
}

@end
