//
//  JJOpenglesVC.m
//  Open GL ES_demo2
//
//  Created by lucy on 2018/1/6.
//  Copyright © 2018年 com.daoKeLegend. All rights reserved.
//

#import "JJOpenglesVC.h"

//顶点属性
const GLfloat Vertices2[] = {
    
    0.5, -0.5, 0.0f,    1.0f, 0.0f, 0.0f, //右下(x,y,z坐标 + rgb颜色)
    -0.5, 0.5, 0.0f,    0.0f, 1.0f, 0.0f, //左上
    -0.5, -0.5, 0.0f,   0.0f, 0.0f, 1.0f, //左下
};

@interface JJOpenglesVC()

@property (nonatomic, strong) EAGLContext *context; //上下文环境
@property (nonatomic, strong) GLKBaseEffect *baseEffect;  //着色器效果

@end

@implementation JJOpenglesVC

#pragma mark - Override Base Function

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupContext];
    [self setupVertexBufferObject];
    [self setupBaseEffect];
}

#pragma mark - Object Private Function

/**
 设置OpenGL ES上下文
 */
- (void)setupContext
{
    self.context = [[EAGLContext alloc]initWithAPI:kEAGLRenderingAPIOpenGLES3];
    if (!self.context) {
        NSLog(@"Failed to initialize OpenGLES 2.0 context");
        exit(1);
    }
    
    GLKView *view = (GLKView *)self.view;
    view.context = self.context;
    //颜色缓冲区格式
    view.drawableColorFormat = GLKViewDrawableColorFormatRGBA8888;
    //self.context为OpenGL的"当前激活的Context"。之后所有"GL"指令均作用在这个Context上。
    if (![EAGLContext setCurrentContext:self.context]) {
        NSLog(@"Failed to set current OpenGL context");
        exit(1);
    }
}

/**
 创建Vertex Buffer 对象
 */
- (void)setupVertexBufferObject
{
    GLuint verticesBuffer;
    glGenBuffers(1, &verticesBuffer);
    glBindBuffer(GL_ARRAY_BUFFER, verticesBuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(Vertices2), Vertices2, GL_STATIC_DRAW);
    
    //开启对应的顶点属性
    glEnableVertexAttribArray(GLKVertexAttribPosition); //顶点数组缓存
    glEnableVertexAttribArray(GLKVertexAttribColor); //颜色
    
    //为vertex shader的Position和GLKVertexAttribColor配置合适的值
    glVertexAttribPointer(GLKVertexAttribPosition, 3, GL_FLOAT, GL_FALSE, sizeof(GLfloat) * 6, (GLfloat *)NULL + 0);
    glVertexAttribPointer(GLKVertexAttribColor, 3, GL_FLOAT, GL_FALSE, sizeof(GLfloat) * 6, (GLfloat *)NULL + 3);
}

//创建着色器效果

- (void)setupBaseEffect
{
    self.baseEffect = [[GLKBaseEffect alloc] init];
}

#pragma mark - GLKViewDelegate

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //启动着色器
    [self.baseEffect prepareToDraw];
    
    glClearColor(0.1f, 0.2f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    //绘制
    glDrawArrays(GL_TRIANGLES, 0, 3);
}

@end
