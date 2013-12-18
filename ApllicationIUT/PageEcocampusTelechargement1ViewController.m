//
//  PageEcocampusTelechargement1ViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 18/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "PageEcocampusTelechargement1ViewController.h"

@interface PageEcocampusTelechargement1ViewController ()

@end

@implementation PageEcocampusTelechargement1ViewController

@synthesize dl1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [dl1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.iut-bm.univ-fcomte.fr/download/iut-90/document/challenge-gc/projet-ecocampus-9-juillet-2013-light.pdf"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
