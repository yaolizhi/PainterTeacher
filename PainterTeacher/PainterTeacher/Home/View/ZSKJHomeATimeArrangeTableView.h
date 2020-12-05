//
//  ZSKJHomeATimeArrangeTableView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/5.
//

#import "SSKJ_TableView.h"
#import "ZSKJHomeATimeArrangeTableViewCell.h"


NS_ASSUME_NONNULL_BEGIN




#pragma mark 时间管理(正式课和试听课)

@interface ZSKJHomeATimeArrangeTableView : SSKJ_TableView <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, assign) InitType enterType;



@end

NS_ASSUME_NONNULL_END
