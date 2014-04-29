/*
 * Copyright 2014 Aaron Sarazan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <Foundation/Foundation.h>

@interface ASUserPrefs : NSObject

+ (NSDictionary *)dictionary;

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
