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

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertTrue(true);
}

- (void)testStackPushPerfomance {
    Stack<NSString *> *const stack = [[Stack alloc] init];
    [self measureBlock:^{
        for (int i = 0; i < 1000000; i++) {
            [stack pushValue:@"test string"];
        }
    }];
}

- (void)testStackPopPerfomance {
    Stack<NSString *> *const stack = [[Stack alloc] init];
    for (int i = 0; i < 1000000; i++) {
        [stack pushValue:@"test string"];
    }
    [self measureBlock:^{
        for (int i = 0; i < 1000000; i++) {
            [stack popValue];
        }
    }];
}

@end
