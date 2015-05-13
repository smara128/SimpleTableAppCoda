//
//  Recipe.h
//  SimpleTableAppCoda
//
//  Created by me on 04/10/13.
//  Copyright (c) 2013 self. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prepTime;
@property (nonatomic, strong) NSString *thumbnail; //image file
@property (nonatomic, strong) NSMutableArray *ingredients;

@end
