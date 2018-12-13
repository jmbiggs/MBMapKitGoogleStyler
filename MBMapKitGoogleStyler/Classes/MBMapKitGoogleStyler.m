//
//  MBMapKitGoogleStyler.m
//  Pods
//
//  Created by Michael Biggs on 12/13/18.
//

#import "MBMapKitGoogleStyler.h"

#import "MBMapKitMapStyle.h"

@implementation MBMapKitGoogleStyler

+ (MKTileOverlay*)buildOverlayWithJSONArray:(NSArray<NSDictionary<NSString*,id>*>*)json {
    MBMapKitMapStyle * mapStyle = [[MBMapKitMapStyle alloc] initWithJSON:json];
    MKTileOverlay * overlay = [[MKTileOverlay alloc] initWithURLTemplate:[mapStyle urlString]];
    [overlay setCanReplaceMapContent:TRUE];
    return overlay;
}

+ (MKTileOverlay*)buildOverlayWithJSONFileURL:(NSURL*)url {
    NSData * data = [NSData dataWithContentsOfURL:url];
    NSArray * array = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    return [MBMapKitGoogleStyler buildOverlayWithJSONArray:array];
}

@end
