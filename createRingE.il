; Function name: createRingE
; by akirt
;
; function description: create a ring with width of Wid with an extension
;
; parameters description:cvID: the id of target cellview
;			mat : specified material/layer
;			iX,iY: the left-bottom point of the outside edge of ring
;			iL,iW: the size of the outside edge of ring
;			Wid: Width of the ring
;			offset: the size of offset
;
; required fucntions: none (this is a independent function)


procedure(createRingE(cvID mat iX iY iL iW Wid offset)
	prog((rectID)
		rectID = dbCreateRect(cvID list(mat "drawing") list(iX-offset:iY-offset iX+iL+offset:iY+iW+offset))
		leChopShape(rectID list(iX+Wid+offset:iY+Wid+offset iX+iL-Wid-offset:iY+Wid+offset iX+iL-Wid-offset:iY+iW-Wid-offset iX+Wid+offset:iY+iW-Wid-offset) t t)
		return(rectID)
	);prog
);procedure
