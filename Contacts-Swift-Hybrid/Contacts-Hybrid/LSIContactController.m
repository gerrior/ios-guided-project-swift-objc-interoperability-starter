//
//  LSIContactController.m
//  Contacts-Hybrid
//
//  Created by Mark Gerrior on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "LSIContactController.h"
//#import "Contact.swift" // Error: Doesn't work!

// Use the autogenerated swift header for our classes
// Use _ for any -, special character, or space
// #import "ProjectName-Swift.h"

#import "Contacts_Hybrid-Swift.h"

@implementation LSIContactController

// lazy array

// My instance variable (_contacts) doesn't exist because we made our property readonly

// When getter is overridden and we use readonly, we need to tell compiler to make
// a "backing" instance variable named _contacts
@synthesize contacts = _contacts;
// Getter
- (NSArray<Contact *> *)contacts {
    if (!_contacts) {
        _contacts = @[
            // Create test data (remove it later)
            [[Contact alloc] initWithName:@"Paul" relationship:@"Me"],
            [[Contact alloc] initWithName:@"Steph" relationship:@"Wife"],
        ];
    }
    return _contacts;
}

// init
- (instancetype)init {
    self = [super init];
    if (self) {

    }
    return self;
}

@end
