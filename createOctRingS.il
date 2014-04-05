; Function name: createOct
; by akirt
;
; function description: create a octagon Ring
;
; parameters description:cvID: the id of target cellview that the shape want to be drawn on
;			mat: specified material/layer
;			iX,iY: the center point of the rectangle
;			len,cor: length of edge
;			width: width of the ring
;
;
; return value: 	the id of created octagon
;
; required fucntions: none (this is a independent function)

procedure(createOctRingS(cvID mat iX iY len1 cor1 width strink)
	prog((ratio octagon len cor)
		ratio=len1*1.0/(len1+cor1*2)
		len=len1-strink*2*ratio
		cor=cor1-strink*(1-ratio)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-len/2:iY+(len/2+cor) iX+len/2:iY+(len/2+cor) iX+(len/2+cor):iY+len/2 iX+(len/2+cor):iY-len/2 iX+len/2:iY-(len/2+cor) iX-len/2:iY-(len/2+cor) iX-(len/2+cor):iY-len/2 iX-(len/2+cor):iY+len/2 ))
		
		octagon=leChopShape(octagon list(iX-len/2+ratio*width:iY+(len/2+cor)-width iX+len/2-ratio*width:iY+(len/2+cor)-width iX+(len/2+cor)-width:iY+len/2-ratio*width iX+(len/2+cor)-width:iY-len/2+ratio*width iX+len/2-ratio*width:iY-(len/2+cor)+width iX-len/2+ratio*width:iY-(len/2+cor)+width iX-(len/2+cor)+width:iY-len/2+ratio*width iX-(len/2+cor)+width:iY+len/2-ratio*width) t t)

		octagon->len=len
		octagon->cor=cor

		return(octagon)
	);prog
);procedure
