//
//  UIImageView+AsyncDownload.m
//  ZYImageDownloadManager
//
//  Created by SXF on 2017/4/1.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import "UIImageView+AsyncDownload.h"
#import "ZYImageManager.h"

@implementation UIImageView (AsyncDownload)

//类别中的方法 指的都是调用类别方法的对象

- (void)setImageWithURL:(NSURL *)url
{
    [self setImageWithURL:url placeholderImage:nil];
}

- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder
{
    self.image = placeholder;
    
    //给图片管理类一个URL和一个imageView 让管理类去下载并且给imageView设置image
    //self指的是调用本方法的对象
    [[ZYImageManager shareImageManager] downloadImageWithURL:url forImageView:self];
}

@end








