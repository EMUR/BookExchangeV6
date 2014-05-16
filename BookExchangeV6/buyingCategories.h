//
//  buyingCategories.h
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USER.h"

@class selectedBuyingCategory;

@interface buyingCategories : UITableViewController

@property (strong, nonatomic) USER* user;
@property (strong, nonatomic) selectedBuyingCategory* selctedBuyingCategory;
+(NSArray*)allCategories;


@end
