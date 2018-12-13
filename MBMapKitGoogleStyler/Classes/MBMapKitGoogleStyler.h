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

NS_ASSUME_NONNULL_BEGIN

@interface MBMapKitGoogleStyler : NSObject

+ (MKTileOverlay*)buildOverlayWithJSONArray:(NSArray<NSDictionary<NSString*,id>*>*)json;
+ (MKTileOverlay*)buildOverlayWithJSONFileURL:(NSURL*)url;

@end

NS_ASSUME_NONNULL_END
