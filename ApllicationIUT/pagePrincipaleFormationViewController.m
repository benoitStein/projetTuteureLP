//
//  pagePrincipaleFormationViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 02/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "pagePrincipaleFormationViewController.h"

@interface pagePrincipaleFormationViewController ()

@end

@implementation pagePrincipaleFormationViewController


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
    [_scroll setContentSize:CGSizeMake(320, 900)];
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
