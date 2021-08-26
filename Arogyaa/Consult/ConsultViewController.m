//
//  ConsultViewController.m
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import "ConsultViewController.h"
#import "consultTableViewCell.h"

@interface ConsultViewController ()
{
    NSArray* ShowDocArray;
}
@end

@implementation ConsultViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backAction:(id)sender
{
     [self.navigationController popViewControllerAnimated:YES];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    consultTableViewCell *cellAnsh=[tableView dequeueReusableCellWithIdentifier:@"consultTableViewCell"];
    
    if(cellAnsh == nil)
        
    {
        cellAnsh =[[consultTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                               reuseIdentifier:@"consultTableViewCell"];
    }
    
    cellAnsh.CellVieww.layer.cornerRadius = 8.0f;
    cellAnsh.CellVieww.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    cellAnsh.CellVieww.layer.shadowOffset = CGSizeMake(3, 3);
    cellAnsh.CellVieww.layer.shadowOpacity = 1;
    cellAnsh.CellVieww.layer.shadowRadius = 3;
    cellAnsh.CellVieww.layer.masksToBounds = NO;
    
    return cellAnsh;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
          return 226;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
  
    
}
@end
