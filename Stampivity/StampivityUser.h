//
//  StampivityUser.h
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/8/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface StampivityUser : PFUser <PFSubclassing>

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) PFFile *displayPic;
@property (nonatomic, strong) NSString *displayName;
@property (nonatomic, strong) NSNumber *userType;

+(StampivityUser*)currentUser;


@end
