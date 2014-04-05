; Function name: createULOOP
; by akirt
;
; function description: create a Loop with width of Wid
;
; parameters description:cvID: the id of target cellview
;			mat : material of the layer
;			iX,iY: the left-bottom point of the outside edge of loop
;			iL,iW: the size of the outside edge of loop
;			Wid: Width of the loop
;			dir: direction of the dent("up" "down" "left" "right")
;
;
; required fucntions: none (this is a independent function dir)


procedure(createULoop(cvID mat iX iY iL iW Wid dir)
	prog((rectID)
		rectID = dbCreateRect(cvID list(mat "drawing") list(iX:iY iX+iL:iY+iW))

		case(dir
			("up"	 leChopShape(rectID list(iX+Wid:iY+Wid iX+iW-Wid:iY+Wid iX+iW-Wid:iY+iW iX+Wid:iY+iW) t t))
			("down"  leChopShape(rectID list(iX+Wid:iY iX+iW-Wid:iY iX+iW-Wid:iY+iW-Wid iX+Wid:iY+iW-Wid) t t))
			("left"  leChopShape(rectID list(iX:iY+Wid iX+iW-Wid:iY+Wid iX+iW-Wid:iY+iW-Wid iX:iY+iW-Wid) t t))
			("right" leChopShape(rectID list(iX+Wid:iY+Wid iX+iW:iY+Wid iX+iW:iY+iW-Wid iX+Wid:iY+iW-Wid) t t))
			(t )
		);case

		return(rectID)
	);prog
);procedure
