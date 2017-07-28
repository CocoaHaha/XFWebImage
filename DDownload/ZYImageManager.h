//
//  ZYImageManager.h
//  ZYImageDownloadManager
//
//  Created by SXF on 2017/4/1.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//图片管理类
//单例类

@interface ZYImageManager : NSObject
{
    //下载图片的操作队列
    NSOperationQueue *_queue;
    //内存中的存储图片的容器
    NSMutableDictionary *_imageCaches;
}

@property (nonatomic, retain) NSMutableDictionary *imageCaches;

+ (ZYImageManager *)shareImageManager;

- (void)downloadImageWithURL:(NSURL *)url forImageView:(UIImageView *)imageView;

- (NSString *)getFilePath:(NSString *)fileName;

- (NSString *)getFileDirectoryPath;

@end








