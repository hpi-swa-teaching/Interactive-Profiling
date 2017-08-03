baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec
				package: 'Kernel-Methods';
				package: 'Kernel-Processes';
				package: 'Morphic-Kernel';
				package: 'Morphic-Menus-DockingBar';
				package: 'System-Tools';
				package: 'TimeProfileBrowser-Tests' with: [ spec requires: #('default')];
				package: 'Tools-Debugger'.
			spec
				group: 'default' with: #('Kernel-Methods' 'Kernel-Processes' 'Morphic-Kernel' 'Morphic-Menus-DockingBar' 'System-Tools' 'Tools-Debugger');
				group: 'tests' with: #('TimeProfileBrowser-Tests');
				group: 'TravisCI' with: #('tests') ]
