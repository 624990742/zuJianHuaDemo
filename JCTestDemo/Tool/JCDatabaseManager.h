//
//  JCDatabaseManager.h
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import <Foundation/Foundation.h>
#import "WCTSampleAdvance.h"
#import <WCDB/WCDB.h>
//#import "WCTSampleAdvance+WCTTableCoding.h"
NS_ASSUME_NONNULL_BEGIN

@interface JCDatabaseManager : NSObject
+(instancetype)sharedManager;
@property (strong,nonatomic) WCTDatabase *dataBase;
//创建表
-(void)createOrderTableWithModel:(WCTSampleAdvance *)model;
- (void)insertData;
@end

NS_ASSUME_NONNULL_END
