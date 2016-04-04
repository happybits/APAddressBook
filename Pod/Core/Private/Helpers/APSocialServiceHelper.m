//
//  APSocialServiceHelper 
//  AddressBook
//
//  Created by Alexey Belkevich on 22.09.15.
//  Copyright © 2015 alterplay. All rights reserved.
//

#import <AddressBook/AddressBook.h>
#import "APSocialServiceHelper.h"

@implementation APSocialServiceHelper

+ (APSocialNetworkType)socialNetworkTypeWithString:(NSString *)string
{
    if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceFacebook])
    {
        return APSocialNetworkFacebook;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceTwitter])
    {
        return APSocialNetworkTwitter;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceLinkedIn])
    {
        return APSocialNetworkLinkedIn;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceFlickr])
    {
        return APSocialNetworkFlickr;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceGameCenter])
    {
        return APSocialNetworkGameCenter;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceGameCenter])
    {
        return APSocialNetworkGameCenter;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceMyspace])
    {
        return APSocialNetworkMySpace;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonSocialProfileServiceSinaWeibo])
    {
        return APSocialNetworkSinaWeibo;
    }
    else
    {
        return APSocialNetworkUnknown;
    }
}

@end