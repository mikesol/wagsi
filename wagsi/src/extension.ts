import * as vscode from 'vscode';
import { Middleware } from "vscode-languageclient";
import { writeFileSync } from 'fs';
const makeid = (length: number) => {
	var result = '';
	var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	var charactersLength = characters.length;
	for (var i = 0; i < length; i++) {
		result += characters.charAt(Math.floor(Math.random() *
			charactersLength));
	}
	return result;
}

const rebuildGopher = (path: string) => {
	const nonce = makeid(32);
	writeFileSync(path,
		["module WAGSI.PutThePastBehindUs.Gopher where"
			, "import WAGSI.Plumbing.Hack (cont___w444g)"
			, "import WAGSI.PutThePastBehindUs.Wagged as Passsssssssttttttt"
			, "import WAGSI.LiveCodeHere.Wagged as Wagggggggeeeeeddddddd"
			, "nonce = \"" + nonce + "\" :: String"
			, "w_4_4_gg_ = cont___w444g Passsssssssttttttt.wagsi Wagggggggeeeeeddddddd.wagsi"
		].join("\n"));
}

let wagsi = false;

export function activate(context: vscode.ExtensionContext) {
	let ext = vscode.extensions.getExtension('nwolverson.ide-purescript');
	if (!ext) {
		console.warn("IDE PureScript Not Installed. This won't work as expected.");
	}
	let importedApi = ext ? ext.exports : { setMiddleware: () => { } };
	const output = vscode.window.createOutputChannel("wagsi");
	output.appendLine('wagsi is now active!');
	let middleware: Middleware = {
		/*
		didSave(this, data, next) {
			const fileName = data.fileName.split("/");
			const lastTwo = fileName.slice(-2);
			if (lastTwo[0] === "LiveCodeHere"
				&& lastTwo[1].indexOf("Room") !== -1
				&& lastTwo[1].slice(-5) === ".purs") {
				if (shouldThrottle) {
					return;
				}
				rebuildGopher(fileName.slice(0, -1).concat("Gopher.purs").join("/"));
				vscode.workspace.openTextDocument(fileName.slice(0, -1).concat("Wagged.purs").join("/")).then(wagged => {
					vscode.workspace.openTextDocument(fileName.slice(0, -2).concat("PutThePastBehindUs", "Gopher.purs").join("/")).then(gopher => {
						output.appendLine("Wagsi compiling room "+data.fileName);
						next(data);
						output.appendLine("Wagsi compiling wagged "+wagged.fileName);
						next(wagged);
						output.appendLine("Wagsi compiling gopher "+gopher.fileName);
						next(gopher);
						stagedChanges[data.fileName] = StagedChange.Pending;
						stagedChanges[wagged.fileName] = StagedChange.Pending;
					})
				})

			}
			return next(data);
		},
		*/
		handleDiagnostics(this, uri, diagnostics, next) {
			output.appendLine("Diagnostic from " + uri + " with length of " + diagnostics.length);
			/*const fileName = uri.path.split("/");
			const lastTwo = fileName.slice(-2);
			if (lastTwo[0] === "LiveCodeHere"
				&& lastTwo[1] === "Wagged.purs") {
				if (diagnostics.filter(i => i.severity === vscode.DiagnosticSeverity.Error).length === 0) {
					stagedChanges.length = 0;
				}
			}
			*/
			if (wagsi) {
				vscode.commands.executeCommand("purescript.build");
			}
		},
	};

	importedApi.setMiddleware(middleware);

	let startLoop = vscode.commands.registerCommand('wagsi.startLoop', () => {
		if (wagsi) {
			output.appendLine("Wagsi loop already started");
			return;
		}
		output.appendLine("Starting wagsi loop");
		wagsi = true;

		vscode.commands.executeCommand("purescript.build");
	});

	context.subscriptions.push(startLoop);

	let stopLoop = vscode.commands.registerCommand('wagsi.startLoop', () => {
		output.appendLine("Stopping wagsi loop");
		wagsi = false;
	});

	context.subscriptions.push(stopLoop);
}

// this method is called when your extension is deactivated
export function deactivate() { }
