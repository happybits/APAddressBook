//
//  APName 
//  APAddressBook
//
//  Created by Alexey Belkevich on 05.10.15.
//  Copyright © 2015 alterplay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APName : NSObject

@property (nullable, nonatomic, strong) NSString *firstName;
@property (nullable, nonatomic, strong) NSString *lastName;
@property (nullable, nonatomic, strong) NSString *firstNamePhonetic;
@property (nullable, nonatomic, strong) NSString *lastNamePhonetic;
@property (nullable, nonatomic, strong) NSString *middleName;
@property (nullable, nonatomic, strong) NSString *middleNamePhonetic;
@property (nullable, nonatomic, strong) NSString *compositeName;
@property (nullable, nonatomic, strong) NSString *prefix;
@property (nullable, nonatomic, strong) NSString *suffix;
@property (nullable, nonatomic, strong) NSString *nickname;

@end