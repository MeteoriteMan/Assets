//
//  UIShapeLayerView.m
//  Layer-Demo
//
//  Created by 张晨晖 on 2018/9/27.
//  Copyright © 2018 张晨晖. All rights reserved.
//

#import "CHShapeLayerView.h"

@implementation CHShapeLayerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.backgroundColor = [UIColor clearColor];
}

#pragma mark getter
+ (Class)layerClass {
    return [CAShapeLayer class];
}

- (CGPathRef)path {
    return ((CAShapeLayer *)self.layer).path;
}

- (CGColorRef)fillColor {
    return ((CAShapeLayer *)self.layer).fillColor;
}

- (CAShapeLayerFillRule)fillRule {
    return ((CAShapeLayer *)self.layer).fillRule;
}

- (CGColorRef)strokeColor {
    return ((CAShapeLayer *)self.layer).strokeColor;
}

- (CGFloat)strokeStart {
    return ((CAShapeLayer *)self.layer).strokeStart;
}

- (CGFloat)strokeEnd {
    return ((CAShapeLayer *)self.layer).strokeEnd;
}

- (CGFloat)lineWidth {
    return ((CAShapeLayer *)self.layer).lineWidth;
}

- (CGFloat)miterLimit {
    return ((CAShapeLayer *)self.layer).miterLimit;
}

- (CAShapeLayerLineCap)lineCap {
    return ((CAShapeLayer *)self.layer).lineCap;
}

- (CAShapeLayerLineJoin)lineJoin {
    return ((CAShapeLayer *)self.layer).lineJoin;
}

- (CGFloat)lineDashPhase {
    return ((CAShapeLayer *)self.layer).lineDashPhase;
}

- (NSArray<NSNumber *> *)lineDashPattern {
    return ((CAShapeLayer *)self.layer).lineDashPattern;
}

#pragma mark setter
- (void)setPath:(CGPathRef)path {
    ((CAShapeLayer *)self.layer).path = path;
}

- (void)setFillColor:(CGColorRef)fillColor {
    ((CAShapeLayer *)self.layer).fillColor = fillColor;
}

- (void)setFillRule:(CAShapeLayerFillRule)fillRule {
    ((CAShapeLayer *)self.layer).fillRule = fillRule;
}

- (void)setStrokeColor:(CGColorRef)strokeColor {
    ((CAShapeLayer *)self.layer).strokeColor = strokeColor;
}

- (void)setStrokeStart:(CGFloat)strokeStart {
    ((CAShapeLayer *)self.layer).strokeStart = strokeStart;
}

- (void)setStrokeEnd:(CGFloat)strokeEnd {
    ((CAShapeLayer *)self.layer).strokeEnd = strokeEnd;
}

- (void)setLineWidth:(CGFloat)lineWidth {
    ((CAShapeLayer *)self.layer).lineWidth = lineWidth;
}

- (void)setMiterLimit:(CGFloat)miterLimit {
    ((CAShapeLayer *)self.layer).miterLimit = miterLimit;
}

- (void)setLineCap:(CAShapeLayerLineCap)lineCap {
    ((CAShapeLayer *)self.layer).lineCap = lineCap;
}

- (void)setLineJoin:(CAShapeLayerLineJoin)lineJoin {
    ((CAShapeLayer *)self.layer).lineJoin = lineJoin;
}

- (void)setLineDashPhase:(CGFloat)lineDashPhase {
    ((CAShapeLayer *)self.layer).lineDashPhase = lineDashPhase;
}

- (void)setLineDashPattern:(NSArray<NSNumber *> *)lineDashPattern {
    ((CAShapeLayer *)self.layer).lineDashPattern = lineDashPattern;
}

@end
