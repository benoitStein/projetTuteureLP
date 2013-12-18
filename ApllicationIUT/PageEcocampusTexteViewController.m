//
//  PageEcocampusTexteViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 18/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "PageEcocampusTexteViewController.h"

@interface PageEcocampusTexteViewController ()

@end

@implementation PageEcocampusTexteViewController

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
    
    [_scroll setScrollEnabled :YES];
    [_scroll setContentSize:CGSizeMake(320, 2000)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
