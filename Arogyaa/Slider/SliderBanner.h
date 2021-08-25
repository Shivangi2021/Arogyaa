//
//  Slider.h
//  Slider
//
//  Created by Varun Naharia on 29/12/16.
//  Copyright © 2016 TechWizard. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBSliderrDelegate;

@protocol SBSliderrDelegate <NSObject>

@optional
- (void)sbslider:(SBSliderrDelegate *)sbslider didTapOnImage:(UIImage *)targetImage andParentView:(UIImageView *)targetView;

@end


@interface SliderBanner : UIView<UIScrollViewDelegate,UIGestureRecognizerDelegate>

{
    id <SBSliderrDelegate>_delegate;
}

@property (nonatomic, strong) id <SBSliderrDelegate>delegate;
@property (nonatomic, strong) SliderBanner *customView;
@property (weak, nonatomic) IBOutlet UIScrollView *slider;
@property (weak, nonatomic) IBOutlet UIPageControl *pagger;
@property (nonatomic, strong) NSMutableArray *slides;
@property (strong, nonatomic) IBOutlet UILabel *namelabelss;

-(void)setupSliderView;


@end
