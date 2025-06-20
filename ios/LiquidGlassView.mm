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


+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<LiquidGlassViewComponentDescriptor>();
}



- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<LiquidGlassViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<LiquidGlassViewProps const>(props);


  // if (oldViewProps.interactive != newViewProps.interactive) {
  //   NSNumber *interactive = [NSNumber numberWithInt:newViewProps.interactive];
  //   [self setInteractive:interactive];
  // }

    [super updateProps:props oldProps:oldProps];
}

// - (void)setInteractive:(NSNumber *)interactive
// {
//   if (interactive && ![self.interactive isEqualToNumber:interactive]) {
//     _interactive = interactive;
//     [self updateInteractive];
//   }
// }

Class<RCTComponentViewProtocol> LiquidGlassViewCls(void)
{
    return LiquidGlassView.class;
}

@end
#endif
