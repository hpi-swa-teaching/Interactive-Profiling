baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec
				package: 'TimeProfileBrowser';
				package: 'InteractiveProfilerTests' with: [ spec requires: #('default')].
			spec
				group: 'default' with: #('TimeProfileBrowser');
				group: 'Tests' with: #('InteractiveProfilerTests');
				group: 'TravisCI' with: #('Tests') ]