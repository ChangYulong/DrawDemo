//
//  MLView.m
//  DrawDemo
//
//  Created by shanghaikedu on 16/1/14.
//  Copyright © 2016年 Langmuir. All rights reserved.
//

#import "MLView.h"

@implementation MLView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // 1.取得和当前视图相关联的图形上下文(因为图形上下文决定绘制的输出目标)/
    // 如果是在drawRect方法中调用UIGraphicsGetCurrentContext方法获取出来的就是Layer的上下文
    CGContextRef  ctx=UIGraphicsGetCurrentContext();//不需要*,同id
    
    // 2.绘图(绘制直线), 保存绘图信息
    // 设置起点
    CGContextMoveToPoint(ctx, 20, 100);
    //设置终点
    CGContextAddLineToPoint(ctx, 300, 100);
    
    
    //设置绘图的状态
    //设置线条的颜色为蓝色
    CGContextSetRGBStrokeColor(ctx, 0, 1.0, 0, 1.0);
    //设置线条的宽度
    CGContextSetLineWidth(ctx, 15);
    //设置线条起点和终点的样式为圆角
    CGContextSetLineCap(ctx, kCGLineCapRound);
    //设置线条的转角的样式为圆角
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    //3.渲染（绘制出一条空心的线）
    CGContextStrokePath(ctx);
    
    //    //注意线条不能渲染为实心的
    //    CGContextFillPath(ctx);
    
    
    
    //设置第二条线
    //设置第二条线的起点
    CGContextMoveToPoint(ctx, 50, 200);
    //设置第二天线的终点(自动把上一条直线的终点当做起点)
    CGContextAddLineToPoint(ctx, 300, 60);
    
    //设置绘图的状态
    //    CGContextSetRGBStrokeColor(ctx, 1.0, 0.7, 0.3, 1.0);
    //第二种设置颜色的方式
    [[UIColor grayColor] set];
    //设置线条的宽度
    CGContextSetLineWidth(ctx, 10);
    //设置线条的起点和终点的样式
    CGContextSetLineCap(ctx, kCGLineCapButt);
    
    //渲染第二条线的图形到view上
    //绘制一条空心的线
    CGContextStrokePath(ctx);
}


@end
