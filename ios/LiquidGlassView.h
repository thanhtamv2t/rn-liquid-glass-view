// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef LiquidGlassViewNativeComponent_h
#define LiquidGlassViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface LiquidGlassView : RCTViewComponentView

@property (nonatomic, strong, nullable) UIVisualEffectView *glassEffectView;
@end

NS_ASSUME_NONNULL_END

#endif /* LiquidGlassViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
