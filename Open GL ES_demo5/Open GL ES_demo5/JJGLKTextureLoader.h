//
//  JJGLKTextureLoader.h
//  Open GL ES_demo5
//
//  Created by mac on 2018/1/10.
//  Copyright © 2018年 DaoKeLegend. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GLKit/GLKit.h>

@interface AGLKTextureInfo : NSObject
{
@private
    GLuint name;
    GLenum target;
    GLuint width;
    GLuint height;
}

@property (readonly) GLuint name;
@property (readonly) GLenum target;
@property (readonly) GLuint width;
@property (readonly) GLuint height;

@end


@interface JJGLKTextureLoader : NSObject

+ (AGLKTextureInfo *)textureWithCGImage:(CGImageRef)cgImage                  
                                options:(NSDictionary *)options
                                  error:(NSError **)outError;

@end
