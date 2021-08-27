//
//  SeeViewController.m
//  Arogyaa
//
//  Created by Admin on 27/08/21.
//

#import "SeeViewController.h"
#import "LabCollectionViewCell.h"

@interface SeeViewController ()
{
        NSArray *OneArray;
}
@end

@implementation SeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    OneArray=@[@"$ 120",@"$ 300",@"$ 130",@"$ 120"];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return 1;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [OneArray count];
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    LabCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LabCollectionViewCell" forIndexPath:indexPath];
         
   cell.PriceLabel.text = [OneArray objectAtIndex:indexPath.row];
    
    cell.CellView.layer.cornerRadius = 10.0f;
    
    
    return cell;
  
}
- (void)collectionView:(UICollectionView *)collectionView
   willDisplayCell:(UICollectionViewCell *)cell
forItemAtIndexPath:(NSIndexPath *)indexPath;
{
    //1. Define the initial state (Before the animation)
    cell.transform = CGAffineTransformMakeTranslation(0.f, 50.0f);
      cell.layer.shadowColor = [[UIColor blackColor]CGColor];
      cell.layer.shadowOffset = CGSizeMake(10, 10);
      cell.alpha = 0;

      //2. Define the final state (After the animation) and commit the animation
      [UIView beginAnimations:@"rotation" context:NULL];
    
      [UIView setAnimationDuration:0.5];
    
      cell.transform = CGAffineTransformMakeTranslation(0.f, 0);
      cell.alpha = 1;
      cell.layer.shadowOffset = CGSizeMake(0, 0);
      [UIView commitAnimations];
    
}
  
- (CGSize)collectionView:(UICollectionView *)collectionView layout:   (UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath* )indexPath
{
    if ([[UIScreen mainScreen] bounds].size.height==568)
        
    {
         return CGSizeMake(146,140);
    }
    else if ([[UIScreen mainScreen] bounds].size.height==667)//6
    {
         return CGSizeMake(156,140);
    }
    
    else if ([[UIScreen mainScreen] bounds].size.height==736)//8plus
        
    {
         return CGSizeMake(180,140);
    }
    
    else if ([[UIScreen mainScreen] bounds].size.height==812)//11pro
        
    {
         return CGSizeMake(161.5,140);
    }
    else if ([[UIScreen mainScreen] bounds].size.height==896)
        
    {
         return CGSizeMake(181,140);
    }
    else
        
    {
         return CGSizeMake(176,140);
    }
    
}
- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

{
    
    
}
- (IBAction)NotiAction:(id)sender {
    
}

- (IBAction)LocationACtion:(id)sender {
}

- (IBAction)BackAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
