//
//  SignupViewController.m
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import "SignupViewController.h"
#import "LoginViewController.h"
#import "OtpViewController.h"
#import "CountryListDataSource.h"
#import "CountryListViewController.h"
#import "UIView+Toast.h"
#import "UIImageView+WebCache.h"

@interface SignupViewController ()
{
    NSString *codeStr;
    
    WSCalendarView *calendarView;
    WSCalendarView *calendarViewEvent;
    NSMutableArray *eventArray;
    NSString *timestr;
    
    BOOL isselected;
    NSString *CheckString;
}
@property (strong, nonatomic) NSArray *dataRows;
@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    CheckString = @"0";
    [_TermButton setImage:[UIImage imageNamed:@"c_30"] forState:UIControlStateNormal];

    
      isselected = NO;
    
    [_NumText setKeyboardType:UIKeyboardTypeNumberPad];
    
    NSLocale *locale = [NSLocale currentLocale];
        NSString *countryCode = [locale objectForKey: NSLocaleCountryCode];
        
        CountryListDataSource *dataSource = [[CountryListDataSource alloc] init];
        _dataRows = [dataSource countries];
      _FlagImage.contentMode = UIViewContentModeScaleAspectFill;
        
        NSArray *namess = [_dataRows valueForKey:@"code"];
        
        for (int i = 0; i < [namess count]; i++)
        {
            NSString *asdf = [namess objectAtIndex:i];
            
            if ([asdf isEqualToString:countryCode])
            {
                NSString *lower = [countryCode lowercaseString];
                
                
                NSString *flag = [NSString stringWithFormat:@"%@%@%@",@"https://raw.githubusercontent.com/hjnilsson/country-flags/master/png100px/",lower,@".png"];
                
              [_FlagImage sd_setImageWithURL:[NSURL URLWithString:flag ]
                           placeholderImage:[UIImage imageNamed:@"ex_app123"]];
                
                _CodeLabel.text = [[_dataRows objectAtIndex:i]valueForKey:@"dial_code"];
            }
            else
            {
                
            }
        }
    // Do any additional setup after loading the view.
}

#pragma mark WSCalendarViewDelegate

-(NSArray *)setupEventForDate
{
    return eventArray;
}

-(void)didTapLabel:(WSLabel *)lblView withDate:(NSDate *)selectedDate
{

    NSDateFormatter *monthFormatter=[[NSDateFormatter alloc] init];
    [monthFormatter setDateFormat:@"dd MMMM yyyy"];
    NSString *str=[monthFormatter stringFromDate:selectedDate];
    timestr = str;

    

             
    
}

-(void)deactiveWSCalendarWithDate:(NSDate *)selectedDate{

    _ContainerVieww.hidden=YES;
    _BlurImage.hidden=YES;

    NSDateFormatter *monthFormatter=[[NSDateFormatter alloc] init];
    [monthFormatter setDateFormat:@"dd MMMM yyyy"];
    NSString *str=[monthFormatter stringFromDate:selectedDate];
    timestr = str;
    
    NSDate *today = [NSDate date]; // it will give you current date
           
      NSDateFormatter *dateformate=[[NSDateFormatter alloc]init];
      [dateformate setDateFormat:@"dd MMMM yyyy"]; // Date formater
      NSString *date = [dateformate stringFromDate:[NSDate date]]; // Convert date to string
      NSLog(@"date :%@",date);
    
      
          // NSDate *newDate = date; // your date
      
                  NSComparisonResult result;
                  //has three possible values: NSOrderedSame,NSOrderedDescending, NSOrderedAscending
      
                  result = [date compare:timestr]; // comparing two dates
      
                  if(result==NSOrderedAscending)
                  {
                        [self.navigationController.view makeToast:@"Please select valid date"];
      
                       NSLog(@"today is less");
                  }
      
                  else if(result==NSOrderedDescending)
                  {
                        _DobText.text = timestr;
      
                      NSLog(@"newDate is less");
                  }
                  else
                  {
                      [self.navigationController.view makeToast:@"Please select valid date"];
                       NSLog(@"Both dates are same");
                  }
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

      [self.view endEditing:YES];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didSelectCountry:(NSDictionary *)country
{
    NSLog(@"%@", country);
    
    
    
    //    _CodeText.text=[country valueForKey:@"dial_code"];
    //
    codeStr=[country valueForKey:@"code"];
    
    //    NSString *codeses = [country valueForKey:@"code"];
    
    NSString *lower = [codeStr lowercaseString];
    
    
    NSString *flag = [NSString stringWithFormat:@"%@%@%@",@"https://raw.githubusercontent.com/hjnilsson/country-flags/master/png100px/",lower,@".png"];
    
    [_FlagImage sd_setImageWithURL:[NSURL URLWithString:flag ]
                placeholderImage:[UIImage imageNamed:@"ex_app123"]];
    
    _CodeLabel.text = [country valueForKey:@"dial_code"];
    
    NSLog(@"%@", country);
    
}
- (IBAction)BackAction:(id)sender
{
       [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)CodeAction:(id)sender
{
    CountryListViewController *cv = [[CountryListViewController alloc] initWithNibName:@"CountryListViewController" delegate:self];
    [self presentViewController:cv animated:YES completion:NULL];
}
- (IBAction)SignupAction:(id)sender
{
    
    OtpViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"OtpViewController"];

       [self.navigationController pushViewController:add animated:YES];
    
//     NSString *emailSTR=self.EmailText.text;
//
//
//        if (emailSTR==nil || [emailSTR isEqual:@""]|| emailSTR==nil||[emailSTR isKindOfClass:[NSNull class]] )
//           {
//
//               [self.navigationController.view makeToast:@"Please enter your email"];
//    //           [_EmailText showErrorWithText:@"Please enter your email"];
//           }
//
//           else if (![_EmailText.text containsString:@"."])
//           {
//                [self.navigationController.view makeToast:@"Please enter valid email"];
//           }
//           else if (![_EmailText.text containsString:@"@"])
//           {
//                [self.navigationController.view makeToast:@"Please enter valid email"];
//           }
//        else
//        {
//
//    BOOL lowerCaseLetter,upperCaseLetter,digit,specialCharacter ="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{8,}";
//
//         if([_PassText.text length] >= 8)
//         {
//            for (int i = 0; i < [_PassText.text length]; i++)
//            {
//               unichar c = [_PassText.text characterAtIndex:i];
//               if(!lowerCaseLetter)
//               {
//                 lowerCaseLetter = [[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:c];
//               }
//               if(!upperCaseLetter)
//               {
//                 upperCaseLetter = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c];
//               }
//               if(!digit)
//               {
//                  digit = [[NSCharacterSet decimalDigitCharacterSet] characterIsMember:c];
//               }
//               if(!specialCharacter)
//               {
//                  specialCharacter = [[NSCharacterSet symbolCharacterSet] characterIsMember:c];
//               }
//            }
//
//            if(specialCharacter && digit && lowerCaseLetter && upperCaseLetter)
//            {
//                  NSString *passstr=self.PassText.text;
//
//                     NSString *confrmstr=self.CnfrmText.text;
//                  if ([passstr isEqualToString:confrmstr])
//                  {
//                      NSString *birthDate = timestr;
//                      NSDate *todayDate = [NSDate date];
//                      NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//                      [dateFormatter setDateFormat:@"dd MMMM yyyy"];
//                      int time = [todayDate timeIntervalSinceDate:[dateFormatter dateFromString:birthDate]];
//                      int allDays = (((time/60)/60)/24);
//                      int days = allDays%365;
//                      int years = (allDays-days)/365;
//
//                      NSString *ValidStr = @"18";
//
//                      NSInteger b = [ValidStr integerValue];
//
//                     if (years == b)
//                     {
//                         if ([CheckString isEqualToString:@"0"])
//                         {
//                             [self.navigationController.view makeToast:@"Select terms & condition"];
//                         }
//                         else
//                         {
//                             // [self executeInBackground];
//                         }
//
//                     }
//                     else if  (years < b)
//                     {
//                       [self.navigationController.view makeToast:@"Your are not eligible to register in Healthkey,User must be 18+"];
//                     }
//                      else if  (years > b)
//                      {
//                           if ([CheckString isEqualToString:@"0"])
//                           {
//                               [self.navigationController.view makeToast:@"Select terms & condition"];
//                           }
//                           else
//                           {
//                               // [self executeInBackground];
//                           }
//                      }
//
//
//                          NSLog(@"str1 < str2");
//
////                      if (strFromInt < ValidStr)
////                      {
////                          [self.navigationController.view makeToast:@"Your are not eligible to register in Healthkey,User must be 18+"];
////                      }
////                      else
////                      {
////                          [self executeInBackground];
////                      }
////
////
//
//                  }
//                  else
//                  {
//                       [self.navigationController.view makeToast:@"Confirm Password does not match"];
//
//                  }
//            }
//            else
//            {
//
//                [self.navigationController.view makeToast:@"Please Ensure that you have at least one lower case letter, one upper case letter, one digit and one special character"];
//
//
//            }
//
//         }
//         else
//         {
//
//             [self.navigationController.view makeToast:@"Please Enter at least 8 character"];
//
//         }
//
//        }
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (_NumText==textField)
       {
           if (string.length)
           {
               if (_NumText.text.length<=9)
               {
                   if (_NumText.text.length==9)
                   {
                       NSString *tempStr=[NSString stringWithFormat:@"%@",textField.text];
                       _NumText.text=tempStr;
                   }
                   else if (_NumText.text.length==9)
                   {
                       NSString *tempStr=[NSString stringWithFormat:@"%@",textField.text];
                       _NumText.text=tempStr;
                   }
               }
               else
               {
                   return NO;
               }
           }
           return YES;
       
       }
    else
    {
         return YES;
    }
}
- (IBAction)CalAction:(id)sender
{
    _BlurImage.hidden=NO;
      _ContainerVieww.hidden=NO;

          calendarView = [[[NSBundle mainBundle] loadNibNamed:@"WSCalendarView" owner:self options:nil] firstObject];






          calendarView.tappedDayBackgroundColor=[UIColor orangeColor];

          calendarView.calendarStyle = WSCalendarStyleDialog;
          calendarView.isShowEvent=true;
          [calendarView setupAppearance];
          [self.view addSubview:calendarView];
          calendarView.delegate=self;
          [self.ContainerVieww addSubview:calendarViewEvent];

          [ calendarView setBackgroundColor:[UIColor blueColor]];



          calendarViewEvent = [[[NSBundle mainBundle] loadNibNamed:@"WSCalendarView" owner:self options:nil] firstObject];
          calendarViewEvent.calendarStyle = WSCalendarStyleView;
          calendarViewEvent.isShowEvent=true;
          calendarViewEvent.tappedDayBackgroundColor=[UIColor orangeColor];
          calendarViewEvent.frame = CGRectMake(0, 0, self.ContainerVieww.frame.size.width, self.ContainerVieww.frame.size.height);
          [ _ContainerVieww setBackgroundColor:[UIColor blueColor]];
          [calendarViewEvent setupAppearance];
          calendarViewEvent.delegate=self;
          [self.ContainerVieww addSubview:calendarViewEvent];


          eventArray=[[NSMutableArray alloc] init];
          NSDate *lastDate;
          NSDateComponents *dateComponent=[[NSDateComponents alloc] init];
          for (int i=0; i<10; i++)
      {

              if (!lastDate)
              {
                  lastDate=[NSDate date];
              }
              else
              {
                  [dateComponent setDay:1];
              }
              NSDate *datein = [[NSCalendar currentCalendar] dateByAddingComponents:dateComponent toDate:lastDate options:0];




              NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
              [dateFormatter setDateFormat:@"dd MMMM yyyy"];
              // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
              timestr = [dateFormatter stringFromDate:[NSDate date]];
              lastDate=datein;
              [eventArray addObject:datein];

          }
          [calendarViewEvent reloadCalendar];

          NSLog(@"%@",[eventArray description]);
    
}
- (IBAction)TermAction:(id)sender
{
    if (isselected==YES)
       {
           CheckString = @"0";
                     
                   [_TermButton setImage:[UIImage imageNamed:@"c_30"] forState:UIControlStateNormal];

                 
                   isselected = NO;

          }

        else
            
          {
               CheckString = @"1";
                      [_TermButton setImage:[UIImage imageNamed:@"cc_30"] forState:UIControlStateNormal];
                        
                      

                        isselected = YES;

       }
}

- (IBAction)TermOpnACtion:(id)sender
{
    
//    TermssViewController *add = [self.storyboard instantiateViewControllerWithIdentifier:@"TermssViewController"];
//    add.UserTypeStr = @"User";
//    [self.navigationController pushViewController:add animated:YES];
}
@end
