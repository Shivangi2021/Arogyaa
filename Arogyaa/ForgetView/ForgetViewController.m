//
//  ForgetViewController.m
//  Arogyaa
//
//  Created by Admin on 24/08/21.
//

#import "ForgetViewController.h"

@interface ForgetViewController ()

@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)BackAction:(id)sender
{
      [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)ContinueAction:(id)sender
{
   // [self executeInBackground];
}

@end
