//
//  SecondView.m
//  StarWars
//
//  Created by Gül Ergün on 08/01/16.
//  Copyright © 2016 İrem Ergün. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView
//NSMutableArray *content;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate=self;
    /*
content=[[NSMutableArray alloc] initWithArray:@[@{@"Title":@"Padme Amidala",@"Icon":@"padme.jpg",@"URL":@"https://en.wikipedia.org/wiki/Padmé_Amidala"}, @{@"Title":@"Han Solo",@"Icon":@"han.jpg",@"URL":@"https://en.wikipedia.org/wiki/Han_Solo"}, @{@"Title":@"Anakin Skywalker",@"Icon":@"anakin.jpg",@"URL":@"https://en.wikipedia.org/wiki/Darth_Vader"}, @{@"Title":@"Yoda",@"Icon":@"yoda.jpg",@"URL":@"https://en.wikipedia.org/wiki/Yoda"}
    ,@{@"Title":@"Luke Skywalker",@"Icon":@"luke.jpg",@"URL":@"https://en.wikipedia.org/wiki/Luke_Skywalker"}]];
    
    //PFObject *characters=[PFObject objectWithClassName:@"Characters"];
    
    characters[@"Title"] = @"Padme Amidala";
    characters[@"Icon"] = @"padme.jpg";
    characters[@"url"] = @"https://en.wikipedia.org/wiki/Padmé_Amidala";
    */
    
}
/*

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
 */

 
- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super initWithCoder:aCoder];
    if (self) {
        // The className to query on
        self.parseClassName = @"Characters";
        
        // The key of the PFObject to display in the label of the default cell style
        self.textKey = @"Title";
        
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        
        // Whether the built-in pagination is enabled
        self.paginationEnabled = NO;
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
    PFObject *object = [self.objects objectAtIndex:indexPath.row];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[object objectForKey:@"url"]]]; //[content objectAtIndex:indexPath.row][@"url"]]];
    
}

- (PFQuery *)queryForTable
{
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    
    return query;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *simpleTableIdentifier = @"StarWarsCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    // Configure the cell
    NSString *thumbnail = [object objectForKey:@"Icon"];
    UIImageView *thumbnailImageView = (UIImageView*)[cell viewWithTag:100];
    thumbnailImageView.image = [UIImage imageNamed:thumbnail];
    
    UILabel *nameLabel = (UILabel*) [cell viewWithTag:101];
    nameLabel.text = [object objectForKey:@"Title"];
    nameLabel.numberOfLines=0;//text wrap
    
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 100)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(70, 20, tableView.frame.size.width, 50)];
    [label setFont:[UIFont boldSystemFontOfSize:12]];
    NSString *string =@"STAR WARS CHARACTERS";
    /* Section header is in 0th index... */
    [label setText:string];
    [view addSubview:label];
    [view setBackgroundColor:[UIColor colorWithRed:166/255.0 green:177/255.0 blue:186/255.0 alpha:1.0]]; //your background color...
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{    return 60;
}

@end
