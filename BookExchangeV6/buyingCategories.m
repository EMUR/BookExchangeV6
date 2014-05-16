//
//  buyingCategories.m
//  BookExchangeV6
//
//  Created by David Phan on 5/14/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "buyingCategories.h"
#import "selectedBuyingCategory.h"


@interface buyingCategories ()

@property NSArray *categories;


@end

@implementation buyingCategories

+(NSArray*)allCategories{
    NSArray *allCats = [NSArray arrayWithObjects:@"All Books",@"Accounting",@"Administration of Justice",@"Anthropology",@"Arts",@"Astronomy",@"Automotive Technology",@"Biologoy",@"Buisness",@"Cantonese",@"Career Life Planning",@"Chemistry",@"Child Development",@"Computer Aided Design",@"Computer Information System",@"Counseling",@"Dance",@"Economics",@"Education",@"Engeineering",@"ESL",@"English",@"Enviromental Science",@"Film and Television",@"French",@"Geography",@"Geology",@"German",@"Guidance",@"Health Technology",@"Health",@"Hindi",@"History",@"Human Development",@"Humanities",@"Intercultural Studies",@"International Studies",@"Italian",@"Japanese",@"Journalism",@"Korean",@"Language Arts",@"Learning Assistance",@"Librarty",@"Linguistics",@"Mandarin",@"Manufacturing",@"Mathematics",@"Meterology",@"Music",@"Nursing",@"Nutrition",@"Paralegal",@"Persian",@"Philosophy",@"Photography",@"Physical Education",@"Physics",@"Political Science",@"Pyschology",@"Reading",@"Real Estate",@"Russian",@"Sign Language",@"Skills",@"Social Science",@"Sociology",@"Spanish",@"Speech",@"Theater Arts",@"Vietnamese",@"Women Studies",@"Misc", nil];
    return allCats;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.categories = [buyingCategories allCategories];    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"(BuyingCategories Page)Username is %@",self.user.username);
    
    //This is a test book just to test certian segues
    BOOK *testBook = [[BOOK alloc]init];
    testBook.bookName = @"testbook";
    testBook.author = @"testauthor";
    _user.buyingBooks = [[NSMutableArray alloc] init];
    [_user.buyingBooks insertObject:testBook atIndex:0];

    NSLog(@"%d",[_user.buyingBooks count]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //NSLog(@"%lu",(unsigned long)[self.categories count]);
    return [self.categories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *categoryCell = @"categoryCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:categoryCell];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:categoryCell];
    }
    
    cell.textLabel.text = [self.categories objectAtIndex:indexPath.row];
    
    return cell;
}



/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


 #pragma mark - Navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     if ([[segue identifier] isEqualToString:@"selectBuyingCategory"]) {
         [[segue destinationViewController] setUser:_user];
    }
 }





@end
