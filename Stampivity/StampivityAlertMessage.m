//
//  StampivityAlertMessage.m
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/8/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import "StampivityAlertMessage.h"

@implementation StampivityAlertMessage

+(id)sharedInstance
{
    static StampivityAlertMessage *sharedMymanager=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMymanager = [[self alloc] init];
    });
    return sharedMymanager;
}
-(id)init{
    if (self = [super init]) {
        
    }
    return self;
}
-(void)stampivityAlert:(NSString *)Title withMessage:(NSString *)message controller:(UIViewController *)controller
{
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:Title
                                  message:message
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        //do something when click button
        
    }];
    
    [alert addAction:okAction];
    
    [controller presentViewController:alert animated:YES completion:nil];
}


@end
