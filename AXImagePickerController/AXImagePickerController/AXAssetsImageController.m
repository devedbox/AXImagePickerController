//
//  AXAssetsImageController.m
//  AXSwift2OC
//
//  Created by ai on 9/8/15.
//  Copyright © 2015 ai. All rights reserved.
//

#import "AXAssetsImageController.h"
#import <AXExtensions/PHAsset+Image.h>
#import <AXExtensions/ALAsset+Image.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated"
@implementation AXAssetsImageController
+ (instancetype)defaultControllerWithAsset:(id)asset {
    AXAssetsImageController *controller = [[AXAssetsImageController alloc] init];
    controller.asset = asset;
    if (![asset isKindOfClass:[PHAsset class]] && ![asset isKindOfClass:[ALAsset class]]) return nil;
    controller.imageView.image = [asset valueForKey:@"image"];
    return controller;
}
@end
#pragma clang diagnostic pop