//
//  HRCustomImageButton.m
//  HRCustomImageButton
//
//  Created by 何发松 on 2017/12/19.
//  Copyright © 2017年 HeRay. All rights reserved.
//

#import "HRCustomImageButton.h"

@implementation HRCustomImageButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews{
    [super layoutSubviews];
    if (CGRectEqualToRect(self.frame, CGRectZero)) {
        return;
    }
    if (!_buttonImage) {
        return;
    }
    NSString *title = _buttonTitle ? _buttonTitle : @"";
    UIFont *font = _titleFont ? _titleFont : [UIFont systemFontOfSize:15];
    CGRect titleRect = [_buttonTitle boundingRectWithSize:CGSizeMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)) options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil];
    CGFloat titleWidth = titleRect.size.width;
    CGFloat titleHeight = titleRect.size.height;
    CGFloat imageWidth = _buttonImage.size.width;
    CGFloat imageHeight = _buttonImage.size.height;
    if (titleWidth + imageWidth + _space > CGRectGetWidth(self.frame)) {
        titleWidth = CGRectGetWidth(self.frame) - imageWidth - _space;
    }
    if (titleHeight +imageHeight + _space > CGRectGetHeight(self.frame)) {
        titleHeight = CGRectGetHeight(self.frame) - imageHeight - _space;
    }
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:_buttonImage forState:UIControlStateNormal];
    [self setImage:_buttonSelectedImage forState:UIControlStateSelected];
    self.titleLabel.font = font;
    switch (_position) {
        case ImageButtonImagePositionLeft:{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, _space*0.5, 0, -_space*0.5);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, -_space*0.5, 0, _space*0.5);
        }
            break;
        case ImageButtonImagePositionTop:{
            self.titleEdgeInsets = UIEdgeInsetsMake((titleHeight + _space)*0.5, -imageWidth*0.5, -((titleHeight + _space)*0.5), imageWidth*0.5);
            self.imageEdgeInsets = UIEdgeInsetsMake(-((imageHeight + _space)*0.5), titleWidth*0.5, (imageHeight + _space)*0.5, -titleWidth*0.5);
        }
            break;
        case ImageButtonImagePositionRight:{
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageWidth + _space*0.5), 0, imageWidth + _space*0.5);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth + _space + 0.5, 0, -(titleWidth + _space*0.5));
        }
            break;
        case ImageButtonImagePositionBottom:{
            self.titleEdgeInsets = UIEdgeInsetsMake(-(titleHeight + _space)*0.5, -imageWidth*0.5, (titleHeight + _space)*0.5, imageWidth*0.5);
            self.imageEdgeInsets = UIEdgeInsetsMake((imageHeight + _space)*0.5, titleWidth*0.5, -((imageHeight + _space)*0.5), -titleWidth*0.5);
        }
            break;
        default:
            break;
    }
}

@end
