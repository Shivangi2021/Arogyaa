//
//  LoginViewController.m
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import "LoginViewController.h"
#import "UIView+Toast.h"
#import "UIImage+animatedGIF.h"
#import "ForgetViewController.h"
#import "SignupViewController.h"
#import "SWRevealViewController.h"


@interface LoginViewController ()
{
    NSString *codeStr;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSURL *url11 = [[NSBundle mainBundle] URLForResource:@"ukuipli['" withExtension:@"gif"];

                   self.GifImage.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL: url11]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

      [self.view endEditing:YES];

}
- (IBAction)BackAction:(id)sender
{
     [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)ForgotAction:(id)sender
{
    ForgetViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"ForgetViewController"];

       [self.navigationController pushViewController:add animated:YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    [textField resignFirstResponder];
    return YES;
}
- (IBAction)loginAction:(id)sender
{
    SWRevealViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];

       [self.navigationController pushViewController:add animated:YES];
    
//    BOOL lowerCaseLetter,upperCaseLetter,digit,specialCharacter ="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{8,}";
//
//          if([_PassText.text length] >= 8)
//          {
//             for (int i = 0; i < [_PassText.text length]; i++)
//             {
//                unichar c = [_PassText.text characterAtIndex:i];
//                if(!lowerCaseLetter)
//                {
//                  lowerCaseLetter = [[NSCharacterSet lowercaseLetterCharacterSet] characterIsMember:c];
//                }
//                if(!upperCaseLetter)
//                {
//                  upperCaseLetter = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:c];
//                }
//                if(!digit)
//                {
//                   digit = [[NSCharacterSet decimalDigitCharacterSet] characterIsMember:c];
//                }
//                if(!specialCharacter)
//                {
//                   specialCharacter = [[NSCharacterSet symbolCharacterSet] characterIsMember:c];
//                }
//             }
//
//             if(specialCharacter && digit && lowerCaseLetter && upperCaseLetter)
//             {
//               // [self executeInBackground];
//                 _GifImage.hidden = NO;
//
//             }
//             else
//             {
//
//                 [self.navigationController.view makeToast:@"Please Ensure that you have at least one lower case letter, one upper case letter, one digit and one special character"];
//
//
//             }
//
//          }
//          else
//          {
//
//              [self.navigationController.view makeToast:@"Please Enter at least 8 character"];
//
//          }
////        }
}
- (IBAction)SignupAction:(id)sender
{
   SignupViewController *add =
      [self.storyboard instantiateViewControllerWithIdentifier:@"SignupViewController"];
 
      [self.navigationController pushViewController:add animated:YES];
}

@end
