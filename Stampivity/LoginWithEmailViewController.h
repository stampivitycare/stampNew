//
//  LoginWithEmailViewController.h
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 1/30/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginWithEmailViewController : UIViewController<UITextFieldDelegate>
{
    
    IBOutlet UITextField *txtFieldForEmailAddress;
    IBOutlet UITextField *txtFieldForPassword;
    
    IBOutlet UIImageView *imgViewForEmailtxtField;
}
@end
