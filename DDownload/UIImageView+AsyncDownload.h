//
//  UIImageView+AsyncDownload.h
//  ZYImageDownloadManager
//
//  Created by SXF on 2017/4/1.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (AsyncDownload)

- (void)setImageWithURL:(NSURL *)url;
- (void)setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;

@end
