//
//  ecocampusDL1.m
//  ApllicationIUT
//
//  Created by projetlp2013 on 05/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "ecocampusDL1.h"

@implementation ecocampusDL1
@synthesize lienDeTelechargement1;

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
    
    [lienDeTelechargement1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.iut-bm.univ-fcomte.fr/download/iut-90/document/challenge-gc/projet-ecocampus-9-juillet-2013-light.pdf"]]];
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
