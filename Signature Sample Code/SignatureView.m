//
//  SignatureView.m
//  CHOC Childrens
//
//  Created by Mac-4 on 05/09/13.
//  Copyright (c) 2013 Pallavi Kamat. All rights reserved.
//

#import "SignatureView.h"
#import <QuartzCore/QuartzCore.h>

@interface SignatureView () {
    UIBezierPath *path;
}

@end

@implementation SignatureView

- (void)commonInit {
    path = [UIBezierPath bezierPath];
    path.lineWidth = 2; // changhe width of line
    // Capture touches
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    pan.maximumNumberOfTouches = pan.minimumNumberOfTouches = 1;
    [self addGestureRecognizer:pan];
    
    // Erase with long press
    [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(erase)]];
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) [self commonInit];
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) [self commonInit];
    return self;
}

- (void)erase {
    path = [UIBezierPath bezierPath];
    path.lineWidth = 2; // changhe width of line
    [self setNeedsDisplay];
}

- (void)pan:(UIPanGestureRecognizer *)pan {
    CGPoint currentPoint = [pan locationInView:self];
    
    if (pan.state == UIGestureRecognizerStateBegan) {
        [path moveToPoint:currentPoint];
    } else if (pan.state == UIGestureRecognizerStateChanged)
        [path addLineToPoint:currentPoint];
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] setStroke];
    [path stroke];
}

- (UIImage *)image {
    CGSize size = [self bounds].size;
    UIGraphicsBeginImageContext(size);
    [[self layer] renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return viewImage;
}

@end
