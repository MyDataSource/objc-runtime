//
//  Person.h
//  objcDebug
//
//  Created by Apple on 2020/6/17.
//  Copyright © 2020 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(strong) NSString *name;
@property(assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END
