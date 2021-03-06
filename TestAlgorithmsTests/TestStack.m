//
//  TestStack.m
//  TestAlgorithmsTests
//
//  Created by Dima Gubatenko on 23.07.17.
//  Copyright © 2017 Dima Gubatenko. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Stack.h"

@interface TestStack : XCTestCase
@end

@implementation TestStack

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(true);
}

- (void)testStackPushPopPerfomance {
    Stack<NSString *> *const stack = [[Stack alloc] init];
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

- (void)testStackWithCapacityPushPopPerfomance {
    Stack<NSString *> *const stack = [[Stack alloc] initWithCapacity:3];
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
