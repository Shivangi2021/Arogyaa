//
//  ReviewTableViewCell.h
//  Only Star
//
//  Created by MAC on 21/09/20.
//  Copyright © 2020 Maestros infotech. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReviewTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *CellView;
@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ProImage;

@end

NS_ASSUME_NONNULL_END
