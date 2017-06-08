//
//  ViewController.m
//  lashenTest
//
//  Created by 刘杰 on 2017/6/8.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "ViewController.h"
#import "NSString+FitSize.h"
@interface ViewController ()

@property (nonatomic, strong) UIImageView *backImageView;
@property (nonatomic, strong) UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.backImageView];
    [self.view addSubview:self.testLabel];
    NSString *tempText = @"lkjsdfjlsdjfolwrenmfoienociewoifnweoifnjeiofnoirenfioernfiorehftguioehrofgjekfnsdkjfnsduihfgui4renjfkedmnfkdnuifghndfighnf";
    self.testLabel.text = tempText;
    CGSize viewSize = [NSString sizeWithString:tempText textFont:self.testLabel.font maxSize:CGSizeMake(200, 0)];
    self.backImageView.frame = CGRectMake(50, 100, viewSize.width + 20, viewSize.height + 20);
    self.testLabel.frame = CGRectMake(60, 110, viewSize.width, viewSize.height);
}



- (UIImageView *)backImageView {
    if (!_backImageView) {
        _backImageView = [[UIImageView alloc] init];
        UIImage *testImage = [UIImage imageNamed:@"yuanjiao"];

        testImage = [testImage resizableImageWithCapInsets:UIEdgeInsetsMake(20, 30, 20, 30) resizingMode:UIImageResizingModeTile];
        _backImageView.image = testImage;
        
    }
    return _backImageView;
}

- (UILabel *)testLabel {
    if (!_testLabel) {
        _testLabel = [[UILabel alloc] init];
        _testLabel.numberOfLines = 0;
        _testLabel.textColor = [UIColor blackColor];
    }
    return _testLabel;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
