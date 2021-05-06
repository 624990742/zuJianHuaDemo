//
//  WCTSampleAdvance.h
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import <Foundation/Foundation.h>
#import "WCTSampleColumnCoding.h"

NS_ASSUME_NONNULL_BEGIN

@interface WCTSampleAdvance : NSObject

@property(nonatomic, assign) int intValue;
@property(nonatomic, retain) WCTSampleColumnCoding *columnCoding;
////需要绑定到表的字段在这里声明，在.mm中绑定
//WCDB_PROPERTY(intValue)
//WCDB_PROPERTY(columnCoding)

@end

NS_ASSUME_NONNULL_END
