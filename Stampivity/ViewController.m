//
//  ViewController.m
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 1/30/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import "ViewController.h"
#import "LoginWithEmailViewController.h"
#import <FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "EmailSignUpViewController.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UITapGestureRecognizer *tapForAlreadyHaveAccountLbl=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(DidTapOnAlreadyHaveAccountLbl:)];
    [lblForAlreadyHaveAnAccouunt addGestureRecognizer:tapForAlreadyHaveAccountLbl];
    
}


-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden=YES;
}


-(void)DidTapOnAlreadyHaveAccountLbl:(UITapGestureRecognizer*)recognizer
{
   // NSLog(@"lbl Clicked");
    LoginWithEmailViewController *lWithEmail=[self.storyboard instantiateViewControllerWithIdentifier:@"LoginWithEmail"];
    [self.navigationController pushViewController:lWithEmail animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)logInWithFacebookBtnAction:(UIButton *)sender
{
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    
    [login logOut];
    
    
    
    [login logInWithReadPermissions: @[@"email"]
     
                 fromViewController:self
     
                            handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
                                
                                if (error) {
                                    
                                    NSLog(@"Process error");
                                    
                                } else if (result.isCancelled) {
                                    
                                    NSLog(@"Cancelled");
                                    
                                }
                                
                                else if (!error)
                                    
                                {
                                    
                                    [self getFacebookData];
                                    
                                }
                                
                                else {
                                    
                                    //             NSLog(@"Logged in");
                                    
                                }
                                
                            }];
    
}


-(void)getFacebookData

{
    
    NSMutableDictionary* parameters = [NSMutableDictionary dictionary];
    
    [parameters setValue:@"id,name,email,gender,first_name, last_name,picture.type(normal)" forKey:@"fields"];
    
    
    
    FBSDKGraphRequest *requestMe = [[FBSDKGraphRequest alloc]initWithGraphPath:@"me" parameters:parameters];
    
    
    
    FBSDKGraphRequestConnection *connection = [[FBSDKGraphRequestConnection alloc] init];
    
    
    
    [connection addRequest:requestMe completionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
        
        
        
        if (!error) {
            
            // result is a dictionary with the user's Facebook data
            
           NSDictionary* userData = (NSDictionary *)result;
            
            
            
            
            //[MBProgressHUD showHUDAddedTo:self.view animated:YES];
            
            if (userData )
            {
                NSLog(@"userData : %@",userData);
            }
            
            else
            {
                
                
                
            }
            
            
            
            
            
        }
        
        else
            
        {
            
            NSLog(@"error : %@",error);
            
        }
        
    }];
    
    [connection start];
    
    
    
}



- (IBAction)signUpWithEmailBtnAction:(UIButton *)sender
{
    EmailSignUpViewController *eSVC=[self.storyboard instantiateViewControllerWithIdentifier:@"EmailSignUp"];
    [self.navigationController pushViewController:eSVC animated:YES];
}

@end
