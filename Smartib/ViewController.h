//
//  ViewController.h
//  Smartib
//
//  Created by Leela Electronics on 06/11/15.
//  Copyright (c) 2015 Leela Electronics. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <FacebookSDK/FacebookSDK.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController : UIViewController<FBLoginViewDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *loginview;




@end

