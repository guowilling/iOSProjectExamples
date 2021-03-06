//
//  SRSettingCell.h
//  LotteryInterface
//
//  Created by 郭伟林 on 15/9/22.
//  Copyright (c) 2015年 郭伟林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SRSettingItem.h"

@interface SRSettingCell : UITableViewCell

@property (nonatomic, strong) SRSettingItem *settingItem;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
