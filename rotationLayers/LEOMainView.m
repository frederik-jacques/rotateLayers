//
//  LEOMainView.m
//  rotationLayers
//
//  Created by Frederik Jacques on 12/08/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "LEOMainView.h"


@implementation LEOMainView

#pragma mark - Lifecycle

- (id)initWithFrame:(CGRect)frame {

    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        [self createHalfCircle];
    }
    
    return self;
}

#pragma mark - NSCopying

#pragma mark - Private methods

- (void)createHalfCircle {
    
    self.container = [CALayer layer];
    
    
    CGFloat radius = 100;
    
    for (int i = 0; i <= 180;  i+=30) {
        
        CGFloat xPos = radius *  cos(i * ( M_PI / 180 ));
        CGFloat yPos = radius *  sin(i * ( M_PI / 180 ));
        
        CAShapeLayer *rectLayer = [CAShapeLayer layer];
        rectLayer.path = [UIBezierPath bezierPathWithRect:CGRectMake(-10, -10, 20, 20)].CGPath;
        rectLayer.fillColor = [UIColor greenColor].CGColor;
        rectLayer.position = CGPointMake(xPos, yPos);
        
        [self.container addSublayer:rectLayer];
        
    }
    
    self.container.position = CGPointMake( self.frame.size.width / 2, self.frame.size.height / 2);
    [self.layer addSublayer:self.container];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    for (CAShapeLayer *rectShape in self.container.sublayers) {
        
        rectShape.transform = CATransform3DMakeRotation( M_PI, 0, 0, 1);
        
    }
    
}

#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[LEOMainView]"];
}


@end
