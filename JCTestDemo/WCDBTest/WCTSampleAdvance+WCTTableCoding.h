//
//  WCTSampleAdvance+WCTTableCoding.h
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import "WCTSampleAdvance.h"
#import <WCDB/WCDB.h>

@interface WCTSampleAdvance (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(intValue)
WCDB_PROPERTY(columnCoding)


@end
