//
//  pageLicenceTeprowViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 10/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "pageLicenceTeprowViewController.h"

@interface pageLicenceTeprowViewController ()

@end

@implementation pageLicenceTeprowViewController

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
    [_scroll setScrollEnabled:YES];
    [_scroll setContentSize:CGSizeMake(320, 700)];
    _scroll.pagingEnabled =YES;
    _scroll.bounces = NO;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
