//
//  UIBezierPath+Color.h
//  FingerPaint
//
//  Created by Dayson Dong on 2019-05-11.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (Color)

@property (nonatomic) UIColor* strokeColor;
@property (nonatomic) NSNumber* strokeWidth;

@end

NS_ASSUME_NONNULL_END
