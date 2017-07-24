//
//  OptimisedStack.m
//  TestAlgorithms
//
//  Created by Dima Gubatenko on 24.07.17.
//  Copyright © 2017 Dima Gubatenko. All rights reserved.
//

#import "OptimisedStack.h"

@implementation OptimisedStack{
    NSMutableArray *_Nonnull _array;
    NSUInteger _tail;
    NSNull *null;
}

- (instancetype)init {
    self = [super init];
    if(self) {
        _array = [[NSMutableArray alloc] init];
        _tail = 0;
        null = [NSNull null];
    }
    return self;
}

- (instancetype)initWithCapacity:(NSUInteger)capacity {
    self = [super init];
    if(self) {
        _array = [[NSMutableArray alloc] initWithCapacity:capacity];
        _tail = 0;
        null = [NSNull null];
    }
    return self;
}

- (NSInteger)count {
    return _array.count;
}

- (void)pushValue:(id)value {
    if(_tail == 0 || _tail == _array.count - 1) {
        [_array addObject:value];
        _tail = _array.count - 1;
    } else {
        [_array insertObject:value atIndex:_tail];
        _tail += 1;
    }
}

- (id)popValue {
    id object = [_array objectAtIndex:_tail];
    [_array insertObject:null atIndex:_tail];
    _tail -= 1;
    return object;
}

@end
