//
//  NewUserPage.h
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USER.h"

@class ViewController;

@interface NewUserPage : UIViewController

@property (strong,nonatomic) USER *user;
@property (strong,nonatomic) ViewController *viewController;

@end
