export interface ApplicationContextUpdateData {
  data: object;
}

export interface WatchConnectivityOperationResult {
  success: boolean;
  message?: string;
}

export interface WatchAvailability {
  isAvailable: boolean;
}

export interface IonicWatchConnectivityPlugin {
  isWatchAvailable(): Promise<WatchAvailability>;
  updateApplicationContext(data: ApplicationContextUpdateData): Promise<WatchConnectivityOperationResult>;
}
