//
//  MyOrdersVC.m
//  IntelligenceCommunity
//
//  Created by Beibei on 16/12/17.
//  Copyright © 2016年 mumu. All rights reserved.
//

#import "MyOrdersVC.h"

@interface MyOrdersVC ()

@end

@implementation MyOrdersVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)dataMyOrders
{
//    /find/salelist/bystatus
    
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    parameters[@"userid"] = @"1";
    parameters[@"salestatus"] = @"1";// 客户版: 1.全部查 2.待付款 3.待收货 | 商户版: 4.新订单 5.催单 6.退单 7.进行中 8.已完成  9.已取消
    parameters[@"pageNum"] = @"1";
    parameters[@"pageSize"] = @"10";
    parameters[@"vendorid"] = @"1";// 门店id（需要查单个店面再订单传这个参数）
    parameters[@"saleid"] = @"1";// 订单id（当需要查询单个订单详细时，只传一个id，其他参数不传就行）
    
    NSString *urlString = [NSString stringWithFormat:@"%@find/salelist/bystatus",Smart_community_URL];
    
    [[AFHTTPSessionManager manager] POST:urlString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
