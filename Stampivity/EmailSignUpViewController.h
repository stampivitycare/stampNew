//
//  EmailSignUpViewController.h
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/14/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmailSignUpViewController : UIViewController <UITextFieldDelegate>
{
    
    IBOutlet UITextField *txtfieldForName;
    IBOutlet UIImageView *imgViewForNameIcon;
    IBOutlet UITextField *txtFieldForEmail;
    
    IBOutlet UITextField *txtFieldForPassword;
    
    IBOutlet UITextField *txtFieldForPhoneNumber;
    
    IBOutlet UILabel *lblForTermsConditions;
    
    
    
}
@end
