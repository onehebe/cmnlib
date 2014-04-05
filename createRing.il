; Function name: createRing
; by akirt
;
; function description: create a ring with width of Wid
;
; parameters description:cvID: the id of target cellview
;			mat : specified material/layer
;			iX,iY: the left-bottom point of the outside edge of ring
;			iL,iW: the size of the outside edge of ring
;			Wid: Width of the ring
;
;
; required fucntions: none (this is a independent function)


procedure(createRing(cvID mat iX iY iL iW Wid)
	prog((rectID)
		rectID = dbCreateRect(cvID list(mat "drawing") list(iX:iY iX+iL:iY+iW))
		leChopShape(rectID list(iX+Wid:iY+Wid iX+iL-Wid:iY+Wid iX+iL-Wid:iY+iW-Wid iX+Wid:iY+iW-Wid) t t)
		return(rectID)
	);prog
);procedure
