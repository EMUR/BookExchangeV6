//
//  NewUserPage.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "NewUserPage.h"
#include <objc/runtime.h>

@interface NewUserPage ()



@property (weak, nonatomic) IBOutlet UITextField *userNameInput;
@property (weak, nonatomic) IBOutlet UITextField *firstNameInput;
@property (weak, nonatomic) IBOutlet UITextField *lastNameInput;
@property (weak, nonatomic) IBOutlet UITextField *emailInput;
@property (weak, nonatomic) IBOutlet UITextField *deAnzaInput;
@property (weak, nonatomic) IBOutlet UITextField *phoneInput;
@property (weak, nonatomic) IBOutlet UITextField *facebookInput;
@property (weak, nonatomic) IBOutlet UITextField *twitterInput;


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
    
    bool hasBadChar = [self checkForBadChars:self.userNameInput.text];
    bool hasBadNum = [self checkForBadNum:self.phoneInput.text];
    
    
    if ([self.userNameInput.text  isEqual: @""] || hasBadChar) {
        [self textFieldInvalid:self.userNameInput];
    }else{
        [self textFieldNormal:self.userNameInput];
    }
    
    if ([self.firstNameInput.text  isEqual: @""]) {
        [self textFieldInvalid:self.firstNameInput];
    }
    
    if ([self.lastNameInput.text  isEqual: @""]) {
        [self textFieldInvalid:self.lastNameInput];
    }
    
    if ([self.phoneInput.text  isEqual: @""] || hasBadNum) {
        [self textFieldInvalid:self.phoneInput];
    }else{
        [self textFieldNormal:self.phoneInput];
    }
    
    if ([self.deAnzaInput.text  isEqual: @""]) {
        [self textFieldInvalid:self.deAnzaInput];
    }
    
    if ([self.emailInput.text  isEqual: @""]) {
        [self textFieldInvalid:self.emailInput];
    }
    
    
}





/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end