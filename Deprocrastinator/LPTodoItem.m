//
//  LPTodoItem.m
//  Deprocrastinator
//
//  Created by Sherrie Jones on 3/16/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import "LPTodoItem.h"

@implementation LPTodoItem

- (void)deleteItem {
    self.itemName = nil;
    self.completed = nil;
    self.priority = nil;
}


@end

