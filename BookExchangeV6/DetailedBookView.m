//
//  DetailedBookView.m
//  BookExchangeV6
//
//  Created by David Phan on 5/16/14.
//  Copyright (c) 2014 David Phan. All rights reserved.
//

#import "DetailedBookView.h"

@interface DetailedBookView ()

@property (weak, nonatomic) IBOutlet UILabel *testBookName;
@property (weak, nonatomic) IBOutlet UILabel *testAuthorName;

@end

@implementation DetailedBookView

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
    NSLog(@"(DetailBookView Page)Bookname is %@",self.book.bookName);
    self.testBookName.text = _book.bookName;
    self.testAuthorName.text = _book.author;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setBook:(BOOK*)newBook{
    if(_book != newBook){_book = newBook;}
    [self viewDidLoad];
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
