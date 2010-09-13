//
//  TestTransitionsAppDelegate.h
//  TestTransitions
//
//  Created by Jens Kilian on 13.9.10.
//  Copyright 2010 Jens Kilian. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TestTransitionsAppDelegate : NSObject <NSApplicationDelegate>
{
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
