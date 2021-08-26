//
//  consultTableViewCell.h
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface consultTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *CellVieww;
@property (weak, nonatomic) IBOutlet UILabel *FeeLabel;
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ProImage;
@property (weak, nonatomic) IBOutlet UILabel *CourceLabel;
@property (weak, nonatomic) IBOutlet UILabel *DegreeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ExperienceLabel;
@property (weak, nonatomic) IBOutlet UILabel *LikeLabel;
@property (weak, nonatomic) IBOutlet UILabel *StoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *AddresLabel;
@property (weak, nonatomic) IBOutlet UIButton *VideoButton;
@property (weak, nonatomic) IBOutlet UIButton *MeetButton;

//@property (weak, nonatomic) IBOutlet MCFireworksButton *FavouriteBtn;



@end

NS_ASSUME_NONNULL_END
