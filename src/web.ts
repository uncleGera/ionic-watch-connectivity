import { WebPlugin } from '@capacitor/core';

import type {
  ApplicationContextUpdateData,
  IonicWatchConnectivityPlugin,
  WatchConnectivityOperationResult,
  WatchAvailability,
} from './definitions';

export class IonicWatchConnectivityWeb extends WebPlugin implements IonicWatchConnectivityPlugin {
  async isWatchAvailable(): Promise<WatchAvailability> {
    console.log('isWatchAvailable stub');
    return { isAvailable: false };
  }

  async updateApplicationContext(data: ApplicationContextUpdateData): Promise<WatchConnectivityOperationResult> {
    console.log('updateApplicationContext stub', data);
    return { success: true };
  }
}
