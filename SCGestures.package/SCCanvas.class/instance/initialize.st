initialization
initialize
	super initialize.
	self extent: self defaultExtent.
	surface := AthensCairoSurface extent: self extent.
	center := self extent / 2.
	self
		resetCurrentGesture;
		shiftGesture