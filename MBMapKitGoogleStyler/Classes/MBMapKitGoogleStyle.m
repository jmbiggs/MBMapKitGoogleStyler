//
//  MBMapKitGoogleStyle.m
//  Pods
//
//  Created by Michael Biggs on 12/13/18.
//

#import "MBMapKitGoogleStyle.h"

ElementType elementTypeFromString(NSString * string) {
    if ([string isEqualToString:@"all"]) { return ElementTypeAll; }
    else if ([string isEqualToString:@"geometry"]) { return ElementTypeGeometry; }
    else if ([string isEqualToString:@"geometry.fill"]) { return ElementTypeGeometryFill; }
    else if ([string isEqualToString:@"geometry.stroke"]) { return ElementTypeGeometryStroke; }
    else if ([string isEqualToString:@"labels"]) { return ElementTypeLabels; }
    else if ([string isEqualToString:@"labels.icon"]) { return ElementTypeLabelsIcon; }
    else if ([string isEqualToString:@"labels.text"]) { return ElementTypeLabelsText; }
    else if ([string isEqualToString:@"labels.text.fill"]) { return ElementTypeLabelsTextFill; }
    else if ([string isEqualToString:@"labels.text.stroke"]) { return ElementTypeLabelsTextStroke; }
    else { return ElementTypeNone; }
}

NSString * convertedStringFromElementType(ElementType elementType) {
    switch (elementType) {
        case ElementTypeAll:
            return @"a";
        case ElementTypeGeometry:
            return @"g";
        case ElementTypeGeometryFill:
            return @"g.f";
        case ElementTypeGeometryStroke:
            return @"g.s";
        case ElementTypeLabels:
            return @"l";
        case ElementTypeLabelsIcon:
            return @"l.i";
        case ElementTypeLabelsText:
            return @"l.t";
        case ElementTypeLabelsTextFill:
            return @"l.t.f";
        case ElementTypeLabelsTextStroke:
            return @"l.t.s";
        default:
            return @"undefined";
    }
}

FeatureType featureTypeFromString(NSString * string) {
    if ([string isEqualToString:@"all"]) { return FeatureTypeAll; }
    else if ([string isEqualToString:@"administrative"]) { return FeatureTypeAdministrative; }
    else if ([string isEqualToString:@"administrative.country"]) { return FeatureTypeAdministrativeCountry; }
    else if ([string isEqualToString:@"administrative.land_parcel"]) { return FeatureTypeAdministrativeLandParcel; }
    else if ([string isEqualToString:@"administrative.locality"]) { return FeatureTypeAdministrativeLocality; }
    else if ([string isEqualToString:@"administrative.neighborhood"]) { return FeatureTypeAdministrativeNeighborhood; }
    else if ([string isEqualToString:@"administrative.province"]) { return FeatureTypeAdministrativeProvince; }
    else if ([string isEqualToString:@"landscape"]) { return FeatureTypeLandscape; }
    else if ([string isEqualToString:@"landscape.man_made"]) { return FeatureTypeLandscapeManMade; }
    else if ([string isEqualToString:@"landscape.natural"]) { return FeatureTypeLandscapeNatural; }
    else if ([string isEqualToString:@"poi"]) { return FeatureTypePoi; }
    else if ([string isEqualToString:@"poi.attraction"]) { return FeatureTypePoiAttraction; }
    else if ([string isEqualToString:@"poi.business"]) { return FeatureTypePoiBusiness; }
    else if ([string isEqualToString:@"poi.government"]) { return FeatureTypePoiGovernment; }
    else if ([string isEqualToString:@"poi.medical"]) { return FeatureTypePoiMedical; }
    else if ([string isEqualToString:@"poi.park"]) { return FeatureTypePoiPark; }
    else if ([string isEqualToString:@"poi.place_of_worship"]) { return FeatureTypePoiPlaceOfWorship; }
    else if ([string isEqualToString:@"poi.school"]) { return FeatureTypePoiSchool; }
    else if ([string isEqualToString:@"poi.sports_complex"]) { return FeatureTypePoiSportsComplex; }
    else if ([string isEqualToString:@"road"]) { return FeatureTypeRoad; }
    else if ([string isEqualToString:@"road.arterial"]) { return FeatureTypeRoadArterial; }
    else if ([string isEqualToString:@"road.highway"]) { return FeatureTypeRoadHighway; }
    else if ([string isEqualToString:@"road.local"]) { return FeatureTypeRoadLocal; }
    else if ([string isEqualToString:@"transit"]) { return FeatureTypeTransit; }
    else if ([string isEqualToString:@"transit.line"]) { return FeatureTypeTransitLine; }
    else if ([string isEqualToString:@"transit.station"]) { return FeatureTypeTransitStation; }
    else if ([string isEqualToString:@"water"]) { return FeatureTypeWater; }
    else { return FeatureTypeNone; }
}

NSString * convertedStringFromFeatureType(FeatureType featureType) {
    switch (featureType) {
        case FeatureTypeAll:
            return @"0";
        case FeatureTypeAdministrative:
            return @"1";
        case FeatureTypeAdministrativeCountry:
            return @"17";
        case FeatureTypeAdministrativeLandParcel:
            return @"21";
        case FeatureTypeAdministrativeLocality:
            return @"19";
        case FeatureTypeAdministrativeNeighborhood:
            return @"20";
        case FeatureTypeAdministrativeProvince:
            return @"18";
        case FeatureTypeLandscape:
            return @"5";
        case FeatureTypeLandscapeManMade:
            return @"81";
        case FeatureTypeLandscapeNatural:
            return @"82";
        case FeatureTypePoi:
            return @"2";
        case FeatureTypePoiAttraction:
            return @"37";
        case FeatureTypePoiBusiness:
            return @"33";
        case FeatureTypePoiGovernment:
            return @"34";
        case FeatureTypePoiMedical:
            return @"36";
        case FeatureTypePoiPark:
            return @"40";
        case FeatureTypePoiPlaceOfWorship:
            return @"38";
        case FeatureTypePoiSchool:
            return @"35";
        case FeatureTypePoiSportsComplex:
            return @"39";
        case FeatureTypeRoad:
            return @"3";
        case FeatureTypeRoadArterial:
            return @"50";
        case FeatureTypeRoadHighway:
            return @"49";
        case FeatureTypeRoadLocal:
            return @"51";
        case FeatureTypeTransit:
            return @"4";
        case FeatureTypeTransitLine:
            return @"65";
        case FeatureTypeTransitStation:
            return @"66";
        case FeatureTypeWater:
            return @"6";
        default: {
            return @"undefined";
        }
    }
}

StylerType stylerTypeFromString(NSString * string) {
    if ([string isEqualToString:@"color"]) { return StylerTypeColor; }
    else if ([string isEqualToString:@"gamma"]) { return StylerTypeGamma; }
    else if ([string isEqualToString:@"hue"]) { return StylerTypeHue; }
    else if ([string isEqualToString:@"invert_lightness"]) { return StylerTypeInvertLightness; }
    else if ([string isEqualToString:@"lightness"]) { return StylerTypeLightness; }
    else if ([string isEqualToString:@"saturation"]) { return StylerTypeSaturation; }
    else if ([string isEqualToString:@"visibility"]) { return StylerTypeVisibility; }
    else if ([string isEqualToString:@"weight"]) { return StylerTypeWeight; }
    else { return StylerTypeNone; }
}

NSString * convertedStringFromStylerType(StylerType stylerType) {
    switch (stylerType) {
        case StylerTypeColor:
            return @"p.c";
        case StylerTypeGamma:
            return @"p.g";
        case StylerTypeHue:
            return @"p.h";
        case StylerTypeInvertLightness:
            return @"p.il";
        case StylerTypeLightness:
            return @"p.l";
        case StylerTypeSaturation:
            return @"p.s";
        case StylerTypeVisibility:
            return @"p.v";
        case StylerTypeWeight:
            return @"p.w";
        default:
            return @"undefined";
    }
}

@implementation MBMapKitGoogleStyle
{
    FeatureType _featureType;
    ElementType _elementType;
    NSArray<NSDictionary<NSString*,id>*>* _stylers;
}

- (instancetype)initWithJSON:(NSDictionary*)json {
    self = [super init];
    if (self) {
        NSString * featureTypeString = [json objectForKey:@"featureType"];
        if (featureTypeString) {
            _featureType = featureTypeFromString(featureTypeString);
        } else {
            _featureType = FeatureTypeNone;
        }
        
        NSString * elementTypeString = [json objectForKey:@"elementType"];
        if (elementTypeString) {
            _elementType = elementTypeFromString(elementTypeString);
        } else {
            _elementType = ElementTypeNone;
        }
        
        _stylers = [json objectForKey:@"stylers"];
    }
    
    return self;
}

- (NSString*)encodedStyles
{
    NSString * style = [NSString stringWithFormat:@"s.t:%@", convertedStringFromFeatureType(_featureType)];
    
    if (_elementType != ElementTypeNone) {
        style = [NSString stringWithFormat:@"%@|s.e:%@", style, convertedStringFromElementType(_elementType)];
    }
    
    for (NSDictionary<NSString*,id>* styler in _stylers) {
        for (NSString * key in [styler allKeys]) {
            StylerType stylerType = stylerTypeFromString(key);
            if (stylerType != StylerTypeNone) {
                if (![style hasSuffix:@"|"] && ![style hasSuffix:@","]) {
                    style = [NSString stringWithFormat:@"%@|", style];
                }
                
                if ([key isEqualToString:@"color"]) {
                    NSString * color = (NSString *)[styler valueForKey:key];
                    if (color && [color length] == 7) {
                        NSString * sanitizedColor = [color stringByReplacingOccurrencesOfString:@"#" withString:@""];
                        style = [NSString stringWithFormat:@"%@%@:#ff%@", style, convertedStringFromStylerType(stylerType), sanitizedColor];
                    } else if (color && [color length] != 9) {
                        NSLog(@"Malformed color");
                    } else {
                        style = [NSString stringWithFormat:@"%@%@:%@", style, convertedStringFromStylerType(stylerType), color];
                    }
                } else {
                    style = [NSString stringWithFormat:@"%@%@:%@", style, convertedStringFromStylerType(stylerType), [styler valueForKey:key]];
                }
                
            } else {
                NSLog(@"Unsupported styler type: %@", key);
            }
        }
    }
    
    return style;
}

@end
