//
//  Stack.m
//  TestAlgorithms
//
//  Created by Dima Gubatenko on 24.07.17.
//  Copyright © 2017 Dima Gubatenko. All rights reserved.
//

#import "Stack.h"

@implementation Stack {
    NSMutableArray<id> *_array;
}

- (instancetype)init {
    self = [super init];
    if(self) {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initWithCapacity:(NSUInteger)capacity {
    self = [super init];
    if(self) {
        _array = [[NSMutableArray alloc] initWithCapacity:capacity];
    }
    return self;
}

- (NSInteger)count {
    return _array.count;
}

- (void)pushValue:(id)value {
    [_array addObject:value];
}

- (id)popValue {
    id object = _array.lastObject;
    [_array removeLastObject];
    return object;
}

@end
