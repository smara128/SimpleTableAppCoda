//
//  ViewController.m
//  SimpleTableAppCoda
//
//  Created by me on 18/09/13.
//  Copyright (c) 2013 self. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTableCell.h"
#import "Recipe.h"

@interface ViewController ()

/* Phase 1 - simple app
@property (nonatomic, strong) NSMutableArray *tableData;
@property (nonatomic, strong) NSMutableArray *thumbnails;
@property (nonatomic, strong) NSMutableArray *prepTime;
*/

@property (nonatomic, strong) NSMutableArray *recipes;

@end



@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    /* Phase 1 - simple app with simple arrays
    self.tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Crème Brulee", @"White Chocolate Donut", @"Starbuck Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", nil];
    
    self.thumbnails = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil];
     */
    
    /* Phase 2 - Simple App with Plists
    // find out the path for recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // load the file contents and read the data into arrays
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    
    
    self.tableData = [dict objectForKey:@"RecipeName"];
    self.thumbnails = [dict objectForKey:@"Thumbnail"];
    self.prepTime = [dict objectForKey:@"PrepTime"];
    */
    
    //Phase 3 - OOP - Recipe Objects (Model Introduction)
    
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.thumbnail = @"egg_benedict.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.thumbnail = @"mushroom_risotto.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 min";
    recipe3.thumbnail = @"full_breakfast.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Hamburger";
    recipe4.prepTime = @"30 min";
    recipe4.thumbnail = @"hamburger.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 min";
    recipe5.thumbnail = @"ham_and_egg_sandwich.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.thumbnail = @"creme_brelee.jpg";
    recipe6.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 min";
    recipe7.thumbnail = @"white_chocolate_donut.jpg";
    recipe7.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"White Chocolate Mocha";
    recipe8.prepTime = @"5 min";
    recipe8.thumbnail = @"starbucks_coffee.jpg";
    recipe8.ingredients = [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil];
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.thumbnail = @"vegetable_curry.jpg";
    recipe9.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 min";
    recipe10.thumbnail = @"instant_noodle_with_egg.jpg";
    recipe10.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 min";
    recipe11.thumbnail = @"noodle_with_bbq_pork.jpg";
    recipe11.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil];
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.thumbnail = @"japanese_noodle_with_pork.jpg";
    recipe12.ingredients = [NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil];
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.thumbnail = @"green_tea.jpg";
    recipe13.ingredients = [NSArray arrayWithObjects:@"Green tea", nil];
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.thumbnail = @"thai_shrimp_cake.jpg";
    recipe14.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.thumbnail = @"angry_birds_cake.jpg";
    recipe15.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 min";
    recipe16.thumbnail = @"ham_and_cheese_panini.jpg";
    recipe16.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    self.recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table View Data Source


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.recipes count];
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
    
    
    // Phase 3 - OOP - Setting the cells data
    Recipe *recipe = [self.recipes objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = recipe.name;
    cell.prepTimeLabel.text = recipe.prepTime;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.thumbnail];
    
    
    /* Phase 1 - Simple App - Setting the cells data
    cell.nameLabel.text = [self.tableData objectAtIndex:indexPath.row];
    cell.prepTimeLabel.text = [self.prepTime objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
   
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row] ];
      */
    
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
    
    
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected" message:[[self.recipes objectAtIndex:indexPath.row] name] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    [messageAlert show];
    
}


-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    /* Phase 1  - Simple App
    // remove the row contents in the model
    [self.tableData removeObjectAtIndex:indexPath.row];
    [self.thumbnails removeObjectAtIndex:indexPath.row];
    [self.prepTime removeObjectAtIndex:indexPath.row];
    */
    
    //Phase 3 - OOP
    [self.recipes removeObjectAtIndex:indexPath.row];
    
    
    
    // reload (refresh) the TableView to reflect the changes in the Model
    [tableView reloadData];

}

@end



















