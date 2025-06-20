#ifdef RCT_NEW_ARCH_ENABLED
#import "LiquidGlassView.h"

#import <react/renderer/components/RNLiquidGlassViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/EventEmitters.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/Props.h>
#import <react/renderer/components/RNLiquidGlassViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface LiquidGlassView () <RCTLiquidGlassViewViewProtocol>

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



Class<RCTComponentViewProtocol> LiquidGlassViewCls(void)
{
    return LiquidGlassView.class;
}

@end
#endif
