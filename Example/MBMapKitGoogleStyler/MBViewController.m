//
//  MBViewController.m
//  MBMapKitGoogleStyler
//
//  Created by jmbiggs on 12/13/2018.
//  Copyright (c) 2018 jmbiggs. All rights reserved.
//

#import "MBViewController.h"

@import MapKit;

#import <MBMapKitGoogleStyler/MBMapKitGoogleStyler.h>

@interface MBViewController () <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end

@implementation MBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [_mapView setDelegate:self];
    [self configureTileOverlay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureTileOverlay {
    NSString * overlayFileURLString = [[NSBundle mainBundle] pathForResource:@"MapStyle" ofType:@"json"];
    NSURL * overlayFileURL = [NSURL fileURLWithPath:overlayFileURLString];
    
    MKTileOverlay * tileOverlay = [MBMapKitGoogleStyler buildOverlayWithJSONFileURL:overlayFileURL];
    [_mapView addOverlay:tileOverlay];
}

#pragma mark - MKMapViewDelegate

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
{
    MKTileOverlay * tileOverlay = (MKTileOverlay*)overlay;
    if (tileOverlay) {
        return [[MKTileOverlayRenderer alloc] initWithTileOverlay:tileOverlay];
    } else {
        return [[MKOverlayRenderer alloc] initWithOverlay:overlay];
    }
}

@end
