//
//  JJOpenglesVC.h
//  Open GL ES——demo4
//
//  Created by mac on 2018/1/8.
//  Copyright © 2018年 DaoKeLegend. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@class JJGLKElementIndexArrayBuffer;

@interface JJOpenglesVC : GLKViewController

@property (strong, nonatomic) GLKBaseEffect *baseEffect;
@property (strong, nonatomic) JJGLKElementIndexArrayBuffer *vertexBuffer;

@end
