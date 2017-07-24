//
//  OptimisedStack.h
//  TestAlgorithms
//
//  Created by Dima Gubatenko on 24.07.17.
//  Copyright © 2017 Dima Gubatenko. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OptimisedStack<__covariant ObjectType> : NSObject
- (instancetype)initWithCapacity:(NSUInteger)capacity;
- (void)pushValue:(ObjectType)value;
- (ObjectType)popValue;
@property(nonatomic, readonly) NSInteger count;
@end

NS_ASSUME_NONNULL_END
