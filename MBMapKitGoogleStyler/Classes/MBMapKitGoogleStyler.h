//
//  MBMapKitGoogleStyler.h
//  Pods
//
//  Created by Michael Biggs on 12/13/18.
//

// cite: this is essentially an Objective-C rewrite of:
// https://github.com/fmo91/MapKitGoogleStyler

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MBMapKitGoogleStyler : NSObject

+ (nonnull MKTileOverlay*)buildOverlayWithJSONArray:(nonnull NSArray<NSDictionary<NSString*,id>*>*)json;
+ (nonnull MKTileOverlay*)buildOverlayWithJSONFileURL:(nonnull NSURL*)url;

@end
