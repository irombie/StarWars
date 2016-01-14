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
