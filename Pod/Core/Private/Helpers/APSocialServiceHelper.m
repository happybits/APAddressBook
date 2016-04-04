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

+ (APMessengerType)instantMessengerTypeWithString:(NSString *)string
{
    if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceYahoo])
    {
        return APMessengerTypeYahoo;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceJabber])
    {
        return APMessengerTypeJabber;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceMSN])
    {
        return APMessengerTypeMSN;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceICQ])
    {
        return APMessengerTypeICQ;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceAIM])
    {
        return APMessengerTypeAIM;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceQQ])
    {
        return APMessengerTypeQQ;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceGoogleTalk])
    {
        return APMessengerTypeGoogleTalk;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceSkype])
    {
        return APMessengerTypeSkype;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceFacebook])
    {
        return APMessengerTypeFacebook;
    }
    else if ([string isEqualToString:(__bridge NSString *)kABPersonInstantMessageServiceGaduGadu])
    {
        return APMessengerTypeGaduGadu;
    }
    else
    {
        return APMessengerTypeUnknown;
    }
}

@end