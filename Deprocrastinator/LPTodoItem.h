//
//  LPTodoItem.h
//  Deprocrastinator
//
//  Created by Sherrie Jones on 3/16/15.
//  Copyright (c) 2015 Sherrie Jones. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPTodoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property NSNumber *priority;

- (void)deleteItem;

@end
