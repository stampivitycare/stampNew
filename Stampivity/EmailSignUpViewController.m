//
//  EmailSignUpViewController.m
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/14/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import "EmailSignUpViewController.h"

@interface EmailSignUpViewController ()

@end

@implementation EmailSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setUserInteractionEnabled:YES];
    [leftButton setImage:[UIImage imageNamed:@"back-button-image"] forState:UIControlStateNormal];
    leftButton.frame = CGRectMake(0, 0, 30, 30);
    [leftButton addTarget:self action:@selector(backBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    self.title=@"SIGN UP";
    
    
    UITapGestureRecognizer *tapForTermsandConditions=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnTermsAndConditions)];
    [lblForTermsConditions addGestureRecognizer:tapForTermsandConditions];
    
//    txtfieldForName.leftViewMode=UITextFieldViewModeAlways;
//    txtfieldForName.leftView=imgViewForNameIcon;
    
    
}

-(void)didTapOnTermsAndConditions
{
    [[StampivityAlertMessage sharedInstance]stampivityAlert:@"Coming Soon." withMessage:nil controller:self];
}

-(void)backBtnAction:(id)item
{
    [self.navigationController popViewControllerAnimated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden=NO;
    // testing commit and pushes
}

- (IBAction)continueBtnAction:(UIButton *)sender
{
//    [[StampivityAlertMessage sharedInstance] stampivityAlert:<#(NSString *)#> withMessage:<#(NSString *)#> controller:<#(UIViewController *)#>];
    
}










/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - UITextfield Delegate methods

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField==txtfieldForName && [txtfieldForName.text isEqualToString:@"Name"]) {
        txtfieldForName.text=@"";
    }
    else if (textField==txtFieldForEmail && [txtFieldForEmail.text isEqualToString:@"Email"])
    {
        txtFieldForEmail.text=@"";
    }
    else if (textField==txtFieldForPassword && [txtFieldForPassword.text isEqualToString:@"Password"])
    {
        txtFieldForPassword.text=@"";
        txtFieldForPassword.secureTextEntry=YES;
    }
    else if (textField==txtFieldForPhoneNumber && [txtFieldForPhoneNumber.text isEqualToString:@"Phone number"])
    {
        txtFieldForPhoneNumber.text=@"";
    }
}



-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField==txtfieldForName && txtfieldForName.text.length==0)
    {
        txtfieldForName.text=@"Name";
    }
    else if (textField==txtFieldForEmail && txtFieldForEmail.text.length==0)
    {
        txtFieldForEmail.text=@"Email";
    }
    else if (textField==txtFieldForPassword && txtFieldForPassword.text.length==0)
    {
        txtFieldForPassword.text=@"Password";
        txtFieldForPassword.secureTextEntry=NO;
    }
    else if (textField==txtFieldForPhoneNumber && txtFieldForPhoneNumber.text.length==0)
    {
        txtFieldForPhoneNumber.text=@"Phone number";
    }
}

@end
