//
//  Fake.m
//  MuseumTag
//
//  Created by Deniz Kahramaner on 3/3/12.
//  Copyright (c) 2012 Stanford. All rights reserved.
//

#import "MuseumsVC.h"


@implementation MuseumsVC

- (id)initWithStyle:(UITableViewStyle)style
{
    
    self = [super initWithStyle:style];
    if (self) {
        selected = [NSIndexPath indexPathForRow:0 inSection:0 ];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"View will appear");
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 8;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    UITableViewCell *cell = [self tableView: tableView cellForRowAtIndexPath: indexPath];
    return cell.bounds.size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MuseumCell* cell;
    if (selected.row == indexPath.row)
    {
        NSLog(@"Making Selected Cell");
        static NSString *CellIdentifier = @"MuseumSelectedCell";
        cell = (MuseumSelectedCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[MuseumSelectedCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
    }
    else
    {
        static NSString *CellIdentifier = @"MuseumCell";
        cell = (MuseumCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[MuseumCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        }
    }
    switch (indexPath.row) 
    {
        case 0:
            cell.nameLabel.text = @"Cantor Arts Museum";
            cell.dateLabel.text = @"March 1, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"cantor.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Cantor Arts Museum";
            }
            break;
        case 1:
            cell.nameLabel.text = @"Museum of Modern Art";
            cell.dateLabel.text = @"January 12, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"moma.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Museum of Modern Art";
            }
            break;
        case 2:
            cell.nameLabel.text = @"The Tech Museum";
            cell.dateLabel.text = @"December 29, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"thetech.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit The Tech Museum";
            }
            break;
        case 3:
            cell.nameLabel.text = @"Computer History Museum";
            cell.dateLabel.text = @"December 8, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"computerhistory.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Computer History Museum";
            }
            break;
        case 4:
            cell.nameLabel.text = @"Guggenheim Museum";
            cell.dateLabel.text = @"October 17, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"guggenheim.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Guggenheim Museum";
            }
            break;
        case 5:
            cell.nameLabel.text = @"Louvre Museum";
            cell.dateLabel.text = @"July 20, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"louvre.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Louvre Museum";
            }
            break;
        case 6:
            cell.nameLabel.text = @"Exploratorium";
            cell.dateLabel.text = @"June 4, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"exploratorium.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Exploratorium";
            }
            break;
        case 7:
            cell.nameLabel.text = @"Wax Museum";
            cell.dateLabel.text = @"April 1, 2012";
            if (selected.row == indexPath.row) {
                ((MuseumSelectedCell*)cell).museumImage.image = [UIImage imageNamed:@"wax.jpg"];
                ((MuseumSelectedCell*)cell).revisitButton.titleLabel.text = @"Revisit Wax Museum";
            }
            break;
            
    }
    // Configure the cell...
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Should be setting selected");
    NSIndexPath *oldSelected = selected;
    selected = indexPath;
    [self.tableView beginUpdates];
    if (oldSelected.row != selected.row)
    {
        [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObjects:oldSelected, indexPath, nil] withRowAnimation:UITableViewRowAnimationNone ];
    }
    [self.tableView endUpdates];
}

@end
