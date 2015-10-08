;*******************************************************************************
;*******************************************************************************
;  leBindKeys.il
;
;	This file contains the sample bindKeys that can be used with the layout
;	editor. The procedure 'leInitCommonBindKeys()' sets bindkeys that are
;	appropriate for all viewTypes.
;
;*******************************************************************************
;	$Author: graham $
;	$Revision: 1.27 $
;	$Date: 1996/09/06 21:02:38 $
;	$State: Exp $
;*******************************************************************************
;*******************************************************************************


;*******************************************************************************
; The following alias is used to make the bindKey definitions more readable.
;*******************************************************************************

alias bk hiSetBindKey

; Instead of doing any license checking, we insure that a base level
; le function is callable. If not, don't define the bindkeys.
;
when( isCallable('leGetEnv)

    ;***************************************************************************
    ; Standard Keys
    ;***************************************************************************

    bk("Layout" "<Key>a"	"geSingleSelectPoint()")
    bk("Layout" "Shift<Key>a"	"geSingleSelectBox()")
    bk("Layout" "Ctrl<Key>a"	"geSelectAllFig()")

    bk("Layout" "<Key>b"	"geReturnToLevel()")
    bk("Layout" "Shift<Key>b"	"geReturn()")

    bk("Layout" "<Key>c"	"leHiCopy()")
    bk("Layout" "Shift<Key>c"	"leHiChop()")

    bk("Layout" "<Key>d"	"geSubSelectPoint()")
    bk("Layout" "Shift<Key>d"	"geSubSelectBox()")
    bk("Layout" "Ctrl<Key>d"	"geDeselectAllFig()")

    bk("Layout" "<Key>e"	"leHiEditDisplayOptions()")
    bk("Layout" "Shift<Key>e"	"leHiEditEditorOptions()")

    bk("Layout" "<Key>f"	"hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    bk("Layout" "Shift<Key>f"	"hiGetCurrentWindow()->stopLevel = 20")
    bk("Layout" "Ctrl<Key>f"	"hiGetCurrentWindow()->stopLevel = 0")

    bk("Layout" "<Key>g"	"leToggleGravity()")
    bk("Layout" "Ctrl<Key>g"	"geZoomToGrid(hiGetCurrentWindow())")

    bk("Layout" "<Key>i"	"leHiCreateInst()")

    bk("Layout" "<Key>k"	"leHiCreateRuler()")
    bk("Layout" "Shift<Key>k"	"leHiClearRuler()")

    bk("Layout" "<Key>l"	"leHiCreateLabel()")

    bk("Layout" "<Key>m"	"leHiMove()")
    bk("Layout" "Shift<Key>m"	"leHiMerge()")

    bk("Layout" "<Key>n"	"leSetFormSnapMode(\"diagonal\")")
    bk("Layout" "Shift<Key>n"	"leSetFormSnapMode(\"orthogonal\")")
    bk("Layout" "Ctrl<Key>n"    "leSetFormSnapMode(\"L90XFirst\")")

    bk("Layout" "<Key>o"	"leHiCreateContact()")

    bk("Layout" "<Key>p"	"leHiCreatePath()")
    bk("Layout" "Shift<Key>p"	"leHiCreatePolygon()")
    bk("Layout" "Ctrl<Key>p"	"leHiCreateChoiceOfPin()")

    bk("Layout" "<Key>q"	"leHiEditProp()")
    bk("Layout" "Shift<Key>q"	"leEditDesignProperties()")

    bk("Layout" "<Key>r"	"leHiCreateRect()")
    bk("Layout" "Shift<Key>r"	"leHiReShape()")
    bk("Layout" "Ctrl<Key>r"	"hiRedraw()")
    bk("Layout" "Shift<Key>o"	"leHiRotate()")

    bk("Layout" "<Key>s"	"leHiStretch()")
    bk("Layout" "Shift<Key>s"	"leHiSearch()")
    bk("Layout" "Ctrl<Key>s"	"leHiSplit()")

    bk("Layout" "<Key>t"	"leHiLayerTap()")
    bk("Layout" "Shift<Key>t"	"leHiTree()")

    bk("Layout" "<Key>u"	"hiUndo()")
    bk("Layout" "Shift<Key>u"	"hiRedo()")

    bk("Layout" "<Key>v"	"leHiAttach()")
    bk("Layout" "Ctrl<Key>v"	"hiFocusToCIW(hiGetCurrentWindow())")

    bk("Layout" "<Key>w"	"hiPrevWinView(hiGetCurrentWindow())")
    bk("Layout" "Shift<Key>w"	"hiNextWinView(hiGetCurrentWindow())")
    bk("Layout" "Ctrl<Key>w"	"hiCloseWindow(hiGetCurrentWindow())")

    bk("Layout" "<Key>x"	"leHiEditInPlace()")
    bk("Layout" "Shift<Key>x"	"leHiDescend()")
    bk("Layout" "Ctrl<Key>x"	"leEIPZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")

    bk("Layout" "<Key>y"	"leHiYank()")
    bk("Layout" "Shift<Key>y"	"leHiPaste()")

    bk("Layout" "<Key>z"	"hiZoomIn()")
    bk("Layout" "Shift<Key>z"	"hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    bk("Layout" "Ctrl<Key>z"	"hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    bk("Layout" "Ctrl<Key>t"	"leZoomToSelSet()")


    ;***************************************************************************
    ; Special Keys
    ;***************************************************************************

    bk("Layout" "<Key>Escape EF"	"cancelEnterFun()")

    bk("Layout" "<Key>Delete EF"	"leHiDelete()"	)
    bk("Layout" "<Key>Delete"		"leHiDelete()")

    bk("Layout" "<Key>Tab"		"hiPan()")

    bk("Layout" "<Key>F2"		"geSave()")
    bk("Layout" "<Key>F5"		"deOpen()")

    bk("Layout" "<Key>F6"		"leToggleMaintainConnections()")
    bk("Layout" "<Key>F7"		"leToggleGuidedPathMaintainConnections()")
    bk("Layout" "<Key>F8"		"leToggleGuidedPathCreate()")




    ;***************************************************************************
    ; Numeric Key Pad (Window Panning Functions)
    ;***************************************************************************

    legRpDelta = 0.5

    bk("Layout" "<Key>R7"		"geScroll(nil \"nw\"	nil)")
    bk("Layout" "<Key>Up"		"geScroll(nil \"n\"	nil)")
    bk("Layout" "<Key>R9"		"geScroll(nil \"ne\"	nil)")
    bk("Layout" "<Key>Left"		"geScroll(nil \"w\"	nil)")
    bk("Layout" "<Key>R11"		"geScroll(nil \"\"	nil)")
    bk("Layout" "<Key>Right"		"geScroll(nil \"e\"	nil)")
    bk("Layout" "<Key>R13"		"geScroll(nil \"sw\"	nil)")
    bk("Layout" "<Key>Down"		"geScroll(nil \"s\"	nil)")
    bk("Layout" "<Key>R15"		"geScroll(nil \"se\"	nil)")

    bk("Layout" "<Key>KP_Enter"		"mouseAddPt()")
    bk("Layout" "<Key>KP_Add"		"leHiSetRefPoint()")
    bk("Layout" "<Key>KP_Subtract"	"leSetRefPointInactive(geGetEditCellView())")

    bk("Layout" "<Key>KP_Equal"		"legRpDelta = 0.5")
    bk("Layout" "<Key>KP_Divide"	"legRpDelta = 1.0")
    bk("Layout" "<Key>KP_Multiply"	"legRpDelta = 2.0")

    bk("Layout" "<Key>R4"		"legRpDelta = 0.5")
    bk("Layout" "<Key>R5"		"legRpDelta = 1.0")
    bk("Layout" "<Key>R6"		"legRpDelta = 2.0")

    bk("Layout" "Shift<Key>R7" 		"leMoveCursor(-legRpDelta  legRpDelta)")
    bk("Layout" "Shift<Key>Up"		"leMoveCursor(          0  legRpDelta)")
    bk("Layout" "Shift<Key>R9"		"leMoveCursor( legRpDelta  legRpDelta)")
    bk("Layout" "Shift<Key>Left"	"leMoveCursor(-legRpDelta           0)")
    bk("Layout" "Shift<Key>R11"		"leMoveCursorToRefPoint()")
    bk("Layout" "Shift<Key>Right"	"leMoveCursor( legRpDelta           0)")
    bk("Layout" "Shift<Key>R13"		"leMoveCursor(-legRpDelta -legRpDelta)")
    bk("Layout" "Shift<Key>Down"	"leMoveCursor(0           -legRpDelta)")
    bk("Layout" "Shift<Key>R15"		"leMoveCursor( legRpDelta -legRpDelta)")

    bk("Layout" "Ctrl<Key>R7"		"geScroll(nil \"nw\"	t)")
    bk("Layout" "Ctrl<Key>Up"		"geScroll(nil \"n\"	t)")
    bk("Layout" "Ctrl<Key>R9"		"geScroll(nil \"ne\"	t)")
    bk("Layout" "Ctrl<Key>Left"		"geScroll(nil \"w\"	t)")
    bk("Layout" "Ctrl<Key>R11"		"geScroll(nil \"\"	t)")
    bk("Layout" "Ctrl<Key>Right"	"geScroll(nil \"e\"	t)")
    bk("Layout" "Ctrl<Key>R13"		"geScroll(nil \"sw\"	t)")
    bk("Layout" "Ctrl<Key>Down"		"geScroll(nil \"s\"	t)")
    bk("Layout" "Ctrl<Key>R15"		"geScroll(nil \"se\"	t)")
)
unalias bk
