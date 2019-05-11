//
//  ViewController.m
//  FingerPaint
//
//  Created by Dayson Dong on 2019-05-10.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet DrawingView *drawingArea;
@property (weak, nonatomic) IBOutlet UISlider *widthSlider;
@property (weak, nonatomic) IBOutlet UILabel *widthLabel;
@property (weak, nonatomic) IBOutlet UIButton *eraserButton;
@property (nonatomic) CGFloat red;
@property (nonatomic) CGFloat blue;
@property (nonatomic) CGFloat green;
@property (weak, nonatomic) IBOutlet UIView *pickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setColor];
    // Do any additional setup after loading the view.
}
-(void)setColor {
    _pickerView.backgroundColor = [UIColor colorWithRed:self.red/255.0 green:self.green/255.0 blue:self.blue/255.0 alpha:1.0];
    _drawingArea.strokeColor = _pickerView.backgroundColor;
}
- (IBAction)redChanged:(UISlider *)sender {
    self.red = sender.value;
    [self setColor];

}
- (IBAction)blueChanged:(UISlider *)sender {
    self.blue = sender.value;
    [self setColor];
}
- (IBAction)greenChanged:(UISlider *)sender {
    self.green = sender.value;
    [self setColor];
}
- (IBAction)widthChanged:(UISlider *)sender {
    self.widthLabel.text = [NSString stringWithFormat:@"%d",(int)sender.value];
    _drawingArea.strokeWidth = sender.value;
}
- (IBAction)eraserButtonTapped:(UIButton *)sender {
    if (_drawingArea.eraserEnabled == NO) {
        _drawingArea.eraserEnabled = YES;
        [self.eraserButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal ];
        _drawingArea.strokeColor = [UIColor whiteColor];
    } else {
        _drawingArea.eraserEnabled = NO;
        [self.eraserButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal ];
        _drawingArea.strokeColor = _pickerView.backgroundColor;
    }

}


@end
