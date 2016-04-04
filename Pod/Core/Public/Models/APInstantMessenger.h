//
//  APInstantMessenger.h
//  AddressBook
//
//  Created by Joel Drotleff on 4/4/16.
//  Copyright © 2016 alterplay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APTypes.h"

@interface APInstantMessenger : NSObject

@property (nonatomic, assign) APMessengerType messenger;
@property (nullable, nonatomic, strong) NSString *username;

@end
