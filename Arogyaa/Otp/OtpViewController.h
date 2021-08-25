//
//  OtpViewController.h
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OtpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *SubmitButton;
- (IBAction)SubmitAction:(id)sender;
- (IBAction)BackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *Pin1;
@property (weak, nonatomic) IBOutlet UITextField *Pin3;
@property (weak, nonatomic) IBOutlet UITextField *Pin2;
@property (weak, nonatomic) IBOutlet UITextField *Pin4;
- (IBAction)ResendAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *GifImage;


@property NSURLSessionConfiguration * urlSessionConfig;
@property NSURLSession * urlSession;
@property NSURLSessionDataTask * dataTask;
@property NSMutableURLRequest * mutableReq;
@property(nonatomic, strong)NSMutableArray *jsonArrayData;
@property(nonatomic ,strong)NSMutableArray *productArrayData;

@end

NS_ASSUME_NONNULL_END
