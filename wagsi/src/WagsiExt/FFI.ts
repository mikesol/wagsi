const addCb = <V>(store: Record<string, V>) => (key: string) => (cb: V) => (): void => {
  store[key] = cb;
}

const removeCb = <V>(store: Record<string, V>) => (key: string) => (): void => {
  delete store[key];
}

export const setDidSaveCallback = addCb;
export const setHandleDiagnosticsCallback = addCb;
export const setStartLoopCallback = addCb;
export const setStopLoopCallback = addCb;
export const setDiagnosticsBeginCallback = addCb;
export const setDiagnosticsEndCallback = addCb;
export const removeDidSaveCallback = removeCb;
export const removeHandleDiagnosticsCallback = removeCb;
export const removeStartLoopCallback = removeCb;
export const removeStopLoopCallback = removeCb;
export const removeDiagnosticsBeginCallback = removeCb;
export const removeDiagnosticsEndCallback = removeCb;
