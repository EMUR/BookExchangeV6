//
//  homePage.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "homePage.h"
#import "buyingCategories.h"
#import "sellingCategories.h"

@interface homePage ()

@end

@implementation homePage

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   NSLog(@"(Home Page)Username is %@",self.user.username);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUser:(USER*)newUser{
    if(_user != newUser){_user = newUser;}
}

 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     if ([[segue identifier] isEqualToString:@"buyingCategories"]) {
         [[segue destinationViewController] setUser:_user];
     }
     if ([[segue identifier] isEqualToString:@"sellingCategories"]) {
         [[segue destinationViewController] setUser:_user];
     }
     
 }


@end

