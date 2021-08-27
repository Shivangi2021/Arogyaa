//
//  HomeViewController.m
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import "HomeViewController.h"
#import "SymptomCollectionViewCell.h"
#import "topCollectionViewCell.h"
#import "HospitalCollectionViewCell.h"
#import "SWRevealViewController.h"
#import "LoginViewController.h"
#import "ConsultViewController.h"
#import "LabViewController.h"

@interface HomeViewController ()
{
    NSArray *NameArray;
    BOOL isSelected;
    NSArray *ImageArray;
    NSArray *HospitalArray;
}

@property (strong, nonatomic) NSMutableArray *profile;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customSetup];
      [self CustomSetupsss];
    
          _profile = [[NSMutableArray alloc] initWithObjects: @"banner1" , @"banner2", @"banner3", nil];
    
    ImageArray=@[@"Brain and Nerves",@"gynecologist",@"Lungs and Breathing",@"Ear Nose Throat",@"Physiotherapy"];
    
    HospitalArray=@[@"Brain and Nerves",@"gynecologist",@"Lungs and Breathing",@"Ear Nose Throat",@"Physiotherapy"];
    
    NameArray=@[@"doctor1",@"doctor2",@"doctor3",@"doctor4"];
    
    _SliderVieww.slides = _profile;
            _SliderVieww.delegate = self;
    
            [_SliderVieww setupSliderView];
    
    _LabButton.layer.cornerRadius = 6.0f;
    _SeemoreButton.layer.cornerRadius = 6.0f;
    
    NSString *defaultesss = [[NSUserDefaults standardUserDefaults]
                                      stringForKey:@"logoutstatus"];
             
             if ([defaultesss isEqualToString:@"yessss"])
             {
                 _BlurImage.hidden=NO;
                 _LogOutView.hidden=NO;
                 
                 NSString *saveeee = @"no";
                 [[NSUserDefaults standardUserDefaults] setObject:saveeee forKey:@"logoutstatus"];
                 [[NSUserDefaults standardUserDefaults] synchronize];
             }
             
             else
                 
             {
          _BlurImage.hidden=YES;
                 _LogOutView.hidden=YES;
                 
                 
                 
                 NSString *saveeee = @"no";
                 [[NSUserDefaults standardUserDefaults] setObject:saveeee forKey:@"logoutstatus"];
                 [[NSUserDefaults standardUserDefaults] synchronize];
                 
             }
    
}

- (void)sbslider:(SliderBanner *)sbslider didTapOnImage:(UIImage *)targetImage andParentView:(UIImageView *)targetView
{

//    HomeScreen *add = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeScreen"];
//[[NSUserDefaults standardUserDefaults] setObject:@"Yes" forKey:@"SliderrSuccess"];
//[self.navigationController pushViewController:add animated:YES];

}

- (void)customSetup
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        
        
        [_MenuButton addTarget:revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
        
        SWRevealViewController *revealViewController = [self revealViewController];
    }
    
}
-(void)CustomSetupsss
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        
        [_BlurImage addTarget:revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.navigationController.navigationBar addGestureRecognizer:revealViewController.panGestureRecognizer];
         
        SWRevealViewController *revealViewController = [self revealViewController];
    }
    
}
- (IBAction)LocationAction:(id)sender
{
    
}
- (IBAction)HomeAction:(id)sender
{
    
}

- (IBAction)ConsultACtion:(id)sender
{
    ConsultViewController *add =
       [self.storyboard instantiateViewControllerWithIdentifier:@"ConsultViewController"];
  
       [self.navigationController pushViewController:add animated:YES];
}

- (IBAction)ProfileACtion:(id)sender
{
    
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return 1;
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView == _SymptomCollect)
    {
        
    return [ImageArray count];
        
    }
    else  if (collectionView == _TopCollect)
    
    {
        return [NameArray count];
    }
    else
    {
        return [HospitalArray count];
    }
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == _SymptomCollect)
    {
        
        
    SymptomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SymptomCollectionViewCell" forIndexPath:indexPath];
         
    //cell.CellImage.text = [[ImageArray objectAtIndex:indexPath.row];
    
    cell.CellImage.image = [UIImage imageNamed:ImageArray[indexPath.row]];
    
    
    cell.contentView.layer.cornerRadius = 10.0f;
    
    
    return cell;
    }
    else if (collectionView == _TopCollect)
        
    {
        topCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"topCollectionViewCell" forIndexPath:indexPath];
             
        //cell.CellImage.text = [[ImageArray objectAtIndex:indexPath.row];
        
        cell.CellImagee.image = [UIImage imageNamed:NameArray[indexPath.row]];
        
        cell.CellImagee.layer.cornerRadius =6.0f;
        cell.CellImagee.layer.masksToBounds =YES;
        
        cell.CellVieww.layer.cornerRadius =6.0f;
        cell.CellVieww.layer.masksToBounds =YES;
        
        cell.contentView.layer.cornerRadius = 10.0f;
        
        
        return cell;
    }
    else
        
    {
        HospitalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HospitalCollectionViewCell" forIndexPath:indexPath];
             
        cell.NameLabel.text = [HospitalArray objectAtIndex:indexPath.row];
        
//        cell.CellImagee.image = [UIImage imageNamed:NameArray[indexPath.row]];
        
        cell.CellView.layer.cornerRadius =5.0f;
    cell.CellView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.CellView.layer.shadowOffset = CGSizeMake(3, 3);
        cell.CellView.layer.shadowOpacity = 1;
        cell.CellView.layer.shadowRadius = 3;
        cell.CellView.layer.masksToBounds = NO;
                                
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
  

- (void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

{
//    if (collectionView == _SpecialCollect)
//    {
//
//   NSString *SpecialIDDD =  [[_productArrayData objectAtIndex:indexPath.row]valueForKey:@"id"];
//
//    TopDocViewController *add = [self.storyboard instantiateViewControllerWithIdentifier:@"TopDocViewController"];
//    add.SpecialIddd = SpecialIDDD;
//
//        [self.navigationController pushViewController:add animated:YES];
//    }
//    else
//    {
//
//    }
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:   (UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath* )indexPath
{
    
    if (collectionView == _TopCollect)
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
    else  if (collectionView == _SymptomCollect)
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
             return CGSizeMake(128,180);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==667)//6
        {
            return CGSizeMake(128,180);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==736)//8plus
            
        {
            return CGSizeMake(128,180);
        }
        
        else if ([[UIScreen mainScreen] bounds].size.height==812)//11pro
            
        {
            return CGSizeMake(128,180);
        }
        else if ([[UIScreen mainScreen] bounds].size.height==896)
            
        {
            return CGSizeMake(128,180);
        }
        else
            
        {
            return CGSizeMake(128,180);
        }
      }
}
- (IBAction)MenuTwo:(id)sender
{
    _BlurImage.hidden = YES;
       
        isSelected = NO;
    _LogOutView.hidden = YES;
}

- (IBAction)MenuOne:(id)sender
{
    _LogOutView.hidden = YES;
        _backgroundImage.hidden = YES;
}

- (IBAction)YesAction:(id)sender
{
    LoginViewController *add = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
      [[NSUserDefaults standardUserDefaults] setObject:@"Nooo" forKey:@"loginSuccess"];
     
      [self.navigationController pushViewController:add animated:YES];
}

- (IBAction)NoAction:(id)sender
{
    _BlurImage.hidden=YES;
    _LogOutView.hidden=YES;
}
- (IBAction)LabAction:(id)sender {
    
    LabViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"LabViewController"];

       [self.navigationController pushViewController:add animated:YES];
    
}
- (IBAction)SeeAction:(id)sender {
}
@end
