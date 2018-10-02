//
//  CHGradientLayerView.m
//  Layer-Demo
//
//  Created by 张晨晖 on 2018/9/26.
//  Copyright © 2018 张晨晖. All rights reserved.
//

#import "CHGradientLayerView.h"

@implementation CHGradientLayerView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

#pragma mark getter
+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (NSArray *)colors {
    return ((CAGradientLayer *)self.layer).colors;
}

- (NSArray<NSNumber *> *)locations {
    return ((CAGradientLayer *)self.layer).locations;
}

- (CGPoint)startPoint {
    return ((CAGradientLayer *)self.layer).startPoint;
}

- (CGPoint)endPoint {
    return ((CAGradientLayer *)self.layer).endPoint;
}

- (CAGradientLayerType)type {
    return ((CAGradientLayer *)self.layer).type;
}

#pragma mark setter
- (void)setColors:(NSArray *)colors {
    ((CAGradientLayer *)self.layer).colors = colors;
}

- (void)setLocations:(NSArray<NSNumber *> *)locations {
    ((CAGradientLayer *)self.layer).locations = locations;
}

- (void)setStartPoint:(CGPoint)startPoint {
    ((CAGradientLayer *)self.layer).startPoint = startPoint;
}

- (void)setEndPoint:(CGPoint)endPoint {
    ((CAGradientLayer *)self.layer).endPoint = endPoint;
}

- (void)setType:(CAGradientLayerType)type {
    ((CAGradientLayer *)self.layer).type = type;
}

@end
