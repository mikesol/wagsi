import * as vscode from 'vscode';

export type ThunkThunk = () => () => void;
export type DidSaveCb = (data: vscode.TextDocument) => () => void;
export type UriDiagnostics = {
	uri: vscode.Uri, diagnostics: vscode.Diagnostic[]
}
export type HandleDiagnosticsCallback = (uriDiagnostics: UriDiagnostics) => () => void;