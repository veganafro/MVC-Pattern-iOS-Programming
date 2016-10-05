//
//  SignInViewController.m
//  iOS Programming 5 Oct - App Activity
//
//  Created by Jeremia Muhia on 10/5/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "SignInViewController.h"
#import "ModelClass.h"

@interface SignInViewController ()

@property (weak, nonatomic) IBOutlet UITextField *signInField;

@property (weak, nonatomic) IBOutlet UITextField *localRed;
@property (weak, nonatomic) IBOutlet UITextField *localBlue;
@property (weak, nonatomic) IBOutlet UITextField *localGreen;

@end

@implementation SignInViewController

- (IBAction)cancelButtonTapped:(id)sender {
}

- (IBAction)saveButtonTapped:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation
*/
// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    NSLog(@"...starting segue %@", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"completeSignIn"]) {
        self.model.myName = self.signInField.text;
        
        self.model.myRed = self.localRed.text;
        self.model.myBlue = self.localBlue.text;
        self.model.myGreen = self.localGreen.text;
    }
}


@end
