//
//  ZSKJTabBarController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJTabBarController.h"
#import "ZSKJHomeViewController.h"
#import "ZSKJCourseViewController.h"
#import "ZSKJEvaluationViewController.h"
#import "ZSKJMineViewController.h"
#import "ZSKJNavigationViewController.h"
#import "ZSKJLoginViewController.h"





@interface ZSKJTabBarController () <UITabBarControllerDelegate>

@end

@implementation ZSKJTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setDelegate:self];
    //添加home
    ZSKJHomeViewController *home = [[ZSKJHomeViewController alloc]init];
    ZSKJNavigationViewController *homeNav = [[ZSKJNavigationViewController alloc] initWithRootViewController:home];
    [home setTabBarItemImage:@""];
    [home setTabBarItemSelectedImage:@""];
    [home setTabBarItemTitle:@"首页"];
    [self addChildViewController:homeNav];
    
    
    //添加home
    ZSKJCourseViewController *course = [[ZSKJCourseViewController alloc]init];
    ZSKJNavigationViewController *courseNav = [[ZSKJNavigationViewController alloc] initWithRootViewController:course];
    [course setTabBarItemImage:@""];
    [course setTabBarItemSelectedImage:@""];
    [course setTabBarItemTitle:@"课程"];
    [self addChildViewController:courseNav];
    
    
    //添加home
    ZSKJEvaluationViewController *evaluation = [[ZSKJEvaluationViewController alloc]init];
    ZSKJNavigationViewController *evaluationNav = [[ZSKJNavigationViewController alloc] initWithRootViewController:evaluation];
    [evaluation setTabBarItemImage:@""];
    [evaluation setTabBarItemSelectedImage:@""];
    [evaluation setTabBarItemTitle:@"课后单"];
    [self addChildViewController:evaluationNav];
    
    
    //添加home
    ZSKJMineViewController *mine = [[ZSKJMineViewController alloc]init];
    ZSKJNavigationViewController *mineNav = [[ZSKJNavigationViewController alloc] initWithRootViewController:mine];
    [mine setTabBarItemImage:@""];
    [mine setTabBarItemSelectedImage:@""];
    [mine setTabBarItemTitle:@"我的"];
    [self addChildViewController:mineNav];
    

}



- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if (tabBarController.selectedIndex == 3)
    {
        NSLog(@"点了我的");
        
        
        
    }
    else
    {
    }
}



@end
