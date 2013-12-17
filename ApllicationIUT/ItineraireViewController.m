//
//  ItineraireViewController.m
//  mont.bel.iut
//
//  Created by projetlp2013 on 05/12/2013.
//  Copyright (c) 2013 projetlp2013. All rights reserved.
//

#import "ItineraireViewController.h"

@interface ItineraireViewController ()

@end

@implementation ItineraireViewController

@synthesize mapView;

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
    
    //self.mapView.showsUserLocation = YES;
    
    // Belfort Techn'hom
    CLLocationCoordinate2D annotationCoord;
    annotationCoord.latitude = 47.643961;
    annotationCoord.longitude = 6.840703;
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = @"Belfort | Techn'hom";
    annotationPoint.subtitle = @"19 Avenue Maréchal Juin 90000 Belfort";
    [self.mapView addAnnotation:annotationPoint];
    
    // Belfort Centre
    CLLocationCoordinate2D annotationCoord2;
    annotationCoord2.latitude = 47.640544;
    annotationCoord2.longitude = 6.856032;
    MKPointAnnotation *annotationPoint2 = [[MKPointAnnotation alloc] init];
    
    annotationPoint2.coordinate = annotationCoord2;
    annotationPoint2.title = @"Belfort | Centre";
    annotationPoint2.subtitle = @"55 Faubourg des Ancêtres 90000 Belfort";
    [self.mapView addAnnotation:annotationPoint2];
    
    // Montbéliard Portes du Jura
    CLLocationCoordinate2D annotationCoord3;
    annotationCoord3.latitude = 47.495502;
    annotationCoord3.longitude = 6.805285;
    MKPointAnnotation *annotationPoint3 = [[MKPointAnnotation alloc] init];
    
    annotationPoint3.coordinate = annotationCoord3;
    annotationPoint3.title = @"Montbéliard | Portes du Jura";
    annotationPoint3.subtitle = @"4 Place Tharradin 25200 Montbéliard";
    [self.mapView addAnnotation:annotationPoint3];
    
    // Définir le zoom
    MKCoordinateSpan span;
    span.latitudeDelta=0.3;
    span.longitudeDelta=0.3;
    
    // Centre de la carte
    CLLocationCoordinate2D centreCoordinates;
    centreCoordinates.latitude = 47.574673;
    centreCoordinates.longitude = 6.829376;
    
    MKCoordinateRegion centrePoint;
    centrePoint.span=span;
    centrePoint.center=centreCoordinates;
    
    // centrer la carte sur Paris
    [mapView setRegion:centrePoint animated:TRUE];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

