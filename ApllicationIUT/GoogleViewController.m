//
//  GoogleViewController.m
//  mont.bel.iut
//
//  Created by projetlp2013 on 05/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "GoogleViewController.h"

@interface GoogleViewController ()

@end

@implementation GoogleViewController

@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
    
	// Créer une URL
	NSURL *urlAddress = [NSURL URLWithString: @"https://plus.google.com/107518262900353923887/about"];
    
	// Faire une requête sur cette URL
	NSURLRequest *requestObject = [NSURLRequest requestWithURL:urlAddress];
    
	// Charger la requête dans la UIWebView
	[webView loadRequest:requestObject];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end