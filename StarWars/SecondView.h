//
//  SecondView.h
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondView : UIViewController{
    NSMutableDictionary *list;
    NSArray *imgArr;
    NSArray *listArr;
}

@property (weak,nonatomic) IBOutlet UIImageView *han;
@property (weak,nonatomic) IBOutlet UIImageView *yoda;
@property (weak,nonatomic) IBOutlet UIImageView *anakin;
@property (weak,nonatomic) IBOutlet UIImageView *luke;
@property (weak, nonatomic) IBOutlet UIImageView *padme;

@end
