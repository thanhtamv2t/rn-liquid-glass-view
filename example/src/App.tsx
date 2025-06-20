import {
  Dimensions,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { LiquidGlassView } from 'react-native-liquid-glass';

const GlassView = () => {
  return (
    <LiquidGlassView style={styles.box}>
      <Text style={styles.text}>Hello</Text>
    </LiquidGlassView>
  );
};

export default function App() {
  return (
    <View style={styles.container}>
      <Text style={styles.textAbsolute}>Hello</Text>
      <ScrollView style={styles.scrollView}>
        <Image source={require('./cc.jpg')} />
        <Image source={require('./cc.jpg')} />
        <Image source={require('./cc.jpg')} />
      </ScrollView>
      <View style={styles.boxContainer}>
        <GlassView />
        {/* <GlassView />
        <GlassView />
        <GlassView />
        <GlassView /> */}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 64,
    height: 300,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  boxContainer: {
    // flexDirection: 'row',
    position: 'absolute',
    gap: 10,
  },
  text: {
    color: 'white',
    fontSize: 30,
    fontWeight: 'bold',
  },
  textAbsolute: {
    color: 'white',
    fontSize: 30,
    fontWeight: 'bold',
  },
  scrollView: {
    flex: 1,
    width: Dimensions.get('window').width,
  },
});
