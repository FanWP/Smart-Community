//
//  LeftTableViewCell.m
//  IntelligenceCommunity
//
//  Created by apple on 16/12/6.
//  Copyright © 2016年 mumu. All rights reserved.
//

#import "LeftTableViewCell.h"

@interface LeftTableViewCell ()

@property(nonatomic,strong) CALayer *lineLayer;

@end

@implementation LeftTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initializeComponent];
        self.accessoryType = UITableViewCellAccessoryNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}
-(void)initializeComponent{
    
    __weak typeof(self) weakSelf = self;
    
    _categoryTitleLabel = [[UILabel alloc] init];
    _categoryTitleLabel.text = @"分类名";;
    _categoryTitleLabel.textColor = [UIColor grayColor];
    _categoryTitleLabel.textAlignment = NSTextAlignmentCenter;
    _categoryTitleLabel.highlightedTextColor = [UIColor brownColor];
    _categoryTitleLabel.font = UIFontLarge;
    [self.contentView addSubview:_categoryTitleLabel];
    [_categoryTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(weakSelf.mas_centerY);
        make.left.mas_equalTo(5);
        make.right.mas_equalTo(5);
        make.height.mas_equalTo(30);
    }];
    
    _remarkView = [[UIView alloc] init];
    [self.contentView addSubview:_remarkView];
    [_remarkView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(0);
        make.left.mas_equalTo(0);
        make.bottom.mas_equalTo(0);
        make.width.mas_equalTo(5);
    }];
    self.remarkView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.remarkView];

    _lineLayer = [[CALayer alloc] init];
    _lineLayer.backgroundColor = [UIColor groupTableViewBackgroundColor].CGColor;
    [self.contentView.layer  addSublayer:_lineLayer];
}
-(void)layoutSubviews{
    [super layoutSubviews];
    _lineLayer.frame = CGRectMake(0, self.height-1, self.width, 1);
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    self.highlighted = selected;
    self.categoryTitleLabel.highlighted = selected;
    self.remarkView.backgroundColor = selected ? [UIColor brownColor] : [UIColor whiteColor];
}

@end
