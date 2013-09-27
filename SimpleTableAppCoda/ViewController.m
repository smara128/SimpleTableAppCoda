//
//  ViewController.m
//  SimpleTableAppCoda
//
//  Created by me on 18/09/13.
//  Copyright (c) 2013 self. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *tableData;
@property (nonatomic, strong) NSMutableArray *thumbnails;
@property (nonatomic, strong) NSMutableArray *prepTime;

@end



@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    /*
    self.tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Crème Brulee", @"White Chocolate Donut", @"Starbuck Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", nil];
    
    self.thumbnails = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil];
     */
    
    // find out the path for recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // load the file contents and read the data into arrays
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    
    self.tableData = [dict objectForKey:@"RecipeName"];
    self.thumbnails = [dict objectForKey:@"Thumbnail"];
    self.prepTime = [dict objectForKey:@"PrepTime"];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table View Data Source


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.prepTime count];
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
       // cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
        NSArray *nib =  [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
    }
    
    // *** this is to clean the reused cells from the checkmark, otherwise reused cells will keep it.
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    cell.nameLabel.text = [self.tableData objectAtIndex:indexPath.row];
    cell.prepTimeLabel.text = [self.prepTime objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    
    
   // cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
   // cell.imageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row] ];
    
    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}


#pragma mark - Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    //[tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected" message:[self.tableData objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [messageAlert show];
    
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // remove the row contents in the model
    [self.tableData removeObjectAtIndex:indexPath.row];
    [self.thumbnails removeObjectAtIndex:indexPath.row];
    [self.prepTime removeObjectAtIndex:indexPath.row];
    
    // reload (refresh) the TableView to reflect the changes in the Model
    [tableView reloadData];

}

@end



















