//
//  WCTSampleAdvance.mm
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import "WCTSampleAdvance+WCTTableCoding.h"
#import "WCTSampleAdvance.h"
#import <WCDB/WCDB.h>
@implementation WCTSampleAdvance

WCDB_IMPLEMENTATION(WCTSampleAdvance)
WCDB_SYNTHESIZE(WCTSampleAdvance, intValue)
WCDB_SYNTHESIZE(WCTSampleAdvance, columnCoding)
WCDB_PRIMARY_ASC_AUTO_INCREMENT(WCTSampleAdvance, intValue)

@end
