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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
