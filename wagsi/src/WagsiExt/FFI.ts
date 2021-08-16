import { ThunkThunk, DidSaveCb, HandleDiagnosticsCallback } from './TSTypes';


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
export const removeDidSaveCallback = addCb;
export const removeHandleDiagnosticsCallback = addCb;
export const removeStartLoopCallback = addCb;
export const removeStopLoopCallback = addCb;
export const removeDiagnosticsBeginCallback = addCb;
export const removeDiagnosticsEndCallback = addCb;
