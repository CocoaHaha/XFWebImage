//
//  ViewController.m
//  DDownload
//
//  Created by SXF on 2017/4/1.
//  Copyright © 2017年 SXF. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+AsyncDownload.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (retain, nonatomic) UITableView *tableView;
@property (retain, nonatomic) NSArray *urls;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.urls = @[@"http://img0.bdstatic.com/img/image/shouye/sheying0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/bizhi0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/mingxing0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/lvyou0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/dongman0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/qiche0304.jpg",
                  @"http://img0.bdstatic.com/img/image/shouye/sheji0304.jpg"];
    
//    self.urls = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"0.jpg"];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    [self.view addSubview:self.tableView];
    
    [self.tableView reloadData];
   
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor lightGrayColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.rowHeight = 100.f;
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = self.urls[indexPath.row%7];
//    [cell.imageView setImageWithURL:[NSURL URLWithString:_urls[indexPath.row%7]]];
    [cell.imageView setImageWithURL:[NSURL URLWithString:_urls[indexPath.row%7]] placeholderImage:[UIImage imageNamed:@"0.jpg"]];

    return cell;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
