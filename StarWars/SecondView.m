//
//  SecondView.m
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView
NSMutableArray *content;


- (void)viewDidLoad {
    [super viewDidLoad];
    
content=[[NSMutableArray alloc] initWithArray:@[@{@"Title":@"Padme Amidala",@"Icon":@"padme.jpg",@"URL":@"https://en.wikipedia.org/wiki/Padmé_Amidala"}, @{@"Title":@"Han Solo",@"Icon":@"han.jpg",@"URL":@"https://en.wikipedia.org/wiki/Han_Solo"}, @{@"Title":@"Anakin Skywalker",@"Icon":@"anakin.jpg",@"URL":@"https://en.wikipedia.org/wiki/Darth_Vader"}, @{@"Title":@"Yoda",@"Icon":@"yoda.jpg",@"URL":@"https://en.wikipedia.org/wiki/Yoda"}
    ,@{@"Title":@"Luke Skywalker",@"Icon":@"luke.jpg",@"URL":@"https://en.wikipedia.org/wiki/Luke_Skywalker"}]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return [content count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [content objectAtIndex:indexPath.row][@"Title"];
    cell.imageView.image = [UIImage imageNamed:[content objectAtIndex:indexPath.row][@"Icon"]] ;
    

    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[content objectAtIndex:indexPath.row][@"URL"]]];

}

@end
