//
//  DrawingView.h
//  FingerPaint
//
//  Created by Dayson Dong on 2019-05-10.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBezierPath+Color.h"

NS_ASSUME_NONNULL_BEGIN

@interface DrawingView : UIView

//@property (nonatomic) CustomePath *path;
@property (nonatomic) UIBezierPath *path;
@property (nonatomic) UIColor *strokeColor;
@property (nonatomic) CGFloat strokeWidth;
@property (nonatomic) BOOL eraserEnabled;
@end

NS_ASSUME_NONNULL_END
