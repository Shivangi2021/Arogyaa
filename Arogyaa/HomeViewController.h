//
//  HomeViewController.h
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import <UIKit/UIKit.h>
#import "SliderBanner.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *MenuButton;
- (IBAction)LocationAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *NotiACtion;
- (IBAction)ProfileACtion:(id)sender;
- (IBAction)ConsultACtion:(id)sender;
- (IBAction)HomeAction:(id)sender;
@property (weak, nonatomic) IBOutlet SliderBanner *SliderVieww;
@property (weak, nonatomic) IBOutlet UICollectionView *SymptomCollect;
@property (weak, nonatomic) IBOutlet UICollectionView *TopCollect;
@property (weak, nonatomic) IBOutlet UIView *LogOutView;
- (IBAction)NoAction:(id)sender;
- (IBAction)YesAction:(id)sender;
- (IBAction)MenuOne:(id)sender;
- (IBAction)MenuTwo:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *BlurImage;
@property (weak, nonatomic) IBOutlet UIButton *backgroundImage;

@end

NS_ASSUME_NONNULL_END
