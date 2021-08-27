//
//  LabViewController.h
//  Arogyaa
//
//  Created by Admin on 26/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LabViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *moreLabButton;
- (IBAction)NotiAction:(id)sender;
- (IBAction)LocaAction:(id)sender;
- (IBAction)BackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *SearchView;
@property (weak, nonatomic) IBOutlet UITextField *SearchText;
@property (weak, nonatomic) IBOutlet UICollectionView *CheckupCollect;
- (IBAction)SeeMoreOne:(id)sender;
@property (weak, nonatomic) IBOutlet UICollectionView *TestCollect;
@property (weak, nonatomic) IBOutlet UICollectionView *ConditionCollect;
@property (weak, nonatomic) IBOutlet UICollectionView *Parter;

@end

NS_ASSUME_NONNULL_END
