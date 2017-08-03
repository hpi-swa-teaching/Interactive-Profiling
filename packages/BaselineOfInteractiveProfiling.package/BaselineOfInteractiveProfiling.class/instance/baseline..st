baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec
				"package: 'Kernel-Methods';"
				"package: 'Kernel-Processes';"
				"package: 'Morphic-Kernel';"
				"package: 'Morphic-Menus-DockingBar';"
				package: 'System-Tools';
				package: 'Tools-Debugger';
				package: 'TimeProfileBrowser-Tests' with: [ spec requires: #('default')].
			spec
				group: 'default' with: #('System-Tools' 'Tools-Debugger');
				group: 'Tests' with: #('TimeProfileBrowser-Tests');
				group: 'TravisCI' with: #('Tests') ]
