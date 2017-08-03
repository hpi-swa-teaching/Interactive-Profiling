baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec
				package: 'Tools-Debugger';
				package: 'TimeProfileBrowser-Tests' with: [ spec requires: #('default')].
			spec
				group: 'default' with: #('Tools-Debugger');
				group: 'tests' with: #('TimeProfileBrowser-Tests');
				group: 'TravisCI' with: #('tests') ]