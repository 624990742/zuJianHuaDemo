//
//  JCDatabaseManager.m
//  JCTestDemo
//
//  Created by jiachen on 2021/4/30.
//

#import "JCDatabaseManager.h"
#import "WCTSampleAdvance+WCTTableCoding.h"
#import "WCTSampleColumnCoding.h"
#define kDataBaseName_orderTable @"kDataBaseName_orderTable"
@implementation JCDatabaseManager
@synthesize dataBase = _dataBase;

+(instancetype)sharedManager{
    static JCDatabaseManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[JCDatabaseManager alloc] init];
    });
    return manager;
}


-(instancetype)init{
    self = [super init];
    if (self) {
        [self createDataBase];
    }
    return self;
}
-(void)createDataBase{
    NSString *documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingString:@"JCTestDatabase.db"];
    self.dataBase =  [[WCTDatabase alloc] initWithPath:dbPath];
}




//创建表
-(void)createOrderTableWithModel:(WCTSampleAdvance *)model{
    if (![self.dataBase isTableExists:kDataBaseName_orderTable]) {
        BOOL isCreate = [self.dataBase createTableAndIndexesOfName:kDataBaseName_orderTable withClass:model.class];
        if (isCreate == YES) {
            NSLog(@"数据库创建成功");
        } else {
            NSLog(@"数据库失败");
        }
    }
}

- (void)insertData{
    
    WCTSampleColumnCoding *tt = [[WCTSampleColumnCoding alloc] init];
    tt.str = @"test";
    tt.teste = @"china";
    
    WCTSampleAdvance *model = [[WCTSampleAdvance alloc] init];
    model.intValue = 1;
    model.columnCoding = tt;
    
    
    BOOL result = [self.dataBase insertObject:model into:kDataBaseName_orderTable];
}










@end
