//
//  main.m
//  RandomPossessions
//
//  Created by Dennis Laumen on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSMutableArray *items = [[NSMutableArray alloc] init];
    
    for (int i; i < 10; i++) {
        Possession *p = [Possession randomPossession];
        [items addObject:p];
    }
    
    for (int i = 0; i < [items count]; i++) {
        NSLog(@"%@", [items objectAtIndex:i]);
    }
    
    [items release];
    
    items = nil;
    
    [pool drain];
    return 0;
}

