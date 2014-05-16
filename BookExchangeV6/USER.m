//
//  USER.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "USER.h"


@implementation USER : NSObject
@synthesize username = _username;


- (void) setUsername:(NSString *)userName{
    if ([self checkForBadChars:userName]){
        _username = nil;
    }else _username = userName;
}

- (NSString*) username {
    if (_username == nil || [_username  isEqual: @""]) {
        return @"Invalid Username";
    }else return _username;
}








+(NSCharacterSet*)badChars{
    return [[NSCharacterSet alphanumericCharacterSet] invertedSet];
}

+(NSCharacterSet*)badNumber{
    return [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
}

-(BOOL)checkForBadChars:(NSString*)stringCheck{
    BOOL badCharCheck = YES;
    NSRange badCharRange = [stringCheck rangeOfCharacterFromSet:[USER badChars]];
    if (badCharRange.location == NSNotFound) {
        badCharCheck = NO;
    }
    return badCharCheck;
}

-(BOOL)checkForBadNum:(NSString*)numCheck{
    BOOL badNumCheck = YES;
    NSRange badNumRange = [numCheck rangeOfCharacterFromSet:[USER badNumber]];
    if (badNumRange.location == NSNotFound) {
        badNumCheck = NO;
    }
    return badNumCheck;
}



-(void) add_book:(BOOK *)newBook :(BOOL *)isSelling{
    
    if (isSelling) {
        [self.sellingBooks addObject:newBook];
    }else{
        [self.buyingBooks addObject:newBook];
    }
    
    
}

-(void) remove_book{
    
    
}


@end
