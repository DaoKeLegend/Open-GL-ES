//
//  JJContext.h
//  Open GL ES_demo5
//
//  Created by mac on 2018/1/10.
//  Copyright © 2018年 DaoKeLegend. All rights reserved.
//

#import <GLKit/GLKit.h>

@interface JJContext : EAGLContext

{
    GLKVector4 clearColor;
}

@property (nonatomic, assign) GLKVector4 clearColor;

- (void)clear:(GLbitfield)mask;

- (void)enable:(GLenum)capability;

- (void)disable:(GLenum)capability;

- (void)setBlendSourceFunction:(GLenum)sfactor
           destinationFunction:(GLenum)dfactor;

@end
