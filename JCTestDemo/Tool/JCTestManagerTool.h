//
//  JCTestManagerTool.h
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class WCTSampleAdvance;
@interface JCTestManagerTool : NSObject
+(void)testCreateTo:(WCTSampleAdvance *)model;
+(void)insertTest;
@end

NS_ASSUME_NONNULL_END
