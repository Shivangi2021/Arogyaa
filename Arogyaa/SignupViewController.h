//
//  SignupViewController.h
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import <UIKit/UIKit.h>
#import "WSCalendarView.h"

NS_ASSUME_NONNULL_BEGIN

@interface SignupViewController : UIViewController

- (IBAction)BackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *FlagImage;
@property (weak, nonatomic) IBOutlet UILabel *CodeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *GifImage;
- (IBAction)CalAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *BlurImage;
@property (weak, nonatomic) IBOutlet UITextField *DobText;
- (IBAction)CodeAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *CnfrmText;
@property (weak, nonatomic) IBOutlet UITextField *NumText;
@property (weak, nonatomic) IBOutlet UITextField *EmailText;
- (IBAction)SignupAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *PassText;
@property (strong, nonatomic) IBOutlet UIView *ContainerVieww;
@property (weak, nonatomic) IBOutlet UIButton *TermButton;
- (IBAction)TermOpnACtion:(id)sender;

- (IBAction)TermAction:(id)sender;
@property(nonatomic ,strong)NSString *cityIDDDD;
@property(nonatomic ,strong)NSString *AddressIDDDD;



@property NSURLSessionConfiguration * urlSessionConfig;
@property NSURLSession * urlSession;
@property NSURLSessionDataTask * dataTask;
@property NSMutableURLRequest * mutableReq;
@property(nonatomic, strong)NSMutableArray *jsonArrayData;
@property(nonatomic ,strong)NSMutableArray *productArrayData;
@end

NS_ASSUME_NONNULL_END
