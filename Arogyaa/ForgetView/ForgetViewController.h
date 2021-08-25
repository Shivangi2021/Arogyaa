//
//  ForgetViewController.h
//  Arogyaa
//
//  Created by Admin on 24/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ForgetViewController : UIViewController
- (IBAction)BackAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *TextFieldd;
- (IBAction)ContinueAction:(id)sender;



@property NSURLSessionConfiguration * urlSessionConfig;
@property NSURLSession * urlSession;
@property NSURLSessionDataTask * dataTask;
@property NSMutableURLRequest * mutableReq;
@property(nonatomic, strong)NSMutableArray *jsonArrayData;
@property(nonatomic ,strong)NSMutableArray *productArrayData;
@end

NS_ASSUME_NONNULL_END
