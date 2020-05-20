//
//  LSIContactController.h
//  Contacts-Hybrid
//
//  Created by Mark Gerrior on 5/18/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// Previous versions of Xcode (<11.4) have failed to compile.
// May see a build cycle error or something (buggy)
//@class LSIContact;
@class Contact;

NS_SWIFT_NAME(ContactController)
@interface LSIContactController : NSObject

// Using lightweight generics to provide type information (so it's easier to use in Swift)
// [Any] -> [Contact]

// default: [Contact]!

// nullable          [Contact]?
// nonnull           [Contact]
// null_resettable   [Contact]?
// null_unspecified* [Contact]!


@property (nonatomic, readonly, nonnull) NSArray<Contact *> *contacts;  // default property/variable value is nil or 0

@end
