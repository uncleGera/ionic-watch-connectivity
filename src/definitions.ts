export interface ApplicationContextUpdateData {
  data: object;
}

export interface WatchConnectivityOperationResult {
  success: boolean;
  message?: string;
}

export interface IonicWatchConnectivityPlugin {
  updateApplicationContext(data: ApplicationContextUpdateData): Promise<WatchConnectivityOperationResult>;
}
