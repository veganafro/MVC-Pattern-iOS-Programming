//
//  ViewController.m
//  iOS Programming 5 Oct - App Activity
//
//  Created by Jeremia Muhia on 10/5/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "ViewController.h"
#import "SignInViewController.h"
#import "ModelClass.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (strong, nonatomic) ModelClass * model;

@end

@implementation ViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SignInViewController * signInVC = segue.destinationViewController;
    signInVC.model = self.model;

} //end prepareForSegue

- (IBAction) cancelSignIn:(UIStoryboardSegue *) segue {
    NSLog(@"cancelSignIn: in ViewController");

} //end cancelSignIn

- (IBAction) completeSignIn: (UIStoryboardSegue *) segue {
    NSLog(@"completeSignIn: in ViewController");

    self.greetingLabel.text = self.model.myName;
    
    self.greetingLabel.backgroundColor = [UIColor colorWithRed:[self.model.myRed intValue] / 255.0 green:[self.model.myGreen intValue] / 255.0 blue:[self.model.myBlue intValue] / 255.0 alpha:1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[ModelClass alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
