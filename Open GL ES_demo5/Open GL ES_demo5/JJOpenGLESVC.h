//
//  JJOpenGLESVC.h
//  Open GL ES_demo5
//
//  Created by mac on 2018/1/10.
//  Copyright © 2018年 DaoKeLegend. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

@class JJVertexAttribArrayBuffer;

@interface JJOpenGLESVC : GLKViewController

@property (strong, nonatomic) GLKBaseEffect *baseEffect;
@property (strong, nonatomic) JJVertexAttribArrayBuffer *vertexBuffer;

@end
