; gdi+ ahk tutorial 3 written by tic (Tariq Porter)
; Requires Gdip.ahk either in your Lib folder as standard library or using #Include
;
; Tutorial to take make a gui from an existing image on disk
; For the example we will use png as it can handle transparencies. The image will also be halved in size

#SingleInstance, Force
#NoEnv
CoordMode, Mouse, Screen
SetBatchLines, -1

; Uncomment if Gdip.ahk is not in your standard library
;#Include, Gdip.ahk

; Start gdi+
If !pToken := Gdip_Startup()
{
	MsgBox, 48, gdiplus error!, Gdiplus failed to start. Please ensure you have gdiplus on your system
	ExitApp
}
OnExit, Exit

; Get the dimensions of the primary monitor
SysGet, MonitorPrimary, MonitorPrimary
SysGet, WA, MonitorWorkArea, %MonitorPrimary%
WAWidth := WARight-WALeft
WAHeight := WABottom-WATop


; Create a layered window (+E0x80000 : must be used for UpdateLayeredWindow to work!) that is always on top (+AlwaysOnTop), has no taskbar entry or caption
Gui, 1: -Caption +E0x80000 +LastFound +AlwaysOnTop +ToolWindow +OwnDialogs

; Show the window
Gui, 1: Show, NA

; Get a handle to this window we have created in order to update it later
hwnd1 := WinExist()

; If the image we want to work with does not exist on disk, then download it...
If !FileExist("link-sprite.png")
UrlDownloadToFile, http://www.autohotkey.net/~tic/link-sprite.png, link-sprite.png

; Get a bitmap from the image
pBitmap := Gdip_CreateBitmapFromFile("link-sprite.png")

; Check to ensure we actually got a bitmap from the file, in case the file was corrupt or some other error occured
If !pBitmap
{
	MsgBox, 48, File loading error!, Could not load the image specified
	ExitApp
}

; Get the width and height of the bitmap we have just created from the file
; This will be the dimensions that the file is
Width := Gdip_GetImageWidth(pBitmap), Height := Gdip_GetImageHeight(pBitmap)

w := 24, h := 32
WidthCount := Width//w, HeightCount := Height//h
Loop, % HeightCount		;%
{
	j := A_Index
	Loop, % WidthCount		;%
	{
		pBitmap_%A_Index%_%j% := Gdip_CreateBitmap(w, h)
		G := Gdip_GraphicsFromImage(pBitmap_%A_Index%_%j%)
		Gdip_DrawImage(G, pBitmap, 0, 0, w, h, (A_Index-1)*w, (j-1)*h, w, h)
		Gdip_DeleteGraphics(G)
	}
}

Resize := 3
hbm := CreateDIBSection(Resize*w, Resize*h)

; Get a device context compatible with the screen
hdc := CreateCompatibleDC()

; Select the bitmap into the device context
obm := SelectObject(hdc, hbm)

; Get a pointer to the graphics of the bitmap, for use with drawing functions
G := Gdip_GraphicsFromHDC(hdc)

; We do not need SmoothingMode as we did in previous examples for drawing an image
; Instead we must set InterpolationMode. This specifies how a file will be resized (the quality of the resize)
; Interpolation mode has been set to HighQualityBicubic = 7
Gdip_SetInterpolationMode(G, 7)

ThisSpeed := Speed := (Resize*w)//5
x := WALeft+((WAWidth-(Resize*w))//2), y := WATop+((WAHeight-(Resize*h))//2)
Direction := 1
ImageNum := 0
SetTimer, Walk, 80
SetTimer, ChangeDirection, 3000
Return

;#######################################################################

Walk:
r := 0
MouseGetPos, Mousex, Mousey, Win
if (Win = hwnd1)
{
	ThisSpeed := 3*Speed
	; Can either speed up or change direction
	;GoSub, ChangeDirection
}
else
	ThisSpeed := Speed

Gdip_GraphicsClear(G)
if (Direction = 1)	; Up
	y -= ThisSpeed
else if (Direction = 2)	; Right
	x += ThisSpeed
else if (Direction = 3)	; Down
	y += ThisSpeed
else if (Direction = 4)	; Left
	x -= ThisSpeed
	
if (x < WALeft)
	r := 1, x := WALeft
else if (x > WARight-(Resize*w))
	r := 1, x := WARight-(Resize*w)
	
if (y < WATop)
	r := 1, y := y < WATop
else if (y > WABottom-(Resize*h))
	r := 1, y := y > WABottom-(Resize*h)

if r
	GoSub, ChangeDirection

ImageNum := (ImageNum = WidthCount) ? 1 : ImageNum+1
Gdip_DrawImage(G, pBitmap_%ImageNum%_%Direction%, 0, 0, Resize*w, Resize*h, 0, 0, w, h)
UpdateLayeredWindow(hwnd1, hdc, x, y, Resize*w, Resize*h)
return

;#######################################################################

ChangeDirection:
Loop, 10
{
	Random, NewDirection, 1, 4
	if (NewDirection != Direction)
	{
		Direction := NewDirection
		break
	}
}
return

;#######################################################################

Esc::
Exit:
Loop, % HeightCount		;%
{
	j := A_Index
	Loop, % WidthCount		;%
		Gdip_DisposeImage(pBitmap_%A_Index%_%j%)
}

; Select the object back into the hdc
SelectObject(hdc, obm)

; Now the bitmap may be deleted
DeleteObject(hbm)

; Also the device context related to the bitmap may be deleted
DeleteDC(hdc)

; The graphics may now be deleted
Gdip_DeleteGraphics(G)

; The bitmap we made from the image may be deleted
Gdip_DisposeImage(pBitmap)

; gdi+ may now be shutdown on exiting the program
Gdip_Shutdown(pToken)
ExitApp
Return
