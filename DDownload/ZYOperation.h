//
//  ZYOperation.h
//  ZYImageDownloadManager
//
//  Created by SXF on 2017/4/1.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
///专门用来操作下载图片的类
@interface ZYOperation : NSOperation

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, copy) NSURL *url;

- (id)initWithURL:(NSURL *)url andImageView:(UIImageView *)imageView;

@end






