//
//  USER.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "USER.h"
#import "BOOK.h"

@implementation USER : NSObject



-(void) add_book:(BOOK *)newBook :(BOOL *)isSelling{
    
    if (isSelling) {
        [self.selling_books addObject:newBook];
    }else{
        [self.buying_books addObject:newBook];
    }
    
    
}

-(void) remove_book{
    
    
}


@end
