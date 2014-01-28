//
//  MasterViewController.m
//  NavigateurWeb
//
//  Created by projetlp2013 on 23/01/2014.
//  Copyright (c) 2014 projetlp2013. All rights reserved.
//

#import "LiensViewController.h"
#import "LiensWebViewController.h"

@interface LiensViewController () {
    NSMutableArray *_objects;
}
@end

@implementation LiensViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    mesFavoris = [[NSMutableArray alloc] init];
    
    [mesFavoris addObject:@"Ville de Belfort"];
    [mesFavoris addObject:@"Ville de Montbéliard"];
    [mesFavoris addObject:@"CROUS académie de Besançon"];
    [mesFavoris addObject:@"Caisse d'Allocations Familiales"];
    [mesFavoris addObject:@"Optymo (Belfort Agglomération)"];
    [mesFavoris addObject:@"CTPM (Pays de Montbéliard)"];
    [mesFavoris addObject:@"SNCF"];
    [mesFavoris addObject:@"Bureau Information Jeunesse Franche-Comté"];
    [mesFavoris addObject:@"Wimdu, plateforme de location d'hébergements de courte durée"];
    
    [mesFavoris addObject:@"Office de tourisme de Belfort"];
    [mesFavoris addObject:@"Office de tourisme du Pays de Montbéliard"];
    [mesFavoris addObject:@"Théâtre Le Granit à Belfort"];
    [mesFavoris addObject:@"Théâtre de marionnettes Belfort"];
    [mesFavoris addObject:@"Théâtre du Pilier Belfort"];
    [mesFavoris addObject:@"MA scène nationale (Pays de Montbéliard)"];
    [mesFavoris addObject:@"MALS à Sochaux : théâtre municipal, salle de spectacle"];
    [mesFavoris addObject:@"L'axone à Montbéliard (salle de spectacle)"];
    [mesFavoris addObject:@"Cinéma des quais à Belfort (Pathé)"];
    [mesFavoris addObject:@"Mégarama à Audincourt"];
    [mesFavoris addObject:@"Colisée à Montbéliard"];
    [mesFavoris addObject:@"Musées franc-comtois"];
    [mesFavoris addObject:@"Pôle des Musiques Actuelles de Belfort, salle de concert La Poudrière"];
    [mesFavoris addObject:@"Les bains douches à Montbéliard (restauration et salle de spectacle)"];
    [mesFavoris addObject:@"Agenda des sorties : onfaikoi.com"];
    
    self.navigationItem.title = @"Mes sites Web préférés";
    
    adressesWeb = [[NSMutableArray alloc] init];
    
    [adressesWeb addObject:@"http://www.mairie-belfort.com/"];
    [adressesWeb addObject:@"http://www.montbeliard.com/"];
    [adressesWeb addObject:@"http://www.crous-besancon.fr/"];
    [adressesWeb addObject:@"http://www.caf.fr/"];
    [adressesWeb addObject:@"http://www.optymo.fr/"];
    [adressesWeb addObject:@"http://www.ctpm.fr/"];
    [adressesWeb addObject:@"http://www.voyages-sncf.com/"];
    [adressesWeb addObject:@"http://www.jeunes-fc.com/"];
    [adressesWeb addObject:@"http://www.wimdu.fr/"];
    
    [adressesWeb addObject:@"http://www.belfort-tourisme.com/"];
    [adressesWeb addObject:@"http://www.paysdemontbeliard-tourisme.com/"];
    [adressesWeb addObject:@"http://www.legranit.org/"];
    [adressesWeb addObject:@"http://www.marionnette-belfort.com/"];
    [adressesWeb addObject:@"http://www.theatredupilier.com/"];
    [adressesWeb addObject:@"http://www.1213.mascenenationale.com/"];
    [adressesWeb addObject:@"http://www.la-mals.fr/"];
    [adressesWeb addObject:@"http://www.axone-montbeliard.fr/"];
    [adressesWeb addObject:@"http://www.cinemasgaumontpathe.com/cinemas/cinema-pathe-belfort/"];
    [adressesWeb addObject:@"http://www.megarama.fr/mr-audincourt/"];
    [adressesWeb addObject:@"http://www.allocine.fr/seance/salle_gen_csalle=P0433.html"];
    [adressesWeb addObject:@"http://www.musees-franchecomte.com/"];
    [adressesWeb addObject:@"http://www.pmabelfort.com/"];
    [adressesWeb addObject:@"http://www.bainsdouches-montbeliard.com/"];
    [adressesWeb addObject:@"http://www.onfaikoi.fr/"];
    
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mesFavoris count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Myidentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:
                CellIdentifier];
    }
    
    // Configuration des cellules
    NSString *cellValue = [mesFavoris objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"detailSegue"]) {
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        LiensWebViewController *dvc = [segue destinationViewController];
        dvc.siteSelectionne = [NSString stringWithFormat:@"%@", [adressesWeb objectAtIndex:selectedIndex]];
    }
}

@end
