//
//  ViewController.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "ViewController.h"
#import "homePage.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     NSLog(@"(Login Page)Username is %@",self.user.username);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)userNameInputReturn:(id)sender {
    [sender resignFirstResponder];
}

-(void)setUser:(USER*)newUser{
    if(_user != newUser){_user = newUser;}
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"logIn"]) {
        [[segue destinationViewController] setUser:_user];
        
    }
}

@end

