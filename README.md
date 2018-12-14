# MBMapKitGoogleStyler

[![CI Status](https://img.shields.io/travis/jmbiggs/MBMapKitGoogleStyler.svg?style=flat)](https://travis-ci.org/jmbiggs/MBMapKitGoogleStyler)
[![Version](https://img.shields.io/cocoapods/v/MBMapKitGoogleStyler.svg?style=flat)](https://cocoapods.org/pods/MBMapKitGoogleStyler)
[![License](https://img.shields.io/cocoapods/l/MBMapKitGoogleStyler.svg?style=flat)](https://cocoapods.org/pods/MBMapKitGoogleStyler)
[![Platform](https://img.shields.io/cocoapods/p/MBMapKitGoogleStyler.svg?style=flat)](https://cocoapods.org/pods/MBMapKitGoogleStyler)

## Introduction

NOTE: This is an Objective-C port of [MapKitGoogleStyler](https://github.com/fmo91/MapKitGoogleStyler) by fmo91.  Use it if you are unable (or unwilling) to use Swift in your project, otherwise you can use [the original](https://github.com/fmo91/MapKitGoogleStyler).

MBMapKitGoogleStyler allows you to include Google Maps JSON styles, that you can create [here](https://mapstyle.withgoogle.com/), and customize your MKMapView to look just like you want (or your client). Including this library is very very easy.

A post explaining the concept in detail (and how to use the Swift version) can be found here: https://medium.com/@ortizfernandomartin/customize-mapkits-mkmapview-with-google-maps-styling-wizard-a5dcc095e19f#.ss3dencgh

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

To easily get styling on an MKMapView:

1. Create your styling [here](https://mapstyle.withgoogle.com/), and generate a JSON file.

2. Put the JSON in a plain text file in your project.  You can name it whatever you want, in this example I'll call it 'MapStyle.json'.

3. Import MBMapKitGoogleStyler into your view controller
    ```objective-c
    #import <MBMapKitGoogleStyler/MBMapKitGoogleStyler.h>
   ```

4. Make sure your view controller is a MKMapViewDelegate, and implement -mapViewrendererForOverlay

    Interface declaration:
    ```objective-c
        @interface MBViewController () <MKMapViewDelegate>
    ```

    Set delegate on MKMapView (in -viewDidLoad):
    ```objective-c
        [_mapView setDelegate:self];
    ```

    Implement delegate method:
    ```objective-c
        - (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
        {
            MKTileOverlay * tileOverlay = (MKTileOverlay*)overlay;
            if (tileOverlay) {
                return [[MKTileOverlayRenderer alloc] initWithTileOverlay:tileOverlay];
            } else {
                return [[MKOverlayRenderer alloc] initWithOverlay:overlay];
            }
        }
    ```

5. Write a function to add the tile overlay to your Map View (make sure you import the JSON file as you named it)
    ```objective-c
    - (void)configureTileOverlay {
        // import the JSON file
        NSString * overlayFileURLString = [[NSBundle mainBundle] pathForResource:@"MapStyle" ofType:@"json"];

        NSURL * overlayFileURL = [NSURL fileURLWithPath:overlayFileURLString];
        MKTileOverlay * tileOverlay = [MBMapKitGoogleStyler buildOverlayWithJSONFileURL:overlayFileURL];
        [_mapView addOverlay:tileOverlay];
    }
    ```

    Call it after setting the delegate (-viewDidLoad):
    ```objective-c
        [_mapView setDelegate:self];
        [self configureTileOverlay];
    ```

## Requirements

* MapKit

## Installation

MBMapKitGoogleStyler is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MBMapKitGoogleStyler'
```

## Author

jmbiggs, jmbiggsdev@gmail.com
fmo91, ortizfernandomartin@gmail.com (original Swift version)

## License

MBMapKitGoogleStyler is available under the MIT license. See the LICENSE file for more info.
