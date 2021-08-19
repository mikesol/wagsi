import { OutputChannel } from "vscode";

export const log_ = (o: OutputChannel) => (s: string ) => () => o.appendLine(s);