baseline
baseline: spec
	<baseline>
	spec 
		for: #'common' 
		do: [
			spec baseline: 'Project12' with: [
				spec
					repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages'. ].
			spec
				package: 'InteractiveProfiler-Core';
				package: 'InteractiveProfiler-Tests' with: [ spec requires: #('default' 'MTF')].
			spec
				group: 'default' with: #('InteractiveProfiler-Core');
				group: 'MTF' with: #('Project12');
				group: 'Tests' with: #('InteractiveProfiler-Tests');
				group: 'TravisCI' with: #('Tests') ]
