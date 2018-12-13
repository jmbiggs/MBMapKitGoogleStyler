//
//  MBMapKitGoogleStyle.h
//  Pods
//
//  Created by Michael Biggs on 12/13/18.
//

// cite: this is essentially an Objective-C rewrite of:
// https://github.com/fmo91/MapKitGoogleStyler

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

typedef NS_ENUM(NSInteger, ElementType) {
    ElementTypeAll,
    ElementTypeGeometry,
    ElementTypeGeometryFill,
    ElementTypeGeometryStroke,
    ElementTypeLabels,
    ElementTypeLabelsIcon,
    ElementTypeLabelsText,
    ElementTypeLabelsTextFill,
    ElementTypeLabelsTextStroke,
    ElementTypeNone
};

ElementType elementTypeFromString(NSString * string);
NSString * convertedStringFromElementType(ElementType elementType);

typedef NS_ENUM(NSInteger, FeatureType) {
    FeatureTypeAll,
    FeatureTypeAdministrative,
    FeatureTypeAdministrativeCountry,
    FeatureTypeAdministrativeLandParcel,
    FeatureTypeAdministrativeLocality,
    FeatureTypeAdministrativeNeighborhood,
    FeatureTypeAdministrativeProvince,
    FeatureTypeLandscape,
    FeatureTypeLandscapeManMade,
    FeatureTypeLandscapeNatural,
    FeatureTypePoi,
    FeatureTypePoiAttraction,
    FeatureTypePoiBusiness,
    FeatureTypePoiGovernment,
    FeatureTypePoiMedical,
    FeatureTypePoiPark,
    FeatureTypePoiPlaceOfWorship,
    FeatureTypePoiSchool,
    FeatureTypePoiSportsComplex,
    FeatureTypeRoad,
    FeatureTypeRoadArterial,
    FeatureTypeRoadHighway,
    FeatureTypeRoadLocal,
    FeatureTypeTransit,
    FeatureTypeTransitLine,
    FeatureTypeTransitStation,
    FeatureTypeWater,
    FeatureTypeNone
};

FeatureType featureTypeFromString(NSString * string);
NSString * convertedStringFromFeatureType(FeatureType featureType);

typedef NS_ENUM(NSInteger, StylerType) {
    StylerTypeColor,
    StylerTypeGamma,
    StylerTypeHue,
    StylerTypeInvertLightness,
    StylerTypeLightness,
    StylerTypeSaturation,
    StylerTypeVisibility,
    StylerTypeWeight,
    StylerTypeNone
};

StylerType stylerTypeFromString(NSString * string);
NSString * convertedStringFromStylerType(StylerType stylerType);

NS_ASSUME_NONNULL_BEGIN

@interface MBMapKitGoogleStyle : NSObject

- (instancetype)initWithJSON:(NSDictionary*)json;
- (NSString*)encodedStyles;

@end

NS_ASSUME_NONNULL_END
