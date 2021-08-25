//
//  MenuViewController.m
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import "MenuViewController.h"
#import "menuTableViewCell.h"
#import "SWRevealViewController.h"

@interface MenuViewController ()
{
NSArray *cellimgarray;
NSArray *celllabelarray;
    NSString *DidSelect;
}
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    celllabelarray= [[NSArray alloc]initWithObjects:@"Consult Now",@"Lat Test",@"Previous",@"Payment history",@"Setting",@"Help & Support",@"Logout",nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return [celllabelarray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    menuTableViewCell *cellAnsh=[tableView dequeueReusableCellWithIdentifier:@"menuTableViewCell"];
    
    if(cellAnsh == nil)
        
    {
        cellAnsh =[[menuTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                               reuseIdentifier:@"menuTableViewCell"];
    }
    
    cellAnsh.CellLabel.text =[celllabelarray objectAtIndex:indexPath.row];
    
 //   cellAnsh.CellImage.image =[UIImage imageNamed: [cellimgarray objectAtIndex:indexPath.row]];
    
    return cellAnsh;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    SWRevealViewController *add = [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];
                     [self.navigationController pushViewController:add animated:YES];
               
     NSString *saveeee = @"yessss";
      [[NSUserDefaults standardUserDefaults] setObject:saveeee forKey:@"logoutstatus"];
      [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
