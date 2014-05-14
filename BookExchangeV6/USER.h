//
//  USER.h
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface USER : NSObject

@property (strong) NSString *username;
@property (strong) NSString *userID;
@property (strong) NSString *first_name;
@property (strong) NSString *last_name;
@property (strong) NSString *phone_number;
@property (strong) NSString *email;
@property NSInteger *reputaion;
@property (strong) NSURL *facebook;
@property (strong) NSURL *twittwer;
@property (strong) UIImage *profile_pic;
@property (strong) NSMutableArray *selling_books;
@property (strong) NSMutableArray *buying_books;


@end
