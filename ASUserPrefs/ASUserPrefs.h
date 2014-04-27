//
//  ASUserPrefs.h
//  ASUserPrefs
//
//  Created by Aaron Sarazan on 4/27/14.
//  Copyright (c) 2014 Aaron Sarazan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASUserPrefs : NSObject

+ (void)destroy;
+ (void)synchronize;

+ (BOOL)boolForKey:(NSString *)key;
+ (void)setBool:(BOOL)value forKey:(NSString *)key;

+ (NSInteger)integerForKey:(NSString *)key;
+ (void)setInteger:(NSInteger)value forKey:(NSString *)key;

+ (int64_t)longForKey:(NSString *)key;
+ (void)setLong:(int64_t)value forKey:(NSString *)key;

+ (id)objectForKey:(NSString *)key;
+ (void)setObject:(id)value forKey:(NSString *)key;

@end
