//
//  ConsultViewController.h
//  Arogyaa
//
//  Created by Admin on 25/08/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConsultViewController : UIViewController
- (IBAction)backAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *DoctorTable;

@property(nonatomic,strong)NSString *ConcernValue;
@property(nonatomic,strong)NSString *CategoryValue;

@property NSURLSessionConfiguration * urlSessionConfig;
@property NSURLSession * urlSession;
@property NSURLSessionDataTask * dataTask;
@property NSMutableURLRequest * mutableReq;
@property(nonatomic, strong)NSMutableArray *jsonArrayData;
@property(nonatomic,strong)NSMutableArray *productArrayData;

@end

NS_ASSUME_NONNULL_END
