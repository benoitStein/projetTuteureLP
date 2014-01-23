//
//  LiensWebViewController.h
//  NavigateurWeb
//
//  Created by projetlp2013 on 23/01/2014.
//  Copyright (c) 2014 projetlp2013. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LiensWebViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) id siteSelectionne;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIWebView *pageWeb;

@end
