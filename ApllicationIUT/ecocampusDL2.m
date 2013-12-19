//
//  ecocampusDL2.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 02/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "ecocampusDL2.h"

@implementation ecocampusDL2
@synthesize lienDeTelechargement2;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [lienDeTelechargement2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.iut-bm.univ-fcomte.fr/download/iut-90/document/eco-campus/4pages_ecocampus.pdf"]]];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
