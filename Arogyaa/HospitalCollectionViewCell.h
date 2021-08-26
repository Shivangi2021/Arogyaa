//
//  HospitalCollectionViewCell.h
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HospitalCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *CellView;
@property (weak, nonatomic) IBOutlet UIImageView *MainImage;
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UILabel *AddressLabel;

@end

NS_ASSUME_NONNULL_END
