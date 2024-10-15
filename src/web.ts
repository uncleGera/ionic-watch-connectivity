import { WebPlugin } from '@capacitor/core';

import type {
  ApplicationContextUpdateData,
  IonicWatchConnectivityPlugin,
  WatchConnectivityOperationResult,
} from './definitions';

export class IonicWatchConnectivityWeb extends WebPlugin implements IonicWatchConnectivityPlugin {
  async updateApplicationContext(data: ApplicationContextUpdateData): Promise<WatchConnectivityOperationResult> {
    console.log('updateApplicationContext stub', data);
    return { success: true };
  }
}
