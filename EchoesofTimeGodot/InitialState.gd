class_name InitialState extends State
signal goNext

# in InitialState
func processInput(ev):
	# if character walks over clock
		emit_signal("goNext")
