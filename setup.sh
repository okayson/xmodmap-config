#!/bin/bash

echo "Update bashrc..."

ThisDir=$(cd $(dirname $0); pwd)/
Bashrc=~/.bashrc
XmodmapConfig=${ThisDir}.xmodmap

grep "${XmodmapConfig}" ${Bashrc} >/dev/null
if [ $? -eq 0 ]; then
	echo "    '${XmodmapConfig}' is already setuped in '${Bashrc}'."
else
	echo "    Setup '${XmodmapConfig}' in '${Bashrc}'."
	echo "" >> ${Bashrc}
	echo "# Load custom keymappings." >> ${Bashrc}
	echo "[ -f ${XmodmapConfig} ] && xmodmap ${XmodmapConfig}" >> ${Bashrc}
	echo "    Completed. Please reload ${Bashrc}."
fi

