//
//  pageAgendaViewController.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 12/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "pageAgendaViewController.h"

@interface pageAgendaViewController ()

@end

@implementation pageAgendaViewController

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
    NSString *fullURL =@"https://www.google.com/calendar/embed?src=communication%40iut-bm.univ-fcomte.fr&ctz=Europe/Paris";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj =[NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
