//
//  Emoji.m
//  Emoji
//
//  Created by Aliksandr Andrashuk on 26.10.12.
//  Copyright (c) 2012 Aliksandr Andrashuk. All rights reserved.
//

#import "JXEmoji.h"

@implementation JXEmoji
+ (NSString *)emojiWithCode:(int)code {
    int sym = EMOJI_CODE_TO_SYMBOL(code);
    NSString *ss = [[NSString alloc] initWithBytes:&sym length:sizeof(sym) encoding:NSUTF8StringEncoding];
    return ss;
}
+ (NSArray *)allEmoji {
    NSMutableArray *array = [NSMutableArray new];
    [array addObjectsFromArray:[JXEmojiEmoticons allEmoticons]];
  //  [array addObjectsFromArray:[EmojiMapSymbols allMapSymbols]];
  //  [array addObjectsFromArray:[EmojiPictographs allPictographs]];
  //  [array addObjectsFromArray:[EmojiTransport allTransport]];

    return array;
}
@end

@implementation JXEmojiEmoticons

//+ (NSArray *)allEmoticons {
//    NSMutableArray *array = [NSMutableArray new];
//    for (int i=0x1F600; i<=0x1F64F; i++) {
//        if (i < 0x1F641 || i > 0x1F644) {
//            [array addObject:[Emoji emojiWithCode:i]];
//        }
//    }
//    return array;
//}

+ (NSArray *)allEmoticons {
    NSMutableArray *array = [NSMutableArray new];
    NSMutableArray *localAry = [[NSMutableArray alloc] initWithObjects:
                           @"😄",
                           @"😷",
                           @"😂",
                           @"😝",
                           @"😲",
                           @"😳",
                           @"😱",
                           @"😔",
                           @"😉",
                           @"😌",
                           @"😒",
                           @"😈",
                           @"👻",
                           @"💝",
                           @"🙏",
                           @"💪",
                           @"💰",
                           @"🎂",
                           @"🎉",
                           @"🎁", nil];
    /*
    NSMutableArray * localAry = [[NSMutableArray alloc] initWithObjects:
                                 [JXEmoji emojiWithCode:0x1F60a],
                                 [JXEmoji emojiWithCode:0x1F603],
                                 [JXEmoji emojiWithCode:0x1F609],
                                 [JXEmoji emojiWithCode:0x1F62e],
                                 [JXEmoji emojiWithCode:0x1F60b],
                                 [JXEmoji emojiWithCode:0x1F60e],
                                 [JXEmoji emojiWithCode:0x1F621],
                                 [JXEmoji emojiWithCode:0x1F616],
                                 [JXEmoji emojiWithCode:0x1F633],
                                 [JXEmoji emojiWithCode:0x1F61e],
                                 [JXEmoji emojiWithCode:0x1F62d],
                                 [JXEmoji emojiWithCode:0x1F610],
                                 [JXEmoji emojiWithCode:0x1F607],
                                 [JXEmoji emojiWithCode:0x1F62c],
                                 [JXEmoji emojiWithCode:0x1F606],
                                 [JXEmoji emojiWithCode:0x1F631],
                                 [JXEmoji emojiWithCode:0x1F385],
                                 [JXEmoji emojiWithCode:0x1F634],
                                 [JXEmoji emojiWithCode:0x1F615],
                                 [JXEmoji emojiWithCode:0x1F637],
                                 [JXEmoji emojiWithCode:0x1F62f],
                                 [JXEmoji emojiWithCode:0x1F60f],
                                 [JXEmoji emojiWithCode:0x1F611],
                                 [JXEmoji emojiWithCode:0x1F496],
                                 [JXEmoji emojiWithCode:0x1F494],
                                 [JXEmoji emojiWithCode:0x1F319],
                                 [JXEmoji emojiWithCode:0x1f31f],
                                 [JXEmoji emojiWithCode:0x1f31e],
                                 [JXEmoji emojiWithCode:0x1F308],
                                 [JXEmoji emojiWithCode:0x1F60d],
                                 [JXEmoji emojiWithCode:0x1F61a],
                                 [JXEmoji emojiWithCode:0x1F48b],
                                 [JXEmoji emojiWithCode:0x1F339],
                                 [JXEmoji emojiWithCode:0x1F342],
                                 [JXEmoji emojiWithCode:0x1F44d],
     nil];
     */

                                  /*[Emoji emojiWithCode:0x1F602],
                                  [Emoji emojiWithCode:0x1F603],
                                  [Emoji emojiWithCode:0x1F604],
                                  [Emoji emojiWithCode:0x1F609],
                                  [Emoji emojiWithCode:0x1F613],
                                  [Emoji emojiWithCode:0x1F614],
                                  [Emoji emojiWithCode:0x1F616],
                                  [Emoji emojiWithCode:0x1F618],
                                  [Emoji emojiWithCode:0x1F61a],
                                  [Emoji emojiWithCode:0x1F61c],
                                  [Emoji emojiWithCode:0x1F61d],
                                  [Emoji emojiWithCode:0x1F61e],
                                  [Emoji emojiWithCode:0x1F620],
                                  [Emoji emojiWithCode:0x1F621],
                                  [Emoji emojiWithCode:0x1F622],
                                  [Emoji emojiWithCode:0x1F623],
                                  [Emoji emojiWithCode:0x1F628],
                                  [Emoji emojiWithCode:0x1F62a],
                                  [Emoji emojiWithCode:0x1F62d],
                                  [Emoji emojiWithCode:0x1F630],
                                  [Emoji emojiWithCode:0x1F631],
                                  [Emoji emojiWithCode:0x1F632],
                                  [Emoji emojiWithCode:0x1F633],
                                  [Emoji emojiWithCode:0x1F645],
                                  [Emoji emojiWithCode:0x1F646],
                                  [Emoji emojiWithCode:0x1F647],
                                  [Emoji emojiWithCode:0x1F64c],
                                  [Emoji emojiWithCode:0x1F6a5],
                                  [Emoji emojiWithCode:0x1F6a7],
                                  [Emoji emojiWithCode:0x1F6b2],
                                  [Emoji emojiWithCode:0x1F6b6],
                                  [Emoji emojiWithCode:0x1F302],
                                  [Emoji emojiWithCode:0x1F319],
                                  [Emoji emojiWithCode:0x1F31f],*/
    [array addObjectsFromArray:localAry];
    //    for (int i=0x1F600; i<=0x1F64F; i++) {
    //        if (i < 0x1F641 || i > 0x1F644) {
    //            [array addObject:[Emoji emojiWithCode:i]];
    //        }
    //    }
    return array;
}


EMOJI_METHOD(grinningFace,1F600);
EMOJI_METHOD(grinningFaceWithSmilingEyes,1F601);
EMOJI_METHOD(faceWithTearsOfJoy,1F602);
EMOJI_METHOD(smilingFaceWithOpenMouth,1F603);
EMOJI_METHOD(smilingFaceWithOpenMouthAndSmilingEyes,1F604);
EMOJI_METHOD(smilingFaceWithOpenMouthAndColdSweat,1F605);
EMOJI_METHOD(smilingFaceWithOpenMouthAndTightlyClosedEyes,1F606);
EMOJI_METHOD(smilingFaceWithHalo,1F607);
EMOJI_METHOD(smilingFaceWithHorns,1F608);
EMOJI_METHOD(winkingFace,1F609);
EMOJI_METHOD(smilingFaceWithSmilingEyes,1F60A);
EMOJI_METHOD(faceSavouringDeliciousFood,1F60B);
EMOJI_METHOD(relievedFace,1F60C);
EMOJI_METHOD(smilingFaceWithHeartShapedEyes,1F60D);
EMOJI_METHOD(smilingFaceWithSunglasses,1F60E);
EMOJI_METHOD(smirkingFace,1F60F);
EMOJI_METHOD(neutralFace,1F610);
EMOJI_METHOD(expressionlessFace,1F611);
EMOJI_METHOD(unamusedFace,1F612);
EMOJI_METHOD(faceWithColdSweat,1F613);
EMOJI_METHOD(pensiveFace,1F614);
EMOJI_METHOD(confusedFace,1F615);
EMOJI_METHOD(confoundedFace,1F616);
EMOJI_METHOD(kissingFace,1F617);
EMOJI_METHOD(faceThrowingAKiss,1F618);
EMOJI_METHOD(kissingFaceWithSmilingEyes,1F619);
EMOJI_METHOD(kissingFaceWithClosedEyes,1F61A);
EMOJI_METHOD(faceWithStuckOutTongue,1F61B);
EMOJI_METHOD(faceWithStuckOutTongueAndWinkingEye,1F61C);
EMOJI_METHOD(faceWithStuckOutTongueAndTightlyClosedEyes,1F61D);
EMOJI_METHOD(disappointedFace,1F61E);
EMOJI_METHOD(worriedFace,1F61F);
EMOJI_METHOD(angryFace,1F620);
EMOJI_METHOD(poutingFace,1F621);
EMOJI_METHOD(cryingFace,1F622);
EMOJI_METHOD(perseveringFace,1F623);
EMOJI_METHOD(faceWithLookOfTriumph,1F624);
EMOJI_METHOD(disappointedButRelievedFace,1F625);
EMOJI_METHOD(frowningFaceWithOpenMouth,1F626);
EMOJI_METHOD(anguishedFace,1F627);
EMOJI_METHOD(fearfulFace,1F628);
EMOJI_METHOD(wearyFace,1F629);
EMOJI_METHOD(sleepyFace,1F62A);
EMOJI_METHOD(tiredFace,1F62B);
EMOJI_METHOD(grimacingFace,1F62C);
EMOJI_METHOD(loudlyCryingFace,1F62D);
EMOJI_METHOD(faceWithOpenMouth,1F62E);
EMOJI_METHOD(hushedFace,1F62F);
EMOJI_METHOD(faceWithOpenMouthAndColdSweat,1F630);
EMOJI_METHOD(faceScreamingInFear,1F631);
EMOJI_METHOD(astonishedFace,1F632);
EMOJI_METHOD(flushedFace,1F633);
EMOJI_METHOD(sleepingFace,1F634);
EMOJI_METHOD(dizzyFace,1F635);
EMOJI_METHOD(faceWithoutMouth,1F636);
EMOJI_METHOD(faceWithMedicalMask,1F637);
EMOJI_METHOD(grinningCatFaceWithSmilingEyes,1F638);
EMOJI_METHOD(catFaceWithTearsOfJoy,1F639);
EMOJI_METHOD(smilingCatFaceWithOpenMouth,1F63A);
EMOJI_METHOD(smilingCatFaceWithHeartShapedEyes,1F63B);
EMOJI_METHOD(catFaceWithWrySmile,1F63C);
EMOJI_METHOD(kissingCatFaceWithClosedEyes,1F63D);
EMOJI_METHOD(poutingCatFace,1F63E);
EMOJI_METHOD(cryingCatFace,1F63F);
EMOJI_METHOD(wearyCatFace,1F640);
EMOJI_METHOD(faceWithNoGoodGesture,1F645);
EMOJI_METHOD(faceWithOkGesture,1F646);
EMOJI_METHOD(personBowingDeeply,1F647);
EMOJI_METHOD(seeNoEvilMonkey,1F648);
EMOJI_METHOD(hearNoEvilMonkey,1F649);
EMOJI_METHOD(speakNoEvilMonkey,1F64A);
EMOJI_METHOD(happyPersonRaisingOneHand,1F64B);
EMOJI_METHOD(personRaisingBothHandsInCelebration,1F64C);
EMOJI_METHOD(personFrowning,1F64D);
EMOJI_METHOD(personWithPoutingFace,1F64E);
EMOJI_METHOD(personWithFoldedHands,1F64F);
@end
