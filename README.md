# ionic-watch-connectivity

Capacitor plugin for Ionic enabling seamless watch connectivity

## Install

```bash
npm install ionic-watch-connectivity
npx cap sync
```

## API

<docgen-index>

* [`updateApplicationContext(...)`](#updateapplicationcontext)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### updateApplicationContext(...)

```typescript
updateApplicationContext(data: ApplicationContextUpdateData) => Promise<WatchConnectivityOperationResult>
```

| Param      | Type                                                                                  |
| ---------- | ------------------------------------------------------------------------------------- |
| **`data`** | <code><a href="#applicationcontextupdatedata">ApplicationContextUpdateData</a></code> |

**Returns:** <code>Promise&lt;<a href="#watchconnectivityoperationresult">WatchConnectivityOperationResult</a>&gt;</code>

--------------------


### Interfaces


#### WatchConnectivityOperationResult

| Prop          | Type                 |
| ------------- | -------------------- |
| **`success`** | <code>boolean</code> |
| **`message`** | <code>string</code>  |


#### ApplicationContextUpdateData

| Prop       | Type                |
| ---------- | ------------------- |
| **`data`** | <code>object</code> |

</docgen-api>
