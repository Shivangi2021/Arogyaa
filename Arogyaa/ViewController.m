//
//  ViewController.m
//  Arogyaa
//
//  Created by Admin on 24/08/21.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    LoginViewController *add =
    [self.storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];

       [self.navigationController pushViewController:add animated:YES];
}


@end
