//
//  signupUsingFacebookViewController.h
//  Smartib
//
//  Created by Leela Electronics on 06/11/15.
//  Copyright (c) 2015 Leela Electronics. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>
#import <FacebookSDK/FacebookSDK.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface signupUsingFacebookViewController : ViewController<FBLoginViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>


- (IBAction)signupAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *fbLoginButon;

@property (weak, nonatomic) IBOutlet UIView *fbLogin;

@end
