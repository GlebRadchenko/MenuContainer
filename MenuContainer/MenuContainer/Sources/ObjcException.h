//
//  ObjcException.h
//  MenuContainer
//
//  Created by GlebRadchenko on 2/9/17.
//  Copyright © 2017 Gleb Radchenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjC : NSObject

+ (void)catchException: (void (^)(void))tryBlock;

@end
