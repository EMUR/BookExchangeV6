//
//  BOOK.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "BOOK.h"

@implementation BOOK

-(NSComparisonResult) comparePrice:(BOOK *)compareBook{
    return [self.price compare:compareBook.price];
}

-(NSComparisonResult) compareCondition:(BOOK *)compareBook{
    if(compareBook.condition < self.condition){
        return NSOrderedDescending;
    }
    else if(compareBook.condition > self.condition) {
        return NSOrderedAscending;
    }
    else return NSOrderedSame;
}

@end
