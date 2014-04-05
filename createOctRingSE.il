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

procedure(createOctRingSE(cvID mat iX iY len1 cor1 width strink offset)
	prog((ratio octagon len cor)
		ratio=len1*1.0/(len1+cor1*2)
		len=len1-strink*2*ratio
		cor=cor1-strink*(1-ratio)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-len/2-ratio*offset:iY+(len/2+cor)+offset iX+len/2+ratio*offset:iY+(len/2+cor)+offset iX+(len/2+cor)+offset:iY+len/2+ratio*offset iX+(len/2+cor)+offset:iY-len/2-ratio*offset iX+len/2+ratio*offset:iY-(len/2+cor)-offset iX-len/2-ratio*offset:iY-(len/2+cor)-offset iX-(len/2+cor)-offset:iY-len/2-ratio*offset iX-(len/2+cor)-offset:iY+len/2+ratio*offset ))
		
		octagon=leChopShape(octagon list(iX-len/2+ratio*(width+offset):iY+(len/2+cor)-(width+offset) iX+len/2-ratio*(width+offset):iY+(len/2+cor)-(width+offset) iX+(len/2+cor)-(width+offset):iY+len/2-ratio*(width+offset) iX+(len/2+cor)-(width+offset):iY-len/2+ratio*(width+offset) iX+len/2-ratio*(width+offset):iY-(len/2+cor)+(width+offset) iX-len/2+ratio*(width+offset):iY-(len/2+cor)+(width+offset) iX-(len/2+cor)+(width+offset):iY-len/2+ratio*(width+offset) iX-(len/2+cor)+(width+offset):iY+len/2-ratio*(width+offset)) t t)

		octagon->len=len+2*ratio*offset
		octagon->cor=cor+offset*(1-ratio)
		return(octagon)
	);prog
);procedure
