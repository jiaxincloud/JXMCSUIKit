//
//  JXConversationViewController.h
//

#import "JXBaseViewController.h"

@class JXConversationViewController;

@protocol JXConversationViewControllerDelegate<NSObject>

- (void)conversationViewController:(JXConversationViewController *)conversationViewControllerr
           didSelectedConversation:(JXConversation *)conversation;

- (CGFloat)conversationViewController:(JXConversationViewController *)converstationViewController
        didLongPressConversationModel:(JXConversation *)conversation;

- (BOOL)conversationViewController:(JXConversationViewController *)conversationViewController
          shouldRemoveConversation:(JXConversation *)conversation;

@end

@interface JXConversationViewController2 : JXBaseViewController

@property(nonatomic, weak) id<JXConversationViewControllerDelegate> delegate;

@property(nonatomic, assign) CGFloat conversationListRowHeight;    // MIN is 60;

@property(nonatomic, readonly, strong) NSMutableArray *conversationList;

@property(nonatomic, strong) UITableView *contentTableView;

//- (void)removeConversation:(JXConversation *)conversation;

@end
