//
//  ViewController.m
//  RSA_test
//
//  Created by 周智勇 on 17/3/13.
//  Copyright © 2017年 周智勇. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryptor.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    字符串加密
    //原始数据
    NSString *originalString = @"这是一段将要使用'.der'文件加密的字符串!";
//    使用.der和.p12中的公钥私钥加密解密
    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12" ofType:nil];
    
    NSString *encryptStr = [RSAEncryptor encryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@"123456"]);
    */
    
    //字典加密
    NSMutableDictionary * allParams = [NSMutableDictionary dictionary];
    [allParams setObject:@"18638111122" forKey:@"telphoneNum"];
    [allParams setObject:@"123123" forKey:@"password"];
    
    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12" ofType:nil];
    
    NSString *encryptStr = [RSAEncryptor encryptDictionary:allParams publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", allParams);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@", [RSAEncryptor decryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@"123456"]);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
