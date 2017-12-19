//
//  HRCustomImageButton.h
//  HRCustomImageButton
//
//  Created by 何发松 on 2017/12/19.
//  Copyright © 2017年 HeRay. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ImageButtonImagePosition) {
    ImageButtonImagePositionNone,
    ImageButtonImagePositionLeft,
    ImageButtonImagePositionTop,
    ImageButtonImagePositionRight,
    ImageButtonImagePositionBottom
};

@interface HRCustomImageButton : UIButton
@property (nonatomic) ImageButtonImagePosition position;
@property (nonatomic) UIImage *buttonImage;
@property (nonatomic) UIImage *buttonSelectedImage;
@property (nonatomic,copy) NSString *buttonTitle;
@property (nonatomic,copy) NSString *buttonSelectedTitle;
@property (nonatomic) CGFloat space;
@property (nonatomic) UIFont *titleFont;
@end
