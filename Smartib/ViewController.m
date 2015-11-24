//
//  ViewController.m
//  Smartib
//
//  Created by Leela Electronics on 06/11/15.
//  Copyright (c) 2015 Leela Electronics. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKShareKit/FBSDKShareKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController ()


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.loginview.readPermissions=@[@"public_profile",@"email",@"user_friends"];

    
    NSString *emailString =@"";
    NSString *emailReg = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",emailReg];
    
    
    if (([emailTest evaluateWithObject:emailString] != YES) || [emailString isEqualToString:@""])
    {
        UIAlertView *loginalert = [[UIAlertView alloc] initWithTitle:@" Enter Email in" message:@"abc@example.com format" delegate:self
                                                   cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [loginalert show];

        
    }
    else
    {
        NSLog(@"sign up");
    }

   
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user
{
    
    NSLog(@"user name  %@   |",user.name);
    
    if (FBSession.activeSession.isOpen) {
        
        [[FBRequest requestForMe] startWithCompletionHandler:
         ^(FBRequestConnection *connection,
           NSDictionary<FBGraphUser> *user,
           NSError *error) {
             if (!error) {
                 NSString *firstName = user.first_name;
                 NSLog(@"User details =%@",user);
                 NSString *facebookId = user.id;
                 NSLog(@"Facebook id  %@",facebookId);
                 NSString *imageUrl = [[NSString alloc] initWithFormat: @"http://graph.facebook.com/%@/picture?type=large", facebookId];
                 NSLog(@"Photo url id  %@",imageUrl);
           
             }
         }];
    }
}
-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView
{
    NSLog(@"U are logged in ");
}
-(void)loginViewShowingLoggedOutUser:(FBLoginView*)loginview

{
    NSLog(@"U are logged out ");
}

-(void)loadView:(FBLoginView*)loginView handleError:(NSError*)error
{
    NSString *alertMessage,*alertTitle;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
