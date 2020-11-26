//
//  CHGAudioTool.m
//  RecordVoiceDemo
//
//  Created by 姚立志 on 2020/11/26.
//  Copyright © 2020 allison. All rights reserved.
//

#import "ZSKJAudioTool.h"

@implementation ZSKJAudioTool

static NSMutableDictionary *_soundIDs;
static NSMutableDictionary *_players;



#pragma mark - 实力方法
- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self)
    {
        // 获取tmp目录路径
        NSString *tempDirectory = NSTemporaryDirectory();
        NSString *tmpPath = [tempDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.caf",name]];
        NSLog(@"临时路径：%@",tmpPath);
        
        
                             
//         NSString *path =  [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.caf",name]];
        // url : 录音文件的路径 (这里为便于测试，我用桌面路径,项目中需要用沙盒路径)
    //    [self setPath:@"/Users/yaolizhi/Desktop/audio/test.caf"];
        [self setDocumentPath:tmpPath];
        NSURL *url = [NSURL URLWithString:self.documentPath];
        
        // setting:录音的设置项
        NSDictionary *configDic = @{// 编码格式
                                    AVFormatIDKey:@(kAudioFormatLinearPCM),
                                    // 采样率
                                    AVSampleRateKey:@(11025.0),
                                    // 通道数
                                    AVNumberOfChannelsKey:@(2),
                                    // 录音质量
                                    AVEncoderAudioQualityKey:@(AVAudioQualityMax)
                                    };
        NSError *error = nil;
        self.audioRecorder = [[AVAudioRecorder alloc]initWithURL:url settings:configDic error:&error];
        [self.audioRecorder setDelegate:self];
        if (error)
        {
            NSLog(@"error:%@",error);
        }
        // 准备录音(系统会给我们分配一些资源)
        [self.audioRecorder prepareToRecord];
    }
    return self;
}


/// 开始录音
-(void)startRecord
{
    NSLog(@"开始录音");
    [self.audioRecorder record];
}

/// 停止录音
-(void)stopRecord
{
    NSLog(@"停止录音");
    [self.audioRecorder stop];
}




#pragma mark - Deletage Method
#pragma mark AVAudioRecorderDelegate
- (void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag;
{
    if (flag)
    {
        NSString *path = [LameTool audioToMP3:self.documentPath isDeleteSourchFile:NO];
        NSLog(@"mp3文件转码成功\n路径为:%@",path);
        
    }
}


- (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError * __nullable)error
{
    
}



- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
}

/* if an error occurs while decoding it will be reported to the delegate. */
- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError * __nullable)error
{
    
}





#pragma mark + 类方法
+ (void)initialize
{
    _soundIDs = [NSMutableDictionary dictionary];
    _players = [NSMutableDictionary dictionary];
}

//  播放音频
+ (void)playSoundWithSoundName:(NSString *)soundName
{
    // 1.从字典中取出之前保存的soundID
    SystemSoundID soundID = [[_soundIDs objectForKey:soundName] unsignedIntValue];
    
    // 2.如果取出为0,表示之前没有加载当前声音
    if (soundID == 0) {
        // 2.1.根据资源文件加载soundID
        CFURLRef url = (__bridge CFURLRef)[[NSBundle mainBundle] URLForResource:soundName withExtension:nil];
        AudioServicesCreateSystemSoundID(url, &soundID);
        
        // 2.2.存入字典
        [_soundIDs setObject:@(soundID) forKey:soundName];
    }
    
    // 3.播放声音
    AudioServicesPlaySystemSound(soundID);
}


// 开始播放音乐
+ (AVAudioPlayer *)playMusicWithMusicName:(NSString *)musicName
{
    // 1.从字典中取出之前保存的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2.判断播放器是否为nil,如果为空,则创建播放器
    if (player == nil)
    {
        // 2.1.加载对应的资源
        
        
        NSString *tempDirectory = NSTemporaryDirectory();
        NSString *tmpPath = [tempDirectory stringByAppendingPathComponent:musicName];
        
        // 2.2.创建播放器
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL URLWithString:tmpPath] error:nil];
        [player setDelegate:self];
        
        // 2.3.将播放器存入字典
        [_players setObject:player forKey:musicName];
    }
    
    // 3.播放音乐
    [player play];
    
    return player;
}

// 暂停播放音乐
+ (void)pauseMusicWithMusicName:(NSString *)musicName
{
    // 1.从字典中取出之前保存的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2.判断播放器是否为空,如果不为空,则暂停
    if (player)
    {
        [player pause];
    }
}

// 停止播放音乐
+ (void)stopMusicWithMusicName:(NSString *)musicName
{
    // 1.从字典中取出之前保存的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2.判断播放器是否为空,如果不为空,则停止音乐
    if (player) {
        [player stop];
        [_players removeObjectForKey:musicName];
    }
}

@end
