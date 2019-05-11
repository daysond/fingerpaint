//
//  UIBezierPath+Color.m
//  FingerPaint
//
//  Created by Dayson Dong on 2019-05-11.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "UIBezierPath+Color.h"
#import "objc/runtime.h"
@implementation UIBezierPath (Color)

-(void)setStrokeColor: (UIColor*) strokeColor {
    objc_setAssociatedObject(self, @selector(strokeColor), strokeColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(UIColor*)strokeColor {
    
    return objc_getAssociatedObject(self, @selector(strokeColor));
}

-(void)setStrokeWidth:(NSNumber*) strokeWidth {
    objc_setAssociatedObject(self, @selector(strokeWidth), strokeWidth, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSNumber*)strokeWidth {
     return objc_getAssociatedObject(self, @selector(strokeWidth));
}

@end
