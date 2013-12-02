//
//  DetailViewController.h
//  ApllicationIUT
//
//  Created by projetlp2013 on 02/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
