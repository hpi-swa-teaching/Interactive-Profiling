mutual exclusion
critical: mutuallyExcludedBlock ifError: errorBlock
	"Evaluate mutuallyExcludedBlock only if the receiver is not currently in 
	the process of running the critical: message. If the receiver is, evaluate 
	mutuallyExcludedBlock after the other critical: message is finished."
	| blockValue hasError errMsg errRcvr |
	hasError := false.
	blockValue := self critical:[
		mutuallyExcludedBlock ifError: [ :msg :rcvr |
			hasError := true.
			errMsg := msg.
			errRcvr := rcvr
		].
	].
	hasError ifTrue:[ ^errorBlock value: errMsg value: errRcvr].
	^blockValue