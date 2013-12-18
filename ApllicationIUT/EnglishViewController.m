//
//  EnglishViewController.m
//  mont.bel.iut
//
//  Created by projetlp2013 on 18/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "EnglishViewController.h"

@interface EnglishViewController ()

@end

@implementation EnglishViewController

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
    [_scroll setContentSize:CGSizeMake(320, 1350)];
    _scroll.pagingEnabled =YES;
    _scroll.bounces = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
