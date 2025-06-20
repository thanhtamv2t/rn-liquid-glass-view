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

@implementation LiquidGlassView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<LiquidGlassViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const LiquidGlassViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<LiquidGlassViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<LiquidGlassViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> LiquidGlassViewCls(void)
{
    return LiquidGlassView.class;
}

@end
#endif
