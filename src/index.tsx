import React from 'react';
import { Platform, View } from 'react-native';
import type { ViewProps } from 'react-native';
import { LiquidGlassView as LiquidGlassViewNative } from './LiquidGlassView';

type Props = ViewProps & {
  onPress?: () => void;
};

const LiquidGlassView: React.FC<Props> = (props) => {
  if (
    Platform.OS === 'android' ||
    (Platform.OS === 'ios' && Number(Platform.Version) < 26)
  ) {
    return <View {...props} />;
  }

  return <LiquidGlassViewNative {...props} />;
};

export default LiquidGlassView;
