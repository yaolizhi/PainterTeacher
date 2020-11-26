//
//  ZSKJAudioTool.h
//  RecordVoiceDemo
//
//  Created by 姚立志 on 2020/11/26.
//  Copyright © 2020 allison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "LameTool.h"




@interface ZSKJAudioTool : NSObject <AVAudioPlayerDelegate,AVAudioRecorderDelegate>


@property (nonatomic, strong) AVAudioRecorder *audioRecorder;
@property (nonatomic, copy) NSString *documentPath;




#pragma mark - 实例方法
/// 根据录音名称进行初始化
/// @param name 录音文件
- (instancetype)initWithName:(NSString*)name;





/// 开始录音
-(void)startRecord;


/// 停止录音
-(void)stopRecord;




#pragma mark - +类方法
/**
 *  根据音效文件名开始播放音效
 *
 *  @param soundName 音效名称
 */
+ (void)playSoundWithSoundName:(NSString *)soundName;

/**
 *  根据音乐文件名开始播放音乐 返回播放器
 *
 *  @param musicName 音乐名称
 */
+ (AVAudioPlayer *)playMusicWithMusicName:(NSString *)musicName;

/**
 *  根据音乐文件名暂停播放音乐
 *
 *  @param musicName 音乐名称
 */
+ (void)pauseMusicWithMusicName:(NSString *)musicName;

/**
 *  根据音乐文件名停止播放音乐
 *
 *  @param musicName 音乐名称
 */
+ (void)stopMusicWithMusicName:(NSString *)musicName;




@end

