; Function name: createMatrixRect
; by akirt
;
; function description: create a set of parallel rectangles with an extension 
;
; parameters description:cvID: the id of target cellview
;			mat : specified material/layer
;			iX,iY: the start point of the outside edge of ring
;			n_X n_Y: the number of rectuangle to be drawn
;			Len: Length of the rectangle
;			Wid: Width of each rectangle
;			spac: spac between each rectangle
;			offset: offset from the start point
;			ext:extension from each rectangle
;
; return type: list
; return value: id of each rectangle
;
; required fucntions: createArrayRectE


procedure(createMatrixRectE(cvID mat iX iY n_X n_Y Len Wid spac offset1 offset2 ext)
	prog((tempList1 tempList2 st_X st_Y i)
		tempList1=list()

		st_X=iX+offset1
		st_Y=iY+offset2

		for(i 1 n_X 
			tempList2=createArrayRectE(cvID mat st_X st_Y n_Y Len Wid spac 0 "v" ext)
			st_X=st_X+Len+spac
			tempList1=append(tempList1 nth(1 tempList2))
		);for

		return(tempList1)
	);prog
);procedure
