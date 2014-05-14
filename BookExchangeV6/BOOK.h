//
//  BOOK.h
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import <Foundation/Foundation.h>

enum BookCondition{
    TERRIBLE = 1,
    POOR,
    FAIR,
    GOOD,
    EXCELLENT
};
typedef enum BookCondition BookCondition;

@interface BOOK : NSObject

@property (strong) NSString *bookName;
@property (strong) NSString *author;
@property BookCondition *condition;
@property (strong) NSString *course;
@property (strong) NSDecimalNumber *price;
@property (strong) NSString *contactInfo;

-(NSComparisonResult) comparePrice:(BOOK*) compareBook;
-(NSComparisonResult) compareCondition:(BOOK*) compareBook;

@end
