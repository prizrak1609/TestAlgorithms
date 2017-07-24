//
//  TestOptimisedStack.m
//  TestAlgorithms
//
//  Created by Dima Gubatenko on 24.07.17.
//  Copyright © 2017 Dima Gubatenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "OptimisedStack.h"

@interface TestOptimisedStack : XCTestCase
@end

@implementation TestOptimisedStack

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(true);
}

- (void)testOptimisedStackPushPopPerfomance {
    OptimisedStack<NSString *> *const stack = [[OptimisedStack alloc] init];
    [self measureBlock:^{
        for (int i = 0; i < 1000000; i++) {
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack popValue];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack popValue];
            [stack popValue];
        }
    }];
}

- (void)testOptimisedStackWithCapacityPushPopPerfomance {
    OptimisedStack<NSString *> *const stack = [[OptimisedStack alloc] initWithCapacity:3];
    [self measureBlock:^{
        for (int i = 0; i < 1000000; i++) {
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack popValue];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack pushValue:@"test string"];
            [stack pushValue:@"test string"];
            [stack popValue];
            [stack popValue];
            [stack popValue];
        }
    }];
}

@end
