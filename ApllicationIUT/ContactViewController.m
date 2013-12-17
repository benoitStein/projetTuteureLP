//
//  ContactViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 10/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "ContactViewController.h"

@interface ContactViewController ()

@end

@implementation ContactViewController

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
    [_scroll setContentSize:CGSizeMake(320, 1550)];
    _scroll.pagingEnabled =YES;
    _scroll.bounces = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
