import { ThunkThunk, DidSaveCb, HandleDiagnosticsCallback } from './TSTypes';


const addCb = <V>(store: Record<string, V>) => (key: string) => (cb: V) => (): void => {
  store[key] = cb;
}

const removeCb = <V>(store: Record<string, V>) => (key: string) => (): void => {
  delete store[key];
}

export const setDidSaveCallback = addCb;
export const setHandleDiagnosticsCallbacks = addCb;
export const setStartLoopCallbacks = addCb;
export const setStopLoopCallbacks = addCb;
export const setDiagnosticsBeginCallbacks = addCb;
export const setDiagnosticsEndCallbacks = addCb;
export const removeDidSaveCallback = addCb;
export const removeHandleDiagnosticsCallbacks = addCb;
export const removeStartLoopCallbacks = addCb;
export const removeStopLoopCallbacks = addCb;
export const removeDiagnosticsBeginCallbacks = addCb;
export const removeDiagnosticsEndCallbacks = addCb;
