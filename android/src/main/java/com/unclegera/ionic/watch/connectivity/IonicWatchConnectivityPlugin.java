package com.unclegera.ionic.watch.connectivity;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "IonicWatchConnectivity")
public class IonicWatchConnectivityPlugin extends Plugin {

    private IonicWatchConnectivity implementation = new IonicWatchConnectivity();

    @PluginMethod
    public void methodThatRequiresIOS(PluginCall call) {
         call.unimplemented("Not implemented on Android.");
     }
}
