//
//  StampivityUser.m
//  Stampivity
//
//  Created by Sai kumar Gourishetty on 2/8/17.
//  Copyright © 2017 betabulls. All rights reserved.
//

#import "StampivityUser.h"

@implementation StampivityUser

@dynamic userName;
@dynamic displayName;
@dynamic displayPic;
@dynamic email;
@dynamic userType;

+(StampivityUser*)currentUser
{
    return (StampivityUser*)[PFUser currentUser];
}

@end
