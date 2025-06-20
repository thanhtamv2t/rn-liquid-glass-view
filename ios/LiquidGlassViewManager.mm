#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "LiquidGlassView.h"
#import "Utils.h"

@interface LiquidGlassViewManager : RCTViewManager
@end

@implementation LiquidGlassViewManager

RCT_EXPORT_MODULE(LiquidGlassView)

- (UIView *)view {


  UIGlassEffect *glassEffect = [[UIGlassEffect alloc] init];
  glassEffect.interactive = YES;

  UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:glassEffect];
  effectView.backgroundColor = [UIColor clearColor];

  LiquidGlassView *containerView = [[LiquidGlassView alloc] init];
  containerView.backgroundColor = [UIColor clearColor];


  effectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

  [containerView addSubview:effectView];
  containerView.layer.masksToBounds = YES ;

  return containerView;
}

RCT_EXPORT_VIEW_PROPERTY(interactive, BOOL);
RCT_EXPORT_VIEW_PROPERTY(tintColor, NSString);

// RCT_EXPORT_VIEW_PROPERTY(blurType, NSString);
// RCT_EXPORT_VIEW_PROPERTY(blurAmount, NSNumber);
// RCT_EXPORT_VIEW_PROPERTY(reducedTransparencyFallbackColor, UIColor);




@end
