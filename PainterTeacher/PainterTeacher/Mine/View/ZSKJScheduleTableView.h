//
//  ZSKJScheduleTableView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/4.
//

#import "SSKJ_TableView.h"
#import "ZSKJScheduleTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJScheduleTableView : SSKJ_TableView <UITableViewDelegate,UITableViewDataSource>


@property (nonatomic, assign) ZSKJScheduleModelType type;






@end

NS_ASSUME_NONNULL_END
