
; This file contains example bind keys for use in:
;     Schematic editor (prefix "Schematics") 
;     Symbol editor (prefix "Symbol")
;     Read HDL (prefix "Read HDL") only if capability enabled
;
; The following alias will be used in this file to make the bindkey
; definitions more readable.
;
alias bk hiSetBindKey

; Instead of doing any license checking, we insure that a base level
; sch function is callable. If not, don't define the bindkeys.
;
when( isCallable('schGetEnv)

    ; General bindkeys (prefix "Schematics").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;
    bk("Schematics" "<Key>F6"		"hiRedraw()")
    bk("Schematics" "<Key>Down"		"geScroll(nil \"s\" nil)")
    bk("Schematics" "<Key>Up"		"geScroll(nil \"n\" nil)")
    bk("Schematics" "<Key>Right"	"geScroll(nil \"e\" nil)")
    bk("Schematics" "<Key>Left"		"geScroll(nil \"w\" nil)")
    bk("Schematics" "<Key>a"		"geSingleSelectPoint()")
    bk("Schematics" "Ctrl<Key>a"	"schSelectAllFig()")
    bk("Schematics" "Shift<Key>a"	"schSingleSelectBox()")
    bk("Schematics" "<Key>d"		"geSubSelectPoint()")
    bk("Schematics" "Ctrl<Key>d"	"schDeselectAllFig()")
    bk("Schematics" "Shift<Key>d"	"schSubSelectBox()")
    bk("Schematics" "<Key>f"
		    "schZoomFit(1.0 0.9)")
    bk("Schematics" "Ctrl<Key>f"	"schSetSelectOptions()")
    bk("Schematics" "Shift<Key>f"
		    "hiZoomAbsoluteScale(getCurrentWindow() 0.9)")
    bk("Schematics" "<Key>o"        	"schHiDisplayOptions()")
    bk("Schematics" "Shift<Key>o"	"schHiEditorOptions()")
    bk("Schematics" "Ctrl<Key>o"	"schHiGridOptions()")
    bk("Schematics" "<Key>q"		"schHiObjectProperty()")
    bk("Schematics" "<Key>q EF"		"schHiObjectProperty()")
    bk("Schematics" "Shift<Key>q"	"schHiCellViewProperty()")
    bk("Schematics" "Shift<Key>q EF"	"schHiCellViewProperty()")
    bk("Schematics" "<Key>u"		"hiUndo()")
    bk("Schematics" "Shift<Key>u"   	"hiRedo()")
    bk("Schematics" "<Key>v"		"hiVectorPan()")
    bk("Schematics" "Ctrl<Key>v"	"hiFocusToCIW(hiGetCurrentWindow())")
    bk("Schematics" "<Key>z"		"hiZoomIn()")
    bk("Schematics" "Ctrl<Key>z"	"hiZoomOut()")
    bk("Schematics" "Shift<Key>z"	"hiPrevWinView(hiGetCurrentWindow())")
    bk("Schematics" "<Key>[" "hiZoomRelativeScale(getCurrentWindow() 0.8)")
    bk("Schematics" "<Key>]" "hiZoomRelativeScale(getCurrentWindow() 1.25)")
    bk("Schematics" "Shift<Key>s"	"schHiSaveCellView()")
    bk("Schematics" "Ctrl<Key>s"	"geSaveAs()")
    bk("Schematics" "<Key>9"		"geAddNetProbe()")
    bk("Schematics" "Shift<Key>g"	"schHiFindMarker()")
    bk("Schematics" "Ctrl<Key>g"	"geHiDeleteMarker()")
    bk("Schematics" "<Key>g"		"schHiFindMarker()")

    ; Specific bindkeys (prefix "Schematics").  These bindkeys are bound to
    ; schematic editor ("Schematics") functionality.
    ;
    bk("Schematics" "None<Btn1Down>"	"schSingleSelectPt()")
    bk("Schematics" "Shift<Btn1Down>"	"schAddSelectPt()")
    bk("Schematics" "<DrawThru1>"	"schDirectEdit(1)")
    bk("Schematics" "Shift<DrawThru1>"	"schDirectEdit(2)")
    bk("Schematics" "Ctrl<DrawThru1>"	"schDirectEdit(3)")
    bk("Schematics" "None<Btn1Down>(2)"	"schExtendSelectPt()")
    bk("Schematics" "None<Btn1Down>(2) EF"
		    "schMouseApplyOrFinish()")
    bk("Schematics" "None<Btn2Down>"	"schHiMousePopUp()")
    bk("Schematics" "None<Btn2Down> EF"	"schHiMousePopUp()")
    bk("Schematics" "None<Btn3Down> EF"	"schCmdOption()")
    bk("Schematics" "Shift<Btn3Down> EF"
		    "schShiftCmdOption()")
    bk("Schematics" "<Key>Delete"	"schHiDelete()")
    ; Uncomment following line for HP 700 delete key binding.
    ; bk("Schematics" "Shift<Key>Escape"  "schHiDelete()")
    bk("Schematics" "<Key>b"		"schHiCreateBlockInst()")
    bk("Schematics" "<Key>c"		"schHiCopy()")
    bk("Schematics" "<Key>i"		"schHiCreateInst()")
    bk("Schematics" "<Key>h"		"schHiHiliteLabel(\"wire\" \"on\")")
    bk("Schematics" "Shift<Key>h"	"schHiHiliteLabel(\"wire\" \"off\")")
    bk("Schematics" "<Key>8"		"schHiHiliteLabel(\"instance\" \"on\")")
    bk("Schematics" "Shift<Key>8"
		    "schHiHiliteLabel(\"instance\" \"off\")")
    bk("Schematics" "<Key>l"		"schHiCreateWireLabel()")
    bk("Schematics" "Shift<Key>n"   	"schHiCreateNoteLabel()")
    bk("Schematics" "Shift<Key>l"	"schHiCreateNoteLabel()")
    bk("Schematics" "<Key>m"		"schHiStretch()")
    bk("Schematics" "Shift<Key>m"	"schHiMove()")
    bk("Schematics" "<Key>p"		"schHiCreatePin()")
    bk("Schematics" "<Key>5"		"schHiRouteFlightLine()")
    bk("Schematics" "<Key>r"     	"schHiRotate()")
    bk("Schematics" "Ctrl<Key>r EF" 	"schSetEnv(\"upsideDown\" t)")
    bk("Schematics" "Shift<Key>r EF" 	"schSetEnv(\"sideways\" t)")
    bk("Schematics" "<Key>r EF"     	"schSetEnv(\"rotate\" t)")
    bk("Schematics" "<Key>w"		"schHiCreateWire(0.0)")
    bk("Schematics" "Shift<Key>w"
		    "schHiCreateWire(schGetEnv(\"defWideWireWidth\"))") 
    bk("Schematics" "<Key>x"		"schHiCheck(\"run\")")
    bk("Schematics" "Shift<Key>x"	"schHiCheckAndSave()")
    bk("Schematics" "Shift<Key>e"	"schHiDescendEdit()")
    bk("Schematics" "<Key>e"		"schHiDescendRead()")
    bk("Schematics" "Ctrl<Key>e"	"schHiReturn()")
    bk("Schematics" "<Key>n"		"schHiCreateNoteShape()")

    bk("Schematics" "<Key>s EF"		"schSnapToConn()")    ; note: if you 
				; change the key binding for schSnapToConn() 
				; you can also change the Add>>Wire command
				; prompts by setting the global skill variable
				; schgWirePromptToAppend = 
				;  " or snap to diamond using {your bind key}."
				; in your .cdsinit file.
    ;for new sun keyboard(sparc 5)
    bk("Schematics" "<Key>BackSpace"	"schHiDelete()")

    ; General bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;
    bk("Symbol" "<Key>F6"		"hiRedraw()")
    bk("Symbol" "<Key>Down"		"geScroll(nil \"s\" nil)")
    bk("Symbol" "<Key>Up"		"geScroll(nil \"n\" nil)")
    bk("Symbol" "<Key>Right"    	"geScroll(nil \"e\" nil)")
    bk("Symbol" "<Key>Left" 		"geScroll(nil \"w\" nil)")
    bk("Symbol" "<Key>a"	    	"geSingleSelectPoint()")
    bk("Symbol" "Ctrl<Key>a"    	"schSelectAllFig()")
    bk("Symbol" "Shift<Key>a"   	"schSingleSelectBox()")
    bk("Symbol" "<Key>d"	    	"geSubSelectPoint()")
    bk("Symbol" "Ctrl<Key>d"    	"schDeselectAllFig()")
    bk("Symbol" "Shift<Key>d"   	"schSubSelectBox()")
    bk("Symbol" "<Key>f"
		"schZoomFit(1.0 0.9)")
    bk("Symbol" "Ctrl<Key>f"    	"schSetSelectOptions()")
    bk("Symbol" "Shift<Key>f"
		"hiZoomAbsoluteScale(getCurrentWindow() 0.9)")
    bk("Symbol" "<Key>o"	    	"schHiDisplayOptions()")
    bk("Symbol" "Shift<Key>o"   	"schHiEditorOptions()")
    bk("Symbol" "Ctrl<Key>o"    	"schHiGridOptions()")
    bk("Symbol" "<Key>q"	    	"schHiObjectProperty()")
    bk("Symbol" "<Key>q EF"		"schHiObjectProperty()")
    bk("Symbol" "Shift<Key>q"		"schHiCellViewProperty()")
    bk("Symbol" "Shift<Key>q EF"	"schHiCellViewProperty()")
    bk("Symbol" "<Key>u"	    	"hiUndo()")
    bk("Symbol" "Shift<Key>u"   	"hiRedo()")
    bk("Symbol" "<Key>v"	    	"hiVectorPan()")
    bk("Symbol" "Ctrl<Key>v"    	"hiFocusToCIW(hiGetCurrentWindow())")
    bk("Symbol" "<Key>z"	    	"hiZoomIn()")
    bk("Symbol" "Ctrl<Key>z"    	"hiZoomOut()")
    bk("Symbol" "Shift<Key>z"   	"hiPrevWinView(hiGetCurrentWindow())")
    bk("Symbol" "<Key>["
		"hiZoomRelativeScale(getCurrentWindow() 0.8)")
    bk("Symbol" "<Key>]"
		"hiZoomRelativeScale(getCurrentWindow() 1.25)")
    bk("Symbol" "Shift<Key>s"   	"schHiSaveCellView()")
    bk("Symbol" "Ctrl<Key>s"    	"geSaveAs()")
    bk("Symbol" "<Key>9"	    	"geAddNetProbe()")
    bk("Symbol" "Shift<Key>g"   	"schHiFindMarker()")
    bk("Symbol" "Ctrl<Key>g"    	"geHiDeleteMarker()")
    bk("Symbol" "<Key>g"	    	"schHiFindMarker()")

    ; Specific bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; schematic editor ("Schematics") functionality.
    ;
    bk("Symbol" "<DrawThru1>"		"schDirectEdit(1)")
    bk("Symbol" "Shift<DrawThru1>"	"schDirectEdit(2)")
    bk("Symbol" "Ctrl<DrawThru1>"	"schDirectEdit(3)")
    bk("Symbol" "None<Btn1Down>(2) EF"	"schMouseApplyOrFinish()")
    bk("Symbol" "None<Btn2Down>"      	"schHiMousePopUp()")
    bk("Symbol" "None<Btn2Down> EF"   	"schHiMousePopUp()")
    bk("Symbol" "None<Btn3Down>EF"    	"schCmdOption()")
    bk("Symbol" "Shift<Btn3Down> EF"  	"schShiftCmdOption()")
    bk("Symbol" "Ctrl<Key>r EF" 	"schSetEnv(\"upsideDown\" t)")
    bk("Symbol" "Shift<Key>r EF" 	"schSetEnv(\"sideways\" t)")
    bk("Symbol" "<Key>r EF"     	"schSetEnv(\"rotate\" t)")

    bk("Symbol" "<Key>r"		"schHiRotate(t)")
    bk("Symbol" "<Key>Delete"   	"schHiDelete()")
    ; Uncomment following line for HP 700 delete key binding.
    ; bk("Symbol" "Shift<Key>Escape"      "schHiDelete()")
    bk("Symbol" "<Key>c"	    	"schHiCopy()")
    bk("Symbol" "<Key>l"	    	"schHiCreateSymbolLabel()")
    bk("Symbol" "Shift<Key>n"   	"schHiCreateNoteLabel()")
    bk("Symbol" "Shift<Key>l"   	"schHiCreateNoteLabel()")
    bk("Symbol" "Shift<Key>m"   	"schHiMove()")
    bk("Symbol" "<Key>m"	    	"schHiSymStretch()")
    bk("Symbol" "<Key>n"	 	"schHiCreateNoteShape()")
    bk("Symbol" "<Key>p"	  	"schHiCreateSymbolPin()")
    bk("Symbol" "Ctrl<Key>e"    	"schHiReturn()")
    bk("Symbol" "<Key>x"		"schHiVIC()")
    ;for new sun keyboard(sparc 5)
    bk("Symbol" "<Key>BackSpace"	"schHiDelete()")

    when( isCallable('schHDLReturn)

	; General bindkeys (prefix "Read HDL").
	;
	bk("Read HDL" "Ctrl<Key>s"	"hiSaveAsViewfile()")
	bk("Read HDL" "Ctrl<Key>e"	"schHDLReturn()")
    )
)

unalias bk
