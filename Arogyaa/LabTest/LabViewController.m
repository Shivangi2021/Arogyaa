//
//  LabViewController.m
//  Arogyaa
//
//  Created by Admin on 26/08/21.
//

#import "LabViewController.h"
#import "LabCollectionViewCell.h"
#import "SeeViewController.h"

@interface LabViewController ()
{
    NSArray *OneArray;
    NSArray *TwoArray;
    NSArray *ThreeArray;
    
}
@end

@implementation LabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _moreLabButton.layer.cornerRadius = 6.0f;
    
    OneArray=@[@"$ 120",@"$ 300",@"$ 130",@"$ 120"];
    
    TwoArray=@[@"Test Name",@"Test Name",@"Test Name",@"Test Name",@"Test Name",@"Test Name",@"Test Name"];
    
    ThreeArray=@[@"Test Name",@"Test Name",@"Test Name",@"Test Name"];
    
    
    _SearchView.layer.cornerRadius = 10.0f;
    _SearchView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    _SearchView.layer.shadowOffset = CGSizeMake(3, 3);
    _SearchView.layer.shadowOpacity = 1;
    _SearchView.layer.shadowRadius = 3;
    _SearchView.layer.masksToBounds = NO;
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return 1;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView == _CheckupCollect)
    {
        
    return [OneArray count];
        
    }
    else  if (collectionView == _TestCollect)
    
    {
        return [TwoArray count];
    }
    else
    {
        return [ThreeArray count];
    }
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == _CheckupCollect)
    {
        
        
    LabCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"LabCollectionViewCell" forIndexPath:indexPath];
         
   cell.PriceLabel.text = [OneArray objectAtIndex:indexPath.row];
    
 //   cell.CellImage.image = [UIImage imageNamed:ImageArray[indexPath.row]];
    
    
    cell.CellView.layer.cornerRadius = 10.0f;
    
    
    return cell;
    }
    else if (collectionView == _TestCollect)
        
    {
        LabCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TestCell" forIndexPath:indexPath];
             
       cell.TwoLabel.text = [TwoArray objectAtIndex:indexPath.row];
        
//        cell.CellImagee.image = [UIImage imageNamed:NameArray[indexPath.row]];
//
//        cell.CellImagee.layer.cornerRadius =6.0f;
//        cell.CellImagee.layer.masksToBounds =YES;
//
        cell.contentView.layer.cornerRadius =6.0f;
        cell.contentView.layer.masksToBounds =YES;
        
        cell.contentView.layer.cornerRadius = 10.0f;
        
        
        return cell;
    }
    else  if (collectionView == _ConditionCollect)
    
        
    {
        LabCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ConditionCell" forIndexPath:indexPath];
             
        cell.ThreeNameLabel.text = [ThreeArray objectAtIndex:indexPath.row];
        
//        cell.CellImagee.image = [UIImage imageNamed:NameArray[indexPath.row]];
        
        cell.CellView.layer.cornerRadius =5.0f;
    cell.CellView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.CellView.layer.shadowOffset = CGSizeMake(3, 3);
        cell.CellView.layer.shadowOpacity = 1;
        cell.CellView.layer.shadowRadius = 3;
        cell.CellView.layer.masksToBounds = NO;
                                
        return cell;
    }
    
    else
        
    {
        LabCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PartnerCell" forIndexPath:indexPath];
             
        cell.FourNameLabel.text = [ThreeArray objectAtIndex:indexPath.row];
        
//        cell.CellImagee.image = [UIImage imageNamed:NameArray[indexPath.row]];
        
        cell.FourVieww.layer.cornerRadius =60.0f;
    cell.FourVieww.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.FourVieww.layer.shadowOffset = CGSizeMake(3, 3);
        cell.FourVieww.layer.shadowOpacity = 1;
        cell.FourVieww.layer.shadowRadius = 3;
        cell.FourVieww.layer.masksToBounds = NO;
                                
        return cell;
    }
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
    
    if (collectionView == _CheckupCollect)
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
    else  if (collectionView == _TestCollect)
    {
        if ([[UIScreen mainScreen] bounds].size.height==568)
            
        {
             return CGSizeMake(80,80);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==667)//6
        {
            return CGSizeMake(80,80);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==736)//8plus
            
        {
            return CGSizeMake(80,80);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==812)//11pro
            
        {
            return CGSizeMake(80,80);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==896)
            
        {
            return CGSizeMake(80,80);
        }
        else
            
        {
            return CGSizeMake(80,80);
        }
      }
    else
    {
        if ([[UIScreen mainScreen] bounds].size.height==568)
            
        {
             return CGSizeMake(128,130);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==667)//6
        {
            return CGSizeMake(128,130);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==736)//8plus
            
        {
            return CGSizeMake(128,130);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==812)//11pro
            
        {
            return CGSizeMake(128,130);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==896)
            
        {
            return CGSizeMake(128,130);
        }
        else
            
        {
            return CGSizeMake(128,130);
        }
      }
}
- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

{
    
    
}

- (IBAction)BackAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)LocaAction:(id)sender
{
    
}

- (IBAction)NotiAction:(id)sender
{
    
}
- (IBAction)SeeMoreOne:(id)sender
{
    SeeViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"SeeViewController"];

       [self.navigationController pushViewController:add animated:YES];
}
@end
