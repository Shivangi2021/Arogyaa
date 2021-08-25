//
//  CountryListViewController.m
//  Country List
//
//  Created by Pradyumna Doddala on 18/12/13.
//  Copyright (c) 2013 Pradyumna Doddala. All rights reserved.
//

#import "CountryListViewController.h"
#import "CountryListDataSource.h"
#import "CountryCell.h"

@interface CountryListViewController ()<UITextFieldDelegate>
{
    BOOL isfiltred;
         
       NSMutableArray *filtredString;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *Donebtnn;
@property (weak, nonatomic) IBOutlet UITextField *SearchText;
@property (strong, nonatomic) NSArray *dataRows;
@end

@implementation CountryListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil delegate:(id)delegate
{
    self = [super initWithNibName:nibNameOrNil bundle:nil];
    if (self) {
        // Custom initialization
        _delegate = delegate;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
      _SearchText.delegate = self;
    
    CountryListDataSource *dataSource = [[CountryListDataSource alloc] init];
    _dataRows = [dataSource countries];
    [_tableView reloadData];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (isfiltred)
       {
           return [filtredString count];
       }
       else
       {
           return [self.dataRows count];
       }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    CountryCell *cell = (CountryCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil)
    {
        cell = [[CountryCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    if (isfiltred)
           {
               cell.textLabel.text = [[filtredString objectAtIndex:indexPath.row] valueForKey:@"name"];
               cell.detailTextLabel.text = [[filtredString objectAtIndex:indexPath.row] valueForKey:kCountryCallingCode];
           }
    else
    {
    cell.textLabel.text = [[_dataRows objectAtIndex:indexPath.row] valueForKey:kCountryName];
    cell.detailTextLabel.text = [[_dataRows objectAtIndex:indexPath.row] valueForKey:kCountryCallingCode];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (isfiltred)
  {
              
    if ([_delegate respondsToSelector:@selector(didSelectCountry:)]) {
           [self.delegate didSelectCountry:[filtredString objectAtIndex:[_tableView indexPathForSelectedRow].row]];
           [self dismissViewControllerAnimated:YES completion:NULL];
       } else {
           NSLog(@"CountryListView Delegate : didSelectCountry not implemented");
       }
                       
     }
    else
    {
    if ([_delegate respondsToSelector:@selector(didSelectCountry:)]) {
        [self.delegate didSelectCountry:[_dataRows objectAtIndex:[_tableView indexPathForSelectedRow].row]];
        [self dismissViewControllerAnimated:YES completion:NULL];
    } else {
        NSLog(@"CountryListView Delegate : didSelectCountry not implemented");
    }
    }
}
- (BOOL)textField:(UITextField *)textField1 shouldChangeCharactersInRange:(NSRange )range replacementString:(NSString *)string
{
    
    NSString *searchString;
    if (string.length > 0)
    {
        searchString = [NSString stringWithFormat:@"%@%@",textField1.text, string];
    }
    else
    {
        searchString = [textField1.text substringToIndex:[textField1.text length] - 1];
    }
    
    if (searchString.length==0)
    {
        isfiltred=NO;
        
        _tableView.hidden = NO;
    }
    else
    {
        
        _tableView.hidden = NO;
        
        isfiltred=YES;
        
        
        
        filtredString=[[NSMutableArray alloc]init];
        
        
        
        
                    NSPredicate *bPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@ ",searchString];
        
//        NSPredicate *bPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@ OR sub_category contains[c] %@", searchString, searchString];;
        
        
        NSArray *filterdArray = [_dataRows filteredArrayUsingPredicate:bPredicate];
        
        NSLog(@"HERE %@",filterdArray);
        
        filtredString = [[NSMutableArray arrayWithArray:filterdArray]mutableCopy];
        
        NSLog(@"Filterdata %@",filtredString);
        
        [_tableView reloadData];
        
        
    }
    
    return YES;
}
#pragma mark - UITableView Delegate methods



#pragma mark -
#pragma mark Actions

- (IBAction)done:(id)sender
{
//    if ([_delegate respondsToSelector:@selector(didSelectCountry:)])
//    {
//        [self.delegate didSelectCountry:[_dataRows objectAtIndex:[_tableView indexPathForSelectedRow].row]];
//        [self dismissViewControllerAnimated:YES completion:NULL];
//    }
//    else
//    {
//        NSLog(@"CountryListView Delegate : didSelectCountry not implemented");
//    }
}

@end
