//
//  NSObject+Nodelike.m
//  Nodelike
//
//  Created by Sam Rijs on 2/2/14.
//  Copyright (c) 2014 Sam Rijs.
//
//  This Source Code Form is subject to the terms of the Mozilla Public
//  License, v. 2.0. If a copy of the MPL was not distributed with this
//  file, You can obtain one at http://mozilla.org/MPL/2.0/.

#import "NSObject+Nodelike.h"

#import "objc/runtime.h"

@implementation NSObject (Nodelike)

- (id)nodelikeGet:(void *)key {
    return objc_getAssociatedObject(self, key);
}

- (void)nodelikeSet:(void *)key toValue:(id)value {
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN);
}

@end
