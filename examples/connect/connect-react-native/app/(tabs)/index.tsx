import {Image, StyleSheet, Button, Linking} from 'react-native';

import { HelloWave } from '@/components/HelloWave';
import * as WebBrowser from 'expo-web-browser';
import ParallaxScrollView from '@/components/ParallaxScrollView';
import { ThemedText } from '@/components/ThemedText';
import { ThemedView } from '@/components/ThemedView';
import {CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT} from "@/app/(tabs)/SECRET";
import {DiscoveryDocument, makeRedirectUri, useAuthRequest} from "expo-auth-session";
import React from "react";
import {AuthRequestConfig} from "expo-auth-session/src/AuthRequest.types";


// TODO - Do we want hard-coded dev?
const redirectUriScheme = "exp";
const redirectUri = `${redirectUriScheme}://mobilecomplete`;
const url =
    `https://mewmba.ngrok.dev/connect/launch-test?idvProviderSelection=trinsicfake&authToken=${encodeURIComponent(CONNECT_RP_AUTH_TOKEN_DO_NOT_COMMIT)}&redirect_uri=${encodeURIComponent(redirectUri)}`;


const config: AuthRequestConfig = {
    redirectUri: makeRedirectUri({scheme: redirectUriScheme}),
    clientId: "N/A",
    scopes: ['N/A'],
    clientSecret: "N/A"
};
const discovery:DiscoveryDocument = {
    authorizationEndpoint: url
};

WebBrowser.maybeCompleteAuthSession();

export default function HomeScreen() {
    const [request, response, promptAsync] = useAuthRequest(config,discovery);

    React.useEffect(() => {
        console.log('Response:', response);
        if (response?.type === 'success') {
            const { code } = response.params;
            console.log('Code:', code);
        }
    }, [response]);

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
        <Button title="Login Connect" onPress={() => {
            console.log('Prompting Login');
            promptAsync({ url: url}).then((result) => {
                console.log('Prompt Result:', result);
            });
        }} disabled={!request} />
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
