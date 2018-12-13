//
//  MBMapKitMapStyle.m
//  Pods
//
//  Created by Michael Biggs on 12/13/18.
//

#import "MBMapKitMapStyle.h"

#import "MBMapKitGoogleStyle.h"

const NSString * baseURL = @"https://mts0.google.com/vt/lyrs=m@289000001&hl=en&src=app&x={x}&y={y}&z={z}&s=DGal";
const NSString * prefix = @"&apistyle=";

@implementation MBMapKitMapStyle
{
    NSArray<MBMapKitGoogleStyle*> * _googleStyles;
}

- (instancetype)initWithJSON:(NSArray<NSDictionary<NSString*,id>*>*)json {
    self = [super init];
    if (self) {
        _googleStyles = [self mapArray:json usingBlock:^id(id obj, NSUInteger idx) {
            return [[MBMapKitGoogleStyle alloc] initWithJSON:obj];
        }];
    }
    return self;
}

- (NSString*)urlString {
    
    NSString * url = @"";
    
    if ([_googleStyles count]) {
        url = [NSString stringWithFormat:@"%@", prefix];
        
        NSInteger index = 0;
        for (MBMapKitGoogleStyle * style in _googleStyles) {
            url = [NSString stringWithFormat:@"%@%@", url, [style encodedStyles]];
            if (index != [_googleStyles count] - 1) {
                url = [NSString stringWithFormat:@"%@,", url];
            }
            index++;
        }
        
        url = [url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
        url = [url stringByReplacingOccurrencesOfString:@":" withString:@"%3A"];
        url = [url stringByReplacingOccurrencesOfString:@"," withString:@"%2C"];
        
        return [NSString stringWithFormat:@"%@%@", baseURL, url];
    } else {
        NSLog(@"problem");
        return @"";
    }
}

// MARK: utility

// cite: https://stackoverflow.com/questions/6127638/nsarray-equivalent-of-map
- (NSMutableArray *)mapArray:(NSArray*)array usingBlock:(id (^)(id, NSUInteger))block
{
    NSMutableArray * result = [NSMutableArray arrayWithCapacity:[array count]];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        id newObj = block(obj, idx);
        if (newObj) {
            [result addObject:newObj];
        }
    }];
    return result;
}

@end
