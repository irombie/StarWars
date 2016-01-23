//
//  ViewController.m
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "ViewController.h"
#import "SecondView.h"

@interface ViewController ()

@end

@implementation ViewController
static BOOL isLoggedIn=NO;

- (void)logInViewController:(PFLogInViewController *)controller
               didLogInUser:(PFUser *)user {
    isLoggedIn=YES;
    [self dismissViewControllerAnimated:YES completion:^{
        [self performSegueWithIdentifier:@"CustomSegue" sender:self];
    }];
    
   // ViewController *gotoYourClass = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
    
    //[self.navigationController pushViewController:gotoYourClass animated:YES];

   // UIStoryboard *st = [UIStoryboard storyboardWithName:[[NSBundle mainBundle].infoDictionary objectForKey:@"UIMainStoryboardFile"] bundle:[NSBundle mainBundle]];
}

- (void)logInViewControllerDidCancelLogIn:(PFLogInViewController *)logInController {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)signUpViewController:(PFSignUpViewController *)signUpController didSignUpUser:(PFUser *)user {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)signUpViewControllerDidCancelSignUp:(PFSignUpViewController *)signUpController {
    [self dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)buttonpressed:(id)sender{
    if (![[userinfo objectForKey:_user.text]isEqualToString:_pass.text]) {
        UIAlertController * alert2 =[UIAlertController alertControllerWithTitle:@"Incorrect login info" message:@"Password or username inputted incorrectly" preferredStyle:UIAlertControllerStyleAlert ];
        UIAlertAction* dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            [alert2 dismissViewControllerAnimated:YES completion:nil];
        }];
        [self presentViewController:alert2 animated:YES completion:nil];
        [alert2 addAction:dismiss];
    }
    
    
}
-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if(!isLoggedIn){
        PFLogInViewController *logInController = [[PFLogInViewController alloc] init];
        logInController.delegate = self;
        logInController.signUpController.delegate = self;
        [self presentViewController:logInController animated:YES completion:nil];
    }
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    password= [NSArray arrayWithObjects:@"key1", @"key2", nil];
    username= [NSArray arrayWithObjects:@"irombie", @"irem", nil];
    userinfo=[NSMutableDictionary dictionaryWithObjects:password forKeys:username];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
-(IBAction)backgroundTap:(id)sender{
    [self.view endEditing:YES];
}

@end
