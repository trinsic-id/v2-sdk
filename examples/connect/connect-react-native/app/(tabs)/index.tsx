import {Image, StyleSheet, Platform, Button, Linking} from 'react-native';

import { HelloWave } from '@/components/HelloWave';
import ParallaxScrollView from '@/components/ParallaxScrollView';
import { ThemedText } from '@/components/ThemedText';
import { ThemedView } from '@/components/ThemedView';
import {CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT} from "@/app/(tabs)/SECRET";
// import {AuthConfiguration, authorize} from "react-native-app-auth";


// TODO - Do we want hard-coded dev?
// var redirectUri = "https://mewmba.ngrok.dev/connect/mobilecomplete";
const redirectUriScheme = "dev.ngrok.mewmba";
const redirectUri = `${redirectUriScheme}://mobilecomplete`;
const url =
    `https://mewmba.ngrok.dev/connect/launch-test?idvProviderSelection=trinsicfake&authToken=${encodeURIComponent(CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT)}&redirect_uri=${encodeURIComponent(redirectUri)}`;

// const config: AuthConfiguration = {
//     clientId: 'N/A', // Not used
//     clientSecret: 'N/A', // Not used
//     redirectUrl: redirectUri,
//     serviceConfiguration: {
//         authorizationEndpoint: url,
//         tokenEndpoint: 'N/A',
//     },
//     scopes: [] // Not used
// }

async function openTrinsicConnect(): Promise<void> {
    console.log('Opening Trinsic Connect');
    try {
        // const authState = await authorize(config);
        const authState = await Linking.openURL(url);
        console.log('Auth State:', authState);
    } catch (e) {
        console.error(e);
    }

}

export default function HomeScreen() {
  return (
    <ParallaxScrollView
      headerBackgroundColor={{ light: '#A1CEDC', dark: '#1D3D47' }}
      headerImage={
        <Image
          source={require('@/assets/images/partial-react-logo.png')}
          style={styles.reactLogo}
        />
      }>
      <ThemedView style={styles.titleContainer}>
        <ThemedText type="title">Open Trinsic Connect</ThemedText>
        <HelloWave />
      </ThemedView>
        <Button title="Connect Wallet" onPress={openTrinsicConnect} />
    </ParallaxScrollView>
  );
}

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: 178,
    width: 290,
    bottom: 0,
    left: 0,
    position: 'absolute',
  },
});
