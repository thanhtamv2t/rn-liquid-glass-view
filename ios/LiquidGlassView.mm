#import "LiquidGlassView.h"

#ifdef RCT_NEW_ARCH_ENABLED
#import <react/renderer/components/RNLiquidGlassViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/EventEmitters.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/Props.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#endif

#ifdef RCT_NEW_ARCH_ENABLED

using namespace facebook::react;

@interface LiquidGlassView () <RCTLiquidGlassViewViewProtocol>


#else
@interface LiquidGlassView ()
#endif // RCT_NEW_ARCH_ENABLED
@end

@implementation LiquidGlassView

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.userInteractionEnabled = YES;

    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    [self addGestureRecognizer:tapGesture];
  }
  return self;
}

- (void)handleTap
{
  if (self.onPress) {
    self.onPress(@{});
  }
}


#ifdef RCT_NEW_ARCH_ENABLED
Class<RCTComponentViewProtocol> LiquidGlassViewCls(void)
{
    return LiquidGlassView.class;
}
#endif // RCT_NEW_ARCH_ENABLED
@end

