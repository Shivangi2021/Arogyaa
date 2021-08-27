//
//  LabCollectionViewCell.h
//  Arogyaa
//
//  Created by Admin on 27/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LabCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *CellView;
@property (weak, nonatomic) IBOutlet UIImageView *OneImage;
@property (weak, nonatomic) IBOutlet UILabel *TestForLabel;
@property (weak, nonatomic) IBOutlet UILabel *TestDesLabel;
@property (weak, nonatomic) IBOutlet UILabel *PriceLabel;



@property (weak, nonatomic) IBOutlet UIImageView *TwoCellImage;
@property (weak, nonatomic) IBOutlet UILabel *TwoLabel;



@property (weak, nonatomic) IBOutlet UIView *CellVieww;
@property (weak, nonatomic) IBOutlet UIImageView *ThreeIMage;
@property (weak, nonatomic) IBOutlet UILabel *ThreeNameLabel;



@property (weak, nonatomic) IBOutlet UIView *FourVieww;
@property (weak, nonatomic) IBOutlet UIImageView *FourImage;
@property (weak, nonatomic) IBOutlet UILabel *FourNameLabel;

@end

NS_ASSUME_NONNULL_END
