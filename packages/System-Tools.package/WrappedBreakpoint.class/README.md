I am a wrapper around an actual method that should be debugged.
Contrary to my siblings BreakPoint and BreakpointManager I do not need
to modify the original method nor its source but rather implant me in my
method's position.

I am based on OBBreakpoint from the OmniBrowser framework.

Instance Variables
	method:		<CompiledMethod>

method
	- actual method I wrap
