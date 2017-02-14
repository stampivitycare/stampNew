//
//  StampivityAlertMessage.h
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/8/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//@class UIViewController;
//@class UIAlertController;
@interface StampivityAlertMessage : NSObject

+(id)sharedInstance;

-(void)stampivityAlert:(NSString*)Title withMessage:(NSString *)message controller:(UIViewController*)controller;

@end
