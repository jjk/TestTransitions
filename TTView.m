//
//  TTView.m
//  TestTransitions
//
//  Created by Jens Kilian on 13.9.10.
//  Copyright 2010 Jens Kilian. All rights reserved.
//

#import "TTView.h"

#import <QuartzCore/CAAnimation.h>

@implementation TTView

+ (id) defaultAnimationForKey: (NSString *)key
{
    if ([key isEqualToString: @"color"]) {
        return [CABasicAnimation animation];

    } else if ([key isEqualToString: @"scale"]) {
        return [CATransition animation];
    }
    
    return [super defaultAnimationForKey:key];
}

- (NSColor *) color
{
    return color;
}

- (void) setColor: (NSColor *)newColor
{
    if (![color isEqual: newColor]) {
        color = [newColor copy];
        [self setNeedsDisplay: YES];
    }
}
         
- (BOOL) scale
{
    return scale;
}

- (void) setScale: (BOOL)newScale
{
    if (scale != newScale) {
        scale = newScale;
        [self setNeedsDisplay: YES];
    }
}

- (id) initWithFrame: (NSRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        self.color = [NSColor greenColor];
    }
    return self;
}

- (IBAction) setRed: (id)sender
{
    [[self animator] setColor: [NSColor redColor]];
}

- (IBAction) setGreen: (id)sender
{
    [[self animator] setColor: [NSColor greenColor]];
}

- (IBAction) toggleScale: (id)sender
{
    [[self animator] setScale: !self.scale];
}

- (void) drawRect: (NSRect)dirtyRect
{
    [[NSColor whiteColor] set];
    [NSBezierPath fillRect: dirtyRect];

    NSRect rect =
      self.scale
      ? NSMakeRect(100, 100, 200, 200)
      : NSMakeRect(150, 150, 100, 100);

    [self.color set];
    [NSBezierPath setDefaultLineWidth: (self.scale ? 9 : 3)];
    [NSBezierPath strokeRect: rect];
}

@end
