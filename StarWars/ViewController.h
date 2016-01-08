//
//  ViewController.h
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UITextField *user;
    IBOutlet UITextField *pass;
    
    NSArray *username;
    NSArray *password;
    NSMutableDictionary *userinfo;
    
}

-(IBAction)buttonpressed:(id)sender;


@end

