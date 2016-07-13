//
//  UITableView+ADPDragTV.h
//  tableViewExtention
//
//  Created by Adapter on 16/7/13.
//  Copyright © 2016年 15625104351@163.com All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^exchangeCellBlock)(NSIndexPath * fromIndexPath, NSIndexPath * toIndexpath);

@interface UITableView (ADPDragTV)
/**
 *  统一拖拽后才能实现效果
 */
- (void)agreeLongPressDarg;
/**
 *  完成拖拽后只是表象更改位置，根据返回的数据做操纵
 */
- (void)finishExchange:(exchangeCellBlock)returnBlock;
@end
