//
//  LoginWithEmailViewController.m
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 1/30/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import "LoginWithEmailViewController.h"

@interface LoginWithEmailViewController ()

@end

@implementation LoginWithEmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    

    
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setUserInteractionEnabled:YES];
    [leftButton setImage:[UIImage imageNamed:@"back-button-image"] forState:UIControlStateNormal];
    leftButton.frame = CGRectMake(0, 0, 30, 30);
    [leftButton addTarget:self action:@selector(YourclickeventClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor whiteColor]];
    
    self.title=@"SIGN IN";
    
    
    
    
//    txtFieldForEmailAddress.leftViewMode = UITextFieldViewModeAlways;
//    txtFieldForEmailAddress.leftView =imgViewForEmailtxtField; //[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"back-button-image"]];
    
}





-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden=NO;
    
    
    
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(void)YourclickeventClick:(id)item
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma Textfield delegate methods

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (txtFieldForPassword==textField)
    {
        if ([txtFieldForPassword.text isEqualToString:@"Password"]) {
            txtFieldForPassword.secureTextEntry=YES;
            txtFieldForPassword.text=@"";
        }
    }
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField==txtFieldForPassword)
    {
        if (txtFieldForPassword.text.length==0)
        {
            txtFieldForPassword.text=@"Password";
            txtFieldForPassword.secureTextEntry=NO;
        }
    }
}

@end
