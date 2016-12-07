//
//  WKMovieWriter.h
//

#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>

@class WKMovieWriter;

@protocol WKMovieWriterDelegate<NSObject>

- (void)movieWriterDidFinishRecording:(WKMovieWriter *)recorder status:(BOOL)isCancle;

@end

@interface WKMovieWriter : NSObject

@property(nonatomic, weak) id<WKMovieWriterDelegate> delegate;

@property(nonatomic, strong, readonly) NSURL *recordingURL;

- (instancetype)initWithURL:(NSURL *)URL;

- (instancetype)initWithURL:(NSURL *)URL cropSize:(CGSize)cropSize;

- (void)setCropSize:(CGSize)size;

- (void)prepareRecording;

- (void)finishRecording;    //正常结束
- (void)cancleRecording;    //取消录制

- (void)appendAudioBuffer:(CMSampleBufferRef)sampleBuffer;

- (void)appendVideoBuffer:(CMSampleBufferRef)sampleBuffer;

@end
