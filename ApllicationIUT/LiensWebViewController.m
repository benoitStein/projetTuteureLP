//
//  LiensWebViewController.m
//  NavigateurWeb
//
//  Created by projetlp2013 on 23/01/2014.
//  Copyright (c) 2014 projetlp2013. All rights reserved.
//

#import "LiensWebViewController.h"

@interface LiensWebViewController ()
- (void)configureView;
@end

@implementation LiensWebViewController

@synthesize siteSelectionne = _siteSelectionne;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_pageWeb loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_siteSelectionne]]];
    
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
