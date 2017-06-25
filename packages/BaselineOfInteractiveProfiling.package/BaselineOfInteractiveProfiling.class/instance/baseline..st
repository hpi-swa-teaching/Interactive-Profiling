baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec
				package: 'Tools-Debugger';
				package: 'Tools-Debugger' with: [ spec requires: #('default')].
			spec
				group: 'default' with: #('Tools-Debugger');
				group: 'tests' with: #('Tools-Debugger');
				group: 'TravisCI' with: #('tests') ]
