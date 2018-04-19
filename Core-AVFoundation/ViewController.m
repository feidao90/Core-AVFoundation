//
//  ViewController.m
//  Core-AVFoundation
//
//  Created by 何广忠 on 2018/4/19.
//  Copyright © 2018年 Gaivin. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSTimer *timer =  [NSTimer timerWithTimeInterval:2. repeats:YES block:^(NSTimer * _Nonnull timer) {
        [self speekTest];
    }];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}


#pragma mark - 语音合成播放
- (void)speekTest
{
    AVSpeechSynthesizer * synthsizer = [[AVSpeechSynthesizer alloc] init];
    AVSpeechUtterance * utterance = [[AVSpeechUtterance alloc] initWithString:@"您好，非道先生"];//需要转换的文本
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"];//国家语言
    /*
     "[AVSpeechSynthesisVoice 0x978a0b0] Language: th-TH",
     "[AVSpeechSynthesisVoice 0x977a450] Language: pt-BR",
     "[AVSpeechSynthesisVoice 0x977a480] Language: sk-SK",
     "[AVSpeechSynthesisVoice 0x978ad50] Language: fr-CA",
     "[AVSpeechSynthesisVoice 0x978ada0] Language: ro-RO",
     "[AVSpeechSynthesisVoice 0x97823f0] Language: no-NO",
     "[AVSpeechSynthesisVoice 0x978e7b0] Language: fi-FI",
     "[AVSpeechSynthesisVoice 0x978af50] Language: pl-PL",
     "[AVSpeechSynthesisVoice 0x978afa0] Language: de-DE",
     "[AVSpeechSynthesisVoice 0x978e390] Language: nl-NL",
     "[AVSpeechSynthesisVoice 0x978b030] Language: id-ID",
     "[AVSpeechSynthesisVoice 0x978b080] Language: tr-TR",
     "[AVSpeechSynthesisVoice 0x978b0d0] Language: it-IT",
     "[AVSpeechSynthesisVoice 0x978b120] Language: pt-PT",
     "[AVSpeechSynthesisVoice 0x978b170] Language: fr-FR",
     "[AVSpeechSynthesisVoice 0x978b1c0] Language: ru-RU",
     "[AVSpeechSynthesisVoice 0x978b210] Language: es-MX",
     "[AVSpeechSynthesisVoice 0x978b2d0] Language: zh-HK",
     "[AVSpeechSynthesisVoice 0x978b320] Language: sv-SE",
     "[AVSpeechSynthesisVoice 0x978b010] Language: hu-HU",
     "[AVSpeechSynthesisVoice 0x978b440] Language: zh-TW",
     "[AVSpeechSynthesisVoice 0x978b490] Language: es-ES",
     "[AVSpeechSynthesisVoice 0x978b4e0] Language: zh-CN",
     "[AVSpeechSynthesisVoice 0x978b530] Language: nl-BE",
     "[AVSpeechSynthesisVoice 0x978b580] Language: en-GB",
     "[AVSpeechSynthesisVoice 0x978b5d0] Language: ar-SA",
     "[AVSpeechSynthesisVoice 0x978b620] Language: ko-KR",
     "[AVSpeechSynthesisVoice 0x978b670] Language: cs-CZ",
     "[AVSpeechSynthesisVoice 0x978b6c0] Language: en-ZA",
     "[AVSpeechSynthesisVoice 0x978aed0] Language: en-AU",
     "[AVSpeechSynthesisVoice 0x978af20] Language: da-DK",
     "[AVSpeechSynthesisVoice 0x978b810] Language: en-US",
     "[AVSpeechSynthesisVoice 0x978b860] Language: en-IE",
     "[AVSpeechSynthesisVoice 0x978b8b0] Language: hi-IN",
     "[AVSpeechSynthesisVoice 0x978b900] Language: el-GR",
     "[AVSpeechSynthesisVoice 0x978b950] Language: ja-JP" )
     */
    utterance.rate = 0.4f;//声速
    utterance.pitchMultiplier = 1.;        // 可在播放待定语句时候改变声调
    utterance.postUtteranceDelay = 5.; // 语音合成器在播放下一条语句的时候有短暂的停顿  这个属性指定停顿的时间
    [synthsizer speakUtterance:utterance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
