//
//  USER.h
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BOOK.h"

@interface USER : NSObject

// This is a comment
//second comment 
@property (strong) NSString *username;
@property (strong) NSString *userID;
@property (strong) NSString *firstName;
@property (strong) NSString *lastName;
@property (strong) NSString *phoneNumber;
@property (strong) NSString *email;
@property NSInteger *reputaion;
@property (strong) NSURL *facebook;
@property (strong) NSURL *twittwer;
@property (strong) UIImage *profile_pic;
@property (strong) NSMutableArray *sellingBooks;
@property (strong) NSMutableArray *buyingBooks;


@end
