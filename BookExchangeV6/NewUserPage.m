//
//  NewUserPage.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "NewUserPage.h"
#import "ViewController.h"
#include <objc/runtime.h>


@interface NewUserPage () 

@property BOOL validUser;

@property (weak, nonatomic) IBOutlet UITextField *userNameInput;
@property (weak, nonatomic) IBOutlet UITextField *firstNameInput;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInput;
@property (weak, nonatomic) IBOutlet UITextField *emailInput;
@property (weak, nonatomic) IBOutlet UITextField *deAnzaInput;
@property (weak, nonatomic) IBOutlet UITextField *phoneInput;
@property (weak, nonatomic) IBOutlet UITextField *facebookInput;
@property (weak, nonatomic) IBOutlet UITextField *twitterInput;


@property (weak, nonatomic) IBOutlet UILabel *testLabel;


@property (weak, nonatomic) IBOutlet UIScrollView *scroller;
@property (weak, nonatomic) IBOutlet UIButton *createUserButton;


@end

@implementation NewUserPage

+(NSCharacterSet*)badChars{
    return [[NSCharacterSet alphanumericCharacterSet] invertedSet];
}

+(NSCharacterSet*)badNumber{
    return [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
}

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
    self.scroller.contentSize = CGSizeMake(320, 600);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnKeyboard:(id)sender {
    [sender resignFirstResponder];
}

//Set Text field text color to red if invalid input
-(void)textFieldInvalid:(UITextField*)textField{
    [textField setTextColor:[UIColor redColor]];
    textField.text = @"Invalid Input";
    
}

//set textfield color back to normal
-(void)textFieldNormal:(UITextField*)textField{
    [textField setTextColor:[UIColor blackColor]];
}



-(BOOL)checkForBadChars:(NSString*)stringCheck{
    BOOL badCharCheck = YES;
    NSRange badCharRange = [stringCheck rangeOfCharacterFromSet:[NewUserPage badChars]];
    if (badCharRange.location == NSNotFound) {
        badCharCheck = NO;
    }
    return badCharCheck;
}

-(BOOL)checkForBadNum:(NSString*)numCheck{
    BOOL badNumCheck = YES;
    NSRange badNumRange = [numCheck rangeOfCharacterFromSet:[NewUserPage badNumber]];
    if (badNumRange.location == NSNotFound) {
        badNumCheck = NO;
    }
    return badNumCheck;
}

/*   ----write method to iterate through properties and do checks
 ----insead of having to do each check manually
 -(void)checkBadInputs:(NewUserPage*)this{
 unsigned int count = 0;
 objc_property_t *properties = class_copyPropertyList([this class], &count);
 for (unsigned int i =0; i < 3; i++) {
 const char *name = property_getName(properties[i]);
 NSLog(@"property %d: %s",i,name);
 }
 free( properties);
 }
 */

- (IBAction)createUser:(id)sender {
    
    // [self checkBadInputs:self];
    
    if(!_user){
        _user = [[USER alloc] init];
    }
    _user.username = self.userNameInput.text;
    _user.firstName = self.firstNameInput.text;
    _user.lastName = self.lastNameInput.text;
    _user.email = self.emailInput.text;
    _user.userID = self.deAnzaInput.text;
    
     //NSLog(@"Username input is %@",self.userNameInput.text);
    self.testLabel.text = _user.username ;
    self.userNameInput.text = _user.username;
   
    //[self performSegueWithIdentifier:@"createdNewUser" sender:self];

    
    
    
}






 #pragma mark - Navigation
 

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     if ([[segue identifier] isEqualToString:@"createdNewUser"]) {
         [[segue destinationViewController] setUser:_user];

     }
 }
 

@end