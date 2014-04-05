; Function name: createOct
; by akirt
;
; function description: create a octagon
;
; parameters description:cvID: the id of target cellview that the shape want to be drawn on
;			mat: specified material/layer
;			iX,iY: the center point of the rectangle
;			len1,cor1: length of edge
;
;
; return value: 	the id of created octagon
;
; required fucntions: none (this is a independent function)

procedure(createOct2(cvID mat iX iY len1 cor1)
	prog((octagon)
		ratio=len1*1.0/(len1+cor1*2)
		octagon=dbCreatePolygon(cvID list(mat "drawing") list(iX-1.0*floor(len1/2*100)/100:iY+1.0*floor((len1/2+cor1)*100)/100 iX+1.0*floor(len1/2*100)/100:iY+1.0*floor((len1/2+cor1)*100)/100 iX+1.0*floor((len1/2+cor1)*100)/100:iY+1.0*floor(len1/2*100)/100 iX+1.0*floor((len1/2+cor1)*100)/100:iY-1.0*floor(len1/2*100)/100 iX+1.0*floor(len1/2*100)/100:iY-1.0*floor((len1/2+cor1)*100)/100 iX-1.0*floor(len1/2*100)/100:iY-1.0*floor((len1/2+cor1)*100)/100 iX-1.0*floor((len1/2+cor1)*100)/100:iY-1.0*floor(len1/2*100)/100 iX-1.0*floor((len1/2+cor1)*100)/100:iY+1.0*floor(len1/2*100)/100 ))

		octagon->len=len1
		octagon->cor=cor1

		return(octagon)
	);prog
);procedure
