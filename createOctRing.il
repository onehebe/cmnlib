; Function name: createOct
; by akirt
;
; function description: create a octagon Ring
;
; parameters description:cvID: the id of target cellview that the shape want to be drawn on
;			mat: specified material/layer
;			iX,iY: the center point of the rectangle
;			len1,cor1: length of edge
;			width: width of the ring
;
;
; return value: 	the id of created octagon
;
; required fucntions: none (this is a independent function)

procedure(createOctRing(cvID mat iX iY len1 cor1 width)
	prog((ratio octagon)	
		ratio=len1*1.0/(len1+cor1*2)
		println(ratio)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-len1/2:iY+(len1/2+cor1) iX+len1/2:iY+(len1/2+cor1) iX+(len1/2+cor1):iY+len1/2 iX+(len1/2+cor1):iY-len1/2 iX+len1/2:iY-(len1/2+cor1) iX-len1/2:iY-(len1/2+cor1) iX-(len1/2+cor1):iY-len1/2 iX-(len1/2+cor1):iY+len1/2 ))
		
		octagon=leChopShape(octagon list(iX-len1/2+ratio*width:iY+(len1/2+cor1)-width iX+len1/2-ratio*width:iY+(len1/2+cor1)-width iX+(len1/2+cor1)-width:iY+len1/2-ratio*width iX+(len1/2+cor1)-width:iY-len1/2+ratio*width iX+len1/2-ratio*width:iY-(len1/2+cor1)+width iX-len1/2+ratio*width:iY-(len1/2+cor1)+width iX-(len1/2+cor1)+width:iY-len1/2+ratio*width iX-(len1/2+cor1)+width:iY+len1/2-ratio*width) t t)
		
		octagon->len=len1
		octagon->cor=cor1

		return(octagon)
	);prog
);procedure
