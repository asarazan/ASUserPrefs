//
//  ASUserPrefs.m
//  ASUserPrefs
//
//  Created by Aaron Sarazan on 4/27/14.
//  Copyright (c) 2014 Aaron Sarazan. All rights reserved.
//

#import "ASUserPrefs.h"
#import "CueLoadingCache.h"
#import "CueSyncDictionary.h"
#import "CueSyncCollections.h"

CueSyncDictionary *_mem;

@implementation ASUserPrefs

+ (NSString *)_path;
{
    return [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, NO).firstObject
            stringByAppendingPathComponent:@"ASUserPrefs"];
}

+ (void)initialize;
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mem = [[NSDictionary dictionaryWithContentsOfFile:[self _path]] cueConcurrent];
    });
}

+ (NSDictionary *)dictionary;
{
    return [_mem dictionary];
}

+ (void)destroy;
{
    _mem = [[CueSyncDictionary alloc] init];
    [[NSFileManager defaultManager] removeItemAtPath:[self _path] error:NULL];
}

+ (void)synchronize;
{
    [[_mem dictionary] writeToFile:[self _path] atomically:YES];
}

+ (id)objectForKey:(NSString *)key;
{
    return [_mem objectForKey:key];
}

+ (void)setObject:(id)value forKey:(NSString *)key;
{
    [_mem setObject:value forKey:key];
}

+ (BOOL)boolForKey:(NSString *)key;
{
    return [[self objectForKey:key] boolValue];
}

+ (void)setBool:(BOOL)value forKey:(NSString *)key;
{
    [self setObject:@(value) forKey:key];
}

+ (NSInteger)integerForKey:(NSString *)key;
{
    return [[self objectForKey:key] integerValue];
}

+ (void)setInteger:(NSInteger)value forKey:(NSString *)key;
{
    [self setObject:@(value) forKey:key];
}

+ (int64_t)longForKey:(NSString *)key;
{
    return [[self objectForKey:key] longLongValue];
}

+ (void)setLong:(int64_t)value forKey:(NSString *)key;
{
    [self setObject:[NSNumber numberWithLongLong:value] forKey:key];
}


@end
