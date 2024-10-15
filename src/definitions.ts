export interface ApplicationContextUpdateData {
  data: object;
}

export interface WatchConnectivityOperationResult {
  success: boolean;
  message?: string;
}

export interface IonicWatchConnectivityPlugin {
  isWatchAvailable(): Promise<boolean>;
  updateApplicationContext(data: ApplicationContextUpdateData): Promise<WatchConnectivityOperationResult>;
}
