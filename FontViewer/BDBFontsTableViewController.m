//
//  BDBFontsTableViewController.m
//  FontViewer
//
//  Created by Bruno Domínguez on 03/01/15.
//  Copyright (c) 2015 brunodominguez. All rights reserved.
//

#import "BDBFontsTableViewController.h"
#import "BDBFontViewController.h"

@interface BDBFontsTableViewController ()

@property (strong, nonatomic) NSArray* fontsFamily;
@property (strong, nonatomic) BDBFontViewController* font;

@end

@implementation BDBFontsTableViewController

- (id)initWithStyle:(UITableViewStyle)style{
    
    if (self = [super initWithStyle:style]) {
        _fontsFamily = [[UIFont familyNames]sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
        self.title = @"Fontopaedia";
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [self.fontsFamily count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[UIFont fontNamesForFamilyName:[self.fontsFamily objectAtIndex:section]]count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
    NSString* fontName = [[UIFont fontNamesForFamilyName:[self.fontsFamily objectAtIndex:indexPath.section]]objectAtIndex:indexPath.row];
    cell.textLabel.text = fontName;
    cell.textLabel.font = [UIFont fontWithName:fontName size:30.0];
    cell.textLabel.adjustsFontSizeToFitWidth = YES;
    
    
    return cell;
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return [[[UIFont familyNames]sortedArrayUsingSelector:@selector(caseInsensitiveCompare:) ]objectAtIndex:section];
}

- (NSArray*)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", ];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString* font = [[UIFont fontNamesForFamilyName:[self.fontsFamily objectAtIndex:indexPath.section]]objectAtIndex:indexPath.row];
    UIFont* fontName = [UIFont fontWithName:font size:10.0];
    BDBFontViewController* fontVC = [[BDBFontViewController alloc]initWithFont:fontName];
    [self.navigationController pushViewController:fontVC animated:YES];
    NSLog(@"%@", fontName.fontName);
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
