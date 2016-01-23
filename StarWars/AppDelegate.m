//
//  AppDelegate.m
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "AppDelegate.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Parse setApplicationId: @"drlPsJrwso48p9B5KvtHUQ0Pt83GOIJKFoOBGfog"
                  clientKey: @"dL5h7oXPGnPuxLl8dFlKk1onV21PEGtRLiQsVKPJ"];
    // Override point for customization after application launch.
    /*
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    if ([PFUser currentUser]) // if user logged in.
        
    {
        self.homeViewController= [[HomeViewController alloc]initWithNibName:@"HomeViewController" bundle:nil];
        self.navigationController = [[UINavigationController alloc]initWithRootViewController:self.homeViewController];
        
    } else
    {
        self.logInViewController = [self getLoginViewController];
        self.navigationController = [[UINavigationController alloc]initWithRootViewController:logInViewController];
    }
    
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
     */
    
    return YES;
}
/*
- (PFLogInViewController *)getLoginViewController
{
    PFLogInViewController *loginController= [[PFLogInViewController alloc] init];
    [loginController setDelegate:self];
    loginController.logInView.logo = nil;
    
    loginController.fields = PFLogInFieldsUsernameAndPassword
    | PFLogInFieldsLogInButton
    | PFLogInFieldsSignUpButton
    | PFLogInFieldsPasswordForgotten;
    
    self.signUpViewController = [[PFSignUpViewController alloc] init];
    [signUpViewController setDelegate:self];
    
    signUpViewController.fields = PFSignUpFieldsUsernameAndPassword
    | PFSignUpFieldsSignUpButton|PFSignUpFieldsDismissButton;
    
    signUpViewController.signUpView.logo = nil;
    [loginController setSignUpController:signUpViewController];
    return loginController;
}
*/

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
