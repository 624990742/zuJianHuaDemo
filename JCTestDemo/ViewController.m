//
//  ViewController.m
//  JCTestDemo
//
//  Created by jiachen on 2021/4/29.
//

#import "ViewController.h"
//#import "WCTSampleAdvance.h"
#import "WCTSampleColumnCoding.h"
#import "JCTestManagerTool.h"
#import <YTKTestSDK/YTKTestSDK.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [JCTestManagerTool insertTest];
    
    [YTKTestManager testMethond];
}


@end
