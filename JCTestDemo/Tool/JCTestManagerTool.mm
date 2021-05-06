//
//  JCTestManagerTool.m
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import "JCTestManagerTool.h"
#import "JCDatabaseManager.h"

@implementation JCTestManagerTool
+(void)testCreateTo:(WCTSampleAdvance *)model{
    
    [[JCDatabaseManager sharedManager] createOrderTableWithModel:model];
}

+(void)insertTest{
    [[JCDatabaseManager sharedManager] insertData];
}
@end
