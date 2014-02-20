//
//  ActualiteViewController.m
//  mont.bel.iut
//
//  Created by projetlp2013 on 18/02/2014.
//  Copyright (c) 2014 projetlp2013. All rights reserved.
//

#import "ActualiteViewController.h"
#import "Tutorial.h"
#import "TFHpple.h"

@interface ActualiteViewController ()
{
    NSMutableArray *_objects;
}

@end

@implementation ActualiteViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self loadTitreActu];
}

- (void)loadTitreActu
{
    NSURL *Url = [NSURL URLWithString:@"http://www.iut-bm.univ-fcomte.fr/pages/fr/menu2880/-l-iut--l-actu-en-ligne-16484.html"];
    NSData *HtmlData = [NSData dataWithContentsOfURL:Url];
    
   TFHpple *Parser = [TFHpple hppleWithHTMLData:HtmlData];
    
    NSString *XpathQueryString = @"//h3";
    NSArray *Nodes = [Parser searchWithXPathQuery:XpathQueryString];
    
    NSString *XpathQueryString1 = @"//h4";
    NSArray *Nodes1 = [Parser searchWithXPathQuery:XpathQueryString1];
    
    NSMutableArray *newActu = [[NSMutableArray alloc] initWithCapacity:0];
    for (TFHppleElement *element in Nodes) {

        Tutorial *tutorial = [[Tutorial alloc] init];
        [newActu addObject:tutorial];
        
        tutorial.title = [[element firstChild] content];
        
        tutorial.url = [element objectForKey:@"href"];
    }
    
    for (TFHppleElement *element in Nodes1) {
        
        Tutorial *tutorial = [[Tutorial alloc] init];
        [newActu addObject:tutorial];
        
        tutorial.title = [[element firstChild] content];
        
        tutorial.url = [element objectForKey:@"href"];
    }
    
    _objects = newActu;
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            //return @"Actualités";
            break;
    }
    return nil;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return _objects.count;
            break;

    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    Tutorial *thisTutorial = [_objects objectAtIndex:indexPath.row];
    cell.textLabel.text = thisTutorial.title;
    //cell.textLabel.font = [UIFont fontWithName:@"Courier" size:12.0f];
    cell.detailTextLabel.text = thisTutorial.url;
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
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
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
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

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
