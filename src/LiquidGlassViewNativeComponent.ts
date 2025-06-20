import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps } from 'react-native';
import type { BubblingEventHandler } from 'react-native/Libraries/Types/CodegenTypes';

interface NativeProps extends ViewProps {
  onPress?: BubblingEventHandler<{}>;
}

export default codegenNativeComponent<NativeProps>('LiquidGlassView');
