//
//  ViewController.m
//  AAA
//
//  Created by 创联 on 2018/11/12.
//  Copyright © 2018年 宋佳. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking/AFHTTPSessionManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"这是什么t呀");
    NSLog(@"dev");
    NSLog(@"Switched to a new branch 'feature1'");
//    Switched to a new branch 'feature1'
    NSLog(@"qqpp");
    
    NSLog(@"冲突了");
    NSLog(@"qqq");
    [self oahahaha];
}
-(void)oahahaha{
    
    
    //适配https
    
    
    
    NSString *urlString = @"https://cjl.com/";  //https://www.baidu.com/
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    
    [securityPolicy setAllowInvalidCertificates:YES];
    
    [securityPolicy setValidatesDomainName:YES];
//
//    manager.securityPolicy = securityPolicy;
    
    //用于指定文件
    
    //    NSData *certData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"12306" ofType:@"cer"]];
    
    //    NSSet *cerSet  = [NSSet setWithObject:certData];
    
    //    if(certData){
    
    //        [securityPolicy setPinnedCertificates:cerSet];
    
    //    }
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:urlString
     
      parameters:nil
     
        progress:nil
     
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             
             NSDictionary * array = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
             
             NSLog(@"OK === %@",array);
             
             NSString *htmlString = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
             
             NSLog(@"%@",htmlString);
             
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             
             NSLog(@"error ==%@",error.description);
             
         }];
    

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
}
@end
