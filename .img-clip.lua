return {
	default = {
		filetypes = {
			tex = {
				template = [[
%\begin{figure}[h]
	%\centering
	\includegraphics[width=0.8\textwidth]{$FILE_NAME}
	%\caption{$CURSOR}
	%\label{fig:$LABEL}
%\end{figure}
				]],
			},
		},
	},
}

