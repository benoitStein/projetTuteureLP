//
//  GuideViewController.m
//  mont.bel.iut
//
//  Created by projetlp2013 on 13/02/2014.
//  Copyright (c) 2014 projetlp2013. All rights reserved.
//

#import "GuideViewController.h"

@interface GuideViewController ()

@end

@implementation GuideViewController

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
    
    [_scroll setScrollEnabled:YES];
    [_scroll setContentSize:CGSizeMake(320, 1050)];
    _scroll.pagingEnabled =YES;
    _scroll.bounces = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
