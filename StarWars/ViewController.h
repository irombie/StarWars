//
//  ViewController.h
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    NSArray *username;
    NSArray *password;
    NSMutableDictionary *userinfo;
}
@property (weak,nonatomic) IBOutlet UITextField *user;
@property (weak,nonatomic) IBOutlet  UITextField *pass;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *backgroundTap;

-(IBAction)buttonpressed:(id)sender;


@end

