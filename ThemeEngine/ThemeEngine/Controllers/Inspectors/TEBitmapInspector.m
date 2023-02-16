//
//  TEBitmapInspector.m
//  ThemeEngine
//
//  Created by Alexander Zielenski on 6/18/15.
//  Copyright © 2015 Alex Zielenski. All rights reserved.
//

#import "TEBitmapInspector.h"
#import <ThemeKit/TKColorRendition.h>

@interface TEBitmapInspector ()

@end

@implementation TEBitmapInspector

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inspectorView.canDrawSubviewsIntoLayer = NO;
}

- (NSStackViewVisibilityPriority)visibilityPriorityForInspectedObjects:(NSArray *)objects {
    if (objects.count == 0) return NSStackViewVisibilityPriorityNotVisible;
    return ![[objects firstObject] isKindOfClass:[TKColorRendition class]] ?
    NSStackViewVisibilityPriorityMustHold : NSStackViewVisibilityPriorityNotVisible;
}

@end
