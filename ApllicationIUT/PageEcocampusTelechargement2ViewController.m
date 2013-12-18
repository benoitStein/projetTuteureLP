//
//  PageEcocampusTelechargement2ViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 18/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "PageEcocampusTelechargement2ViewController.h"

@interface PageEcocampusTelechargement2ViewController ()

@end

@implementation PageEcocampusTelechargement2ViewController

@synthesize dl2;

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
    [dl2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.iut-bm.univ-fcomte.fr/download/iut-90/document/eco-campus/4pages_ecocampus.pdf"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
