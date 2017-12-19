//
//  HRCustomImageButton.h
//  HRCustomImageButton
//
//  Created by 何发松 on 2017/12/19.
//  Copyright © 2017年 HeRay. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 图片位置

 - ImageButtonImagePositionNone: 默认
 - ImageButtonImagePositionLeft: 图片在左，文字在右，默认样式，比默认多加点空隙
 - ImageButtonImagePositionTop: 图片在上，文字在下
 - ImageButtonImagePositionRight: 图片在右，文字在左
 - ImageButtonImagePositionBottom: 图片在下，文字在上
 */
typedef NS_ENUM(NSUInteger, ImageButtonImagePosition) {
    ImageButtonImagePositionNone,
    ImageButtonImagePositionLeft,
    ImageButtonImagePositionTop,
    ImageButtonImagePositionRight,
    ImageButtonImagePositionBottom
};


/**
 自定义图片按钮，可以设置图片的位置
 */
@interface HRCustomImageButton : UIButton

/**
 图片位置
 */
@property (nonatomic) ImageButtonImagePosition position;

/**
 按钮默认状态图片
 */
@property (nonatomic) UIImage *buttonImage;

/**
 按钮选中状态图片
 */
@property (nonatomic) UIImage *buttonSelectedImage;

/**
 按钮默认状态标题
 */
@property (nonatomic,copy) NSString *buttonTitle;

/**
 按钮选中状态标题
 */
@property (nonatomic,copy) NSString *buttonSelectedTitle;

/**
 图片与文字之间的间隔
 */
@property (nonatomic) CGFloat space;

/**
 按钮标题字体，默认为[UIFont systemFontOfSize:15]
 */
@property (nonatomic) UIFont *titleFont;
@end
