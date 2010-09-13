//
//  TestTransitionsAppDelegate.m
//  TestTransitions
//
//  Created by Jens Kilian on 13.9.10.
//  Copyright 2010 Jens Kilian. All rights reserved.
//

#import "TestTransitionsAppDelegate.h"

@implementation TestTransitionsAppDelegate

@synthesize window;

- (BOOL) applicationShouldTerminateAfterLastWindowClosed: (NSApplication *)sender
{
    return YES;
}

@end
