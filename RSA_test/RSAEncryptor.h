//
//  RSAEncryptor.h
//  RSA_test
//
//  Created by 周智勇 on 17/3/13.
//  Copyright © 2017年 周智勇. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSAEncryptor : NSObject

/**
 *  加密方法
 *
 *  @param str   需要加密的字符串
 *  @param path  '.der'格式的公钥文件路径
 */
+ (NSString *)encryptString:(NSString *)str publicKeyWithContentsOfFile:(NSString *)path;

/**
 *  解密方法
 *
 *  @param str       需要解密的字符串
 *  @param path      '.p12'格式的私钥文件路径
 *  @param password  私钥文件密码
 */
+ (NSString *)decryptString:(NSString *)str privateKeyWithContentsOfFile:(NSString *)path password:(NSString *)password;

/**
 *  加密方法
 *
 *  @param str    需要加密的字符串
 *  @param pubKey 公钥字符串
 */
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 *  解密方法
 *
 *  @param str     需要解密的字符串
 *  @param privKey 私钥字符串
 */
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;


//------------------新增方法

/**
 加密方法。

 @param dictionary 需要加密的字典
 @param path       '.der'格式的公钥文件路径

 @return 加密之后的值
 */
+ (NSString *)encryptDictionary:(NSDictionary *)dictionary publicKeyWithContentsOfFile:(NSString *)path;
@end
