//
//  OtpViewController.m
//  Arogya
//
//  Created by Admin on 24/08/21.
//

#import "OtpViewController.h"
#import "UIImage+animatedGIF.h"
#import "UIView+Toast.h"
#import "SWRevealViewController.h"

@interface OtpViewController ()
{
    NSString *myString;
}
@end

@implementation OtpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _SubmitButton.layer.cornerRadius = 10.0f;
  
  
           
  NSURL *url11 = [[NSBundle mainBundle] URLForResource:@"Blocks-1s-200px" withExtension:@"gif"];

   self.GifImage.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL: url11]];
  
  NSUserDefaults *deeffaults = [NSUserDefaults standardUserDefaults];
    NSString *OtpStr = [deeffaults objectForKey:@"otpSTR"];
  
  
 [self.navigationController.view makeToast:OtpStr];
}


-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    if (textField == _Pin1)
    {
        [_Pin2 becomeFirstResponder];
    }
    else if (textField == _Pin2)
    {
        [_Pin3 becomeFirstResponder];
    }
    else if (textField == _Pin3)
    {
        [_Pin4 becomeFirstResponder];
    }

    return NO;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    // This allows numeric text only, but also backspace for deletes
    if (string.length > 0 && ![[NSScanner scannerWithString:string] scanInt:NULL])
        return NO;

    NSUInteger oldLength = [textField.text length];
    NSUInteger replacementLength = [string length];
    NSUInteger rangeLength = range.length;

    NSUInteger newLength = oldLength - rangeLength + replacementLength;

    // This 'tabs' to next field when entering digits
    if (newLength == 1) {
        if (textField == _Pin1)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin2 afterDelay:0.2];
        }
        else if (textField == _Pin2)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin3 afterDelay:0.2];
        }
        else if (textField == _Pin3)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin4 afterDelay:0.2];
        }
    }
    //this goes to previous field as you backspace through them, so you don't have to tap into them individually
    else if (oldLength > 0 && newLength == 0) {
        if (textField == _Pin4)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin3 afterDelay:0.1];
        }
        else if (textField == _Pin3)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin2 afterDelay:0.1];
        }
        else if (textField == _Pin2)
        {
            [self performSelector:@selector(setNextResponder:) withObject:_Pin1 afterDelay:0.1];
        }
    }

    return newLength <= 1;
}

- (void)setNextResponder:(UITextField *)nextResponder
{
    [nextResponder becomeFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

      [self.view endEditing:YES];

}
- (IBAction)BackAction:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)SubmitAction:(id)sender
{
    SWRevealViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"SWRevealViewController"];

       [self.navigationController pushViewController:add animated:YES];
    
//    NSUserDefaults *deeffaults = [NSUserDefaults standardUserDefaults];
//    NSString *OtpStr = [deeffaults objectForKey:@"otpSTR"];
//
//    myString = [NSString stringWithFormat: @"%@%@%@%@",_Pin1.text,_Pin2.text,_Pin3.text,_Pin4.text];
//
//
//    if ([OtpStr isEqualToString:myString ])
//
//    {
//      //  [self executeInBackgroundOTP];
//
//     _GifImage.hidden = NO;
//
//
//    }
//
//    else
//
//    {
//
//
//        [self.navigationController.view makeToast:@"Invalid Otp"];
//    }
    
}
- (IBAction)ResendAction:(id)sender
{
  //  [self executeInBackgroundResend ];
    
    _GifImage.hidden = NO;
}
@end
