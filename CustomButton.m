//
//  CustomButton.m
//
//
//  Created by ِAlrassas on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton
-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGFloat widthDelta = 45.0-self.bounds.size.width;
    CGFloat heightDelta = 45.0-self.bounds.size.height;
    
    if(widthDelta<0) widthDelta=0;
    if(heightDelta<0) heightDelta=0;
    
    CGRect newBounds=CGRectInset(self.bounds, -0.5*widthDelta, -0.5*heightDelta);
    
    return CGRectContainsPoint(newBounds, point);
}
@end
