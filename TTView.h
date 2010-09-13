//
//  TTView.h
//  TestTransitions
//
//  Created by Jens Kilian on 13.9.10.
//  Copyright 2010 Jens Kilian. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface TTView : NSView
{
    NSColor *color;
    BOOL scale;
}

@property (copy) NSColor *color;
@property BOOL scale;

- (IBAction) setRed: (id)sender;
- (IBAction) setGreen: (id)sender;
- (IBAction) toggleScale: (id)sender;

@end
