import {
  Dimensions,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import LiquidGlass from '../../src';

const GlassView = ({ text = 'Hello' }: { text?: string }) => {
  return (
    <LiquidGlass
      onPress={() => {
        console.log('pressed');
      }}
      style={styles.box}
    >
      <Text style={styles.text}>{text}</Text>
    </LiquidGlass>
  );
};

export default function App() {
  console.log('dddd');

  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Image source={require('./aswan.jpg')} />
        <Image source={require('./aswan.jpg')} />
        <Image source={require('./aswan.jpg')} />
      </ScrollView>
      <View style={styles.boxContainer}>
        <GlassView text="Welcome" />
        <GlassView text="To" />
        <GlassView text="Liquid" />
        <GlassView text="Glass" />
        <GlassView text="Effect" />
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
    width: 300,
    height: 64,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  boxContainer: {
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
