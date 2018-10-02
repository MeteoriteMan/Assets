//
//  CHShapeLayerView.h
//  Layer-Demo
//
//  Created by 张晨晖 on 2018/9/27.
//  Copyright © 2018 张晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHShapeLayerView : UIView

/* The path defining the shape to be rendered. If the path extends
 * outside the layer bounds it will not automatically be clipped to the
 * layer, only if the normal layer masking rules cause that. Upon
 * assignment the path is copied. Defaults to null. Animatable.
 * (Note that although the path property is animatable, no implicit
 * animation will be created when the property is changed.) */

@property(nonatomic, nullable) CGPathRef path;

/* The color to fill the path, or nil for no fill. Defaults to opaque
 * black. Animatable. */

@property(nullable) CGColorRef fillColor;

/* The fill rule used when filling the path. Options are `non-zero' and
 * `even-odd'. Defaults to `non-zero'. */

@property(copy) CAShapeLayerFillRule fillRule;

/* The color to fill the path's stroked outline, or nil for no stroking.
 * Defaults to nil. Animatable. */

@property(nullable) CGColorRef strokeColor;

/* These values define the subregion of the path used to draw the
 * stroked outline. The values must be in the range [0,1] with zero
 * representing the start of the path and one the end. Values in
 * between zero and one are interpolated linearly along the path
 * length. strokeStart defaults to zero and strokeEnd to one. Both are
 * animatable. */

@property CGFloat strokeStart;
@property CGFloat strokeEnd;

/* The line width used when stroking the path. Defaults to one.
 * Animatable. */

@property CGFloat lineWidth;

/* The miter limit used when stroking the path. Defaults to ten.
 * Animatable. */

@property CGFloat miterLimit;

/* The cap style used when stroking the path. Options are `butt', `round'
 * and `square'. Defaults to `butt'. */

@property(copy) CAShapeLayerLineCap lineCap;

/* The join style used when stroking the path. Options are `miter', `round'
 * and `bevel'. Defaults to `miter'. */

@property(copy) CAShapeLayerLineJoin lineJoin;

/* The phase of the dashing pattern applied when creating the stroke.
 * Defaults to zero. Animatable. */

@property CGFloat lineDashPhase;

/* The dash pattern (an array of NSNumbers) applied when creating the
 * stroked version of the path. Defaults to nil. */

@property(nullable, copy) NSArray<NSNumber *> *lineDashPattern;

@end

NS_ASSUME_NONNULL_END
