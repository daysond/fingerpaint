//
//  DrawingView.m
//  FingerPaint
//
//  Created by Dayson Dong on 2019-05-10.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView()


@property (nonatomic) NSMutableArray <CustomePath*> *pathes;


@end

@implementation DrawingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupGestureRecognizer];
    }
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupGestureRecognizer];
    }
    
    return self;
}

-(void)setupGestureRecognizer {
    
    UIPanGestureRecognizer *recog = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(draw:)];
    self.pathes = [[NSMutableArray alloc]initWithArray:@[]];
    [self addGestureRecognizer:recog];
}



-(void)draw: (UIPanGestureRecognizer* )sender {
    
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        
        self.path = [[CustomePath alloc] init];
        self.path.strokeColor = self.strokeColor;
        [self.path moveToPoint: [sender locationInView:sender.view]];
        [self.pathes addObject:self.path];
    }
    
    if (sender.state == UIGestureRecognizerStateChanged) {
        
        [self.path addLineToPoint:[sender locationInView:sender.view]];
        [self setNeedsDisplay];
    }
    

    
}


- (void)drawRect:(CGRect)rect {
    
    for (CustomePath* path in self.pathes) {
        [path.strokeColor setStroke];
        [path setLineWidth:10.0];
        [path stroke];
    }
}



@end
