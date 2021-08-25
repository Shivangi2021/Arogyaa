//
//  LoginViewController.h
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController
- (IBAction)BackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *EmailText;
@property (weak, nonatomic) IBOutlet UITextField *PassText;
- (IBAction)SignupAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *GifImage;
- (IBAction)loginAction:(id)sender;
- (IBAction)ForgotAction:(id)sender;

@property(nonatomic ,strong)NSString *UserLat;
@property(nonatomic ,strong)NSString *UserLong;
@property(nonatomic ,strong)NSString *CityIDD;

@property NSURLSessionConfiguration * urlSessionConfig;
@property NSURLSession * urlSession;
@property NSURLSessionDataTask * dataTask;
@property NSMutableURLRequest * mutableReq;
@property(nonatomic, strong)NSMutableArray *jsonArrayData;
@property(nonatomic ,strong)NSMutableArray *productArrayData;
@end

NS_ASSUME_NONNULL_END
