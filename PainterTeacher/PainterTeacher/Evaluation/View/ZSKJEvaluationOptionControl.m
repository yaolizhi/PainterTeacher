//
//  ZSKJEvaluationOptionControl.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/30.
//


#define duration 0.2

#import "ZSKJEvaluationOptionControl.h"


@interface ZSKJEvaluationOptionControl ()

@property (nonatomic, strong) UIButton *oneBtn;
@property (nonatomic, strong) UIButton *twoBtn;
@property (nonatomic, assign) NSInteger index; //!< 记住当前选择



@property (nonatomic,weak) id <ZSKJEvaluationOptionControlDeletage> deletage;


@end




@implementation ZSKJEvaluationOptionControl




- (instancetype)initWithFrame:(CGRect)frame withDeletage:(id<ZSKJEvaluationOptionControlDeletage>)deletage
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setDeletage:deletage];
        [self setBackgroundColor:KWhiteColor];
        
        [self addSubview:self.oneBtn];
        [self addSubview:self.twoBtn];
        
        [self.oneBtn setFrame:CGRectMake(15.0, 12.5, 125, 25)];
        [self.twoBtn setFrame:CGRectMake(self.oneBtn.right,self.oneBtn.y , self.oneBtn.width, self.oneBtn.height)];
        
        [self.oneBtn setCornerRadius:12.5];
        [self.twoBtn setCornerRadius:12.5];
    }
    return self;
}


-(void)setOneTitle:(NSString*)oneTitle withTwoTitle:(NSString*)twoTitle
{
    [self.oneBtn setTitle:oneTitle forState:UIControlStateNormal];
    [self.twoBtn setTitle:twoTitle forState:UIControlStateNormal];
}




/// 选中第几个
/// @param index 默认选择第一个下标为0
-(void)setIndexTag:(NSInteger)index
{
    [self setIndex:index];
    [self.oneBtn setSelected:NO];
    [self.twoBtn setSelected:NO];
    [self.oneBtn setBackgroundColor:KWhiteColor];
    [self.twoBtn setBackgroundColor:KWhiteColor];
    switch (index)
    {
        case 0:
        {
            [self.oneBtn setSelected:YES];
            [self.oneBtn setBackgroundColor:KMainColor];
        }
            break;
        case 1:
        {
            [self.twoBtn setSelected:YES];
            [self.twoBtn setBackgroundColor:KMainColor];
        }
            break;
    }
    
    
    if ([self.deletage respondsToSelector:@selector(optionItemAction:)])
    {
        [self.deletage optionItemAction:index];
    }
}


-(void)itemAction:(UIButton*)sender
{
    
    [self.oneBtn setSelected:NO];
    [self.twoBtn setSelected:NO];
    [self.oneBtn setBackgroundColor:KWhiteColor];
    [self.twoBtn setBackgroundColor:KWhiteColor];
    
    [sender setSelected:YES];
    [sender setBackgroundColor:KMainColor];
    
    

    if (self.index != sender.tag)
    {
        [self setIndex:sender.tag];
        if ([self.deletage respondsToSelector:@selector(optionItemAction:)])
        {
            [self.deletage optionItemAction:sender.tag];
        }
    }
}




#pragma mark - Getter / Setter
-(UIButton *)oneBtn
{
    if (!_oneBtn)
    {
        _oneBtn = [[UIButton alloc]init];
        [_oneBtn addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
        [_oneBtn setTitleColor:KTextColor forState:UIControlStateNormal];
        [_oneBtn setTitleColor:KWhiteColor forState:UIControlStateSelected];
        [_oneBtn setTag:0];
    }
    return _oneBtn;
}


-(UIButton *)twoBtn
{
    if (!_twoBtn)
    {
        _twoBtn = [[UIButton alloc]init];
        [_twoBtn addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
        [_twoBtn setTitleColor:KTextColor forState:UIControlStateNormal];
        [_twoBtn setTitleColor:KWhiteColor forState:UIControlStateSelected];
        [_twoBtn setTag:1];
    }
    return _twoBtn;
}




@end





