VERSION 5.00
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "RRGGBBII Palette Editor (C)2016 Steve J. Gray"
   ClientHeight    =   5970
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8610
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   398
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   574
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "Entry"
      Height          =   2415
      Left            =   120
      TabIndex        =   48
      Top             =   3480
      Width           =   8415
      Begin VB.PictureBox picPicker 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   1935
         Left            =   360
         ScaleHeight     =   1905
         ScaleWidth      =   1905
         TabIndex        =   76
         Top             =   720
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.VScrollBar Slider 
         Height          =   1215
         Index           =   0
         Left            =   2280
         Max             =   0
         Min             =   3
         MousePointer    =   7  'Size N S
         TabIndex        =   54
         Top             =   600
         Width           =   615
      End
      Begin VB.VScrollBar Slider 
         Height          =   1215
         Index           =   1
         Left            =   3000
         Max             =   0
         Min             =   3
         MousePointer    =   7  'Size N S
         TabIndex        =   53
         Top             =   600
         Width           =   615
      End
      Begin VB.VScrollBar Slider 
         Height          =   1215
         Index           =   2
         Left            =   3720
         Max             =   0
         Min             =   3
         MousePointer    =   7  'Size N S
         TabIndex        =   52
         Top             =   600
         Width           =   615
      End
      Begin VB.VScrollBar Slider 
         Height          =   1215
         Index           =   3
         Left            =   4440
         Max             =   0
         Min             =   3
         MousePointer    =   7  'Size N S
         TabIndex        =   51
         Top             =   600
         Width           =   615
      End
      Begin VB.CommandButton cmdCopyColour 
         Caption         =   "Copy Colour"
         Height          =   495
         Left            =   6960
         TabIndex        =   50
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton cmdPasteColour 
         Caption         =   "Paste Colour"
         Height          =   495
         Left            =   6960
         TabIndex        =   49
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label lblMode 
         AutoSize        =   -1  'True
         Caption         =   "<"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   2160
         TabIndex        =   75
         ToolTipText     =   "Toggle Colour Picker"
         Top             =   240
         Width           =   120
      End
      Begin VB.Shape shColour 
         BackStyle       =   1  'Opaque
         Height          =   1935
         Left            =   120
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         Caption         =   "R"
         Height          =   255
         Left            =   2280
         TabIndex        =   73
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label19 
         Alignment       =   2  'Center
         Caption         =   "G"
         Height          =   255
         Left            =   3000
         TabIndex        =   72
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         Caption         =   "B"
         Height          =   255
         Left            =   3720
         TabIndex        =   71
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label21 
         Alignment       =   2  'Center
         Caption         =   "I"
         Height          =   255
         Left            =   4440
         TabIndex        =   70
         Top             =   360
         Width           =   615
      End
      Begin VB.Label lblColour 
         BackColor       =   &H80000014&
         Caption         =   "000"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   5280
         TabIndex        =   69
         Top             =   600
         Width           =   855
      End
      Begin VB.Label SVal 
         Alignment       =   2  'Center
         BackColor       =   &H80000014&
         Caption         =   "0"
         Height          =   255
         Index           =   0
         Left            =   2280
         TabIndex        =   68
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label SVal 
         Alignment       =   2  'Center
         BackColor       =   &H80000014&
         Caption         =   "0"
         Height          =   255
         Index           =   1
         Left            =   3000
         TabIndex        =   67
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label SVal 
         Alignment       =   2  'Center
         BackColor       =   &H80000014&
         Caption         =   "0"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   66
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label SVal 
         Alignment       =   2  'Center
         BackColor       =   &H80000014&
         Caption         =   "0"
         Height          =   255
         Index           =   3
         Left            =   4440
         TabIndex        =   65
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Saved:"
         Height          =   195
         Left            =   6480
         TabIndex        =   64
         Top             =   1965
         Width           =   510
      End
      Begin VB.Label lblSaveColour 
         BackColor       =   &H00000000&
         Height          =   255
         Left            =   7080
         TabIndex        =   63
         Top             =   1920
         Width           =   375
      End
      Begin VB.Label lblBuffer 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "000"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   7560
         TabIndex        =   62
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         Caption         =   "INDEX"
         Height          =   195
         Left            =   5400
         TabIndex        =   61
         Top             =   360
         Width           =   495
      End
      Begin VB.Label lblR 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "000"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   5520
         TabIndex        =   60
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label lblG 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "000"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   5520
         TabIndex        =   59
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label lblB 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "000"
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   5520
         TabIndex        =   58
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         Caption         =   "R:"
         Height          =   195
         Left            =   5280
         TabIndex        =   57
         Top             =   1200
         Width           =   165
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "G:"
         Height          =   195
         Left            =   5280
         TabIndex        =   56
         Top             =   1560
         Width           =   165
      End
      Begin VB.Label Label28 
         AutoSize        =   -1  'True
         Caption         =   "B:"
         Height          =   195
         Left            =   5280
         TabIndex        =   55
         Top             =   1920
         Width           =   150
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Palette"
      Height          =   2655
      Left            =   120
      TabIndex        =   3
      Top             =   720
      Width           =   8415
      Begin VB.CommandButton cmdDefault 
         Caption         =   "Default"
         Height          =   375
         Left            =   1920
         TabIndex        =   47
         Top             =   2160
         Width           =   855
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear"
         Height          =   375
         Left            =   2880
         TabIndex        =   46
         Top             =   2160
         Width           =   855
      End
      Begin VB.CommandButton cmdBright 
         Caption         =   "Brighter"
         Height          =   375
         Left            =   3840
         TabIndex        =   45
         Top             =   2160
         Width           =   855
      End
      Begin VB.CommandButton cmdDarker 
         Caption         =   "Darker"
         Height          =   375
         Left            =   4800
         TabIndex        =   44
         Top             =   2160
         Width           =   855
      End
      Begin VB.ComboBox cboRange 
         Height          =   315
         ItemData        =   "frmPaletteEd.frx":0000
         Left            =   840
         List            =   "frmPaletteEd.frx":000D
         Style           =   2  'Dropdown List
         TabIndex        =   43
         Top             =   2160
         Width           =   735
      End
      Begin VB.CommandButton cmdBPaste 
         Caption         =   "Paste"
         Height          =   375
         Left            =   5760
         TabIndex        =   42
         Top             =   2160
         Width           =   855
      End
      Begin VB.CommandButton cmdL 
         Caption         =   "<"
         Height          =   495
         Left            =   6960
         TabIndex        =   41
         Top             =   2040
         Width           =   615
      End
      Begin VB.CommandButton cmdR 
         Caption         =   ">"
         Height          =   495
         Left            =   7680
         TabIndex        =   40
         Top             =   2040
         Width           =   615
      End
      Begin VB.CommandButton cmdCopyPal 
         Caption         =   "Copy Palette"
         Height          =   495
         Left            =   6960
         TabIndex        =   6
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton cmdPastePal 
         Caption         =   "Paste Palette"
         Height          =   495
         Left            =   6960
         TabIndex        =   5
         Top             =   1320
         Width           =   1335
      End
      Begin VB.VScrollBar vsPNum 
         Height          =   1455
         Left            =   120
         Max             =   0
         Min             =   255
         TabIndex        =   4
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Scope:"
         Height          =   195
         Left            =   240
         TabIndex        =   74
         Top             =   2210
         Width           =   510
      End
      Begin VB.Shape shBorder 
         BorderColor     =   &H000000FF&
         BorderWidth     =   4
         Height          =   660
         Left            =   1080
         Top             =   485
         Width           =   660
      End
      Begin VB.Label lblPIndex 
         Alignment       =   2  'Center
         BackColor       =   &H00FF0000&
         Caption         =   "000"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   330
         Left            =   120
         TabIndex        =   39
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         Caption         =   "0"
         Height          =   255
         Left            =   1080
         TabIndex        =   38
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "1"
         Height          =   255
         Left            =   1800
         TabIndex        =   37
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         Caption         =   "2"
         Height          =   255
         Left            =   2520
         TabIndex        =   36
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "3"
         Height          =   255
         Left            =   3240
         TabIndex        =   35
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         Caption         =   "4"
         Height          =   255
         Left            =   3960
         TabIndex        =   34
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         Caption         =   "5"
         Height          =   255
         Left            =   4680
         TabIndex        =   33
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "6"
         Height          =   255
         Left            =   5400
         TabIndex        =   32
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         Caption         =   "7"
         Height          =   255
         Left            =   6120
         TabIndex        =   31
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         Caption         =   "8"
         Height          =   255
         Left            =   1080
         TabIndex        =   30
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Caption         =   "9"
         Height          =   255
         Left            =   1800
         TabIndex        =   29
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         Caption         =   "A"
         Height          =   255
         Left            =   2520
         TabIndex        =   28
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "B"
         Height          =   255
         Left            =   3240
         TabIndex        =   27
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         Caption         =   "C"
         Height          =   255
         Left            =   3960
         TabIndex        =   26
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "D"
         Height          =   255
         Left            =   4680
         TabIndex        =   25
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         Caption         =   "E"
         Height          =   255
         Left            =   5400
         TabIndex        =   24
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         Caption         =   "F"
         Height          =   255
         Left            =   6120
         TabIndex        =   23
         Top             =   1830
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   0
         Left            =   1080
         TabIndex        =   22
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   1
         Left            =   1800
         TabIndex        =   21
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   2
         Left            =   2520
         TabIndex        =   20
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   3
         Left            =   3240
         TabIndex        =   19
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   4
         Left            =   3960
         TabIndex        =   18
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   5
         Left            =   4680
         TabIndex        =   17
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   6
         Left            =   5400
         TabIndex        =   16
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   7
         Left            =   6120
         TabIndex        =   15
         Top             =   480
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   8
         Left            =   1080
         TabIndex        =   14
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   9
         Left            =   1800
         TabIndex        =   13
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   10
         Left            =   2520
         TabIndex        =   12
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   11
         Left            =   3240
         TabIndex        =   11
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   12
         Left            =   3960
         TabIndex        =   10
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   13
         Left            =   4680
         TabIndex        =   9
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   14
         Left            =   5400
         TabIndex        =   8
         Top             =   1200
         Width           =   615
      End
      Begin VB.Label PAL 
         BackColor       =   &H00000000&
         Height          =   615
         Index           =   15
         Left            =   6120
         TabIndex        =   7
         Top             =   1200
         Width           =   615
      End
   End
   Begin VB.CommandButton cmdAbout 
      Caption         =   "About"
      Height          =   495
      Left            =   7080
      TabIndex        =   2
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdSaveROM 
      Caption         =   "Save"
      Height          =   495
      Left            =   1560
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdLoadROM 
      Caption         =   "Load"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'RRGGBBII Palette Editor for ColourPET+G board (C)2016 Steve J. Gray
'=============================================

Option Explicit

Dim P(255, 15) As Integer, PIndex As Integer, CIndex As Integer
Dim D(15) As Integer 'Default Colours
Dim B(15) As Integer 'Save Buffer for Palette
Dim RR As Integer, GG As Integer, BB As Integer, II As Integer  'RRGGBBII values (0-3)
Dim RV As Integer, GV As Integer, BV As Integer, IV As Integer  'RGBI values (0-255)
Dim CSave As Integer                                            'Saved Colour
Dim CC As Integer 'current colour (0-255)
Dim SRange As Integer, ERange As Integer                        'Start/End Range for palette operations

Private Sub Form_Load()
    Dim i As Integer, j As Integer
        
    ClearPalettes   'Reset all to black
    SetDefault      'Default Palette
    PIndex = 0      'Palette Index
    CIndex = 0      'Colour Index
    
    cboRange.ListIndex = 0
    picPicker.Move shColour.Left, shColour.Top
    
    SetPicker
    LoadPalette
    SetAdjust
End Sub

'About program message box
Private Sub cmdAbout_Click()
    MsgBox "RRGGBBII Palette Editor, V1.0 - June 20, 2016" & Chr$(13) & "(C)2016 Steve J. Gray"
End Sub

'Set current palette to default palette
Private Sub cmdDefault_Click()
    Dim i As Integer
    For i = SRange To ERange
        P(PIndex, i) = D(i)
    Next i
    LoadPalette
End Sub

'Set current palette to black
Private Sub cmdClear_Click()
    Dim i As Integer
    
    For i = SRange To ERange
        P(PIndex, i) = 0
    Next i
    LoadPalette
End Sub

'Select Colour to Left
Private Sub cmdL_Click()
 If CIndex > 0 Then CIndex = CIndex - 1: SetAdjust
End Sub

'Select Colour to Right
Private Sub cmdR_Click()
 If CIndex < 15 Then CIndex = CIndex + 1: SetAdjust
End Sub

'Select a colour to edit
Private Sub PAL_Click(Index As Integer)
    CIndex = Index
    SetAdjust
End Sub

Private Sub Slider_Change(Index As Integer)
    Dim N As Integer
    N = Slider(Index).Value
    SVal(Index).Caption = Format(N)
    Select Case Index
        Case 0: RR = N
        Case 1: GG = N
        Case 2: BB = N
        Case 3: II = N
    End Select
    P(PIndex, CIndex) = RGBI2V(RR, GG, BB, II)
    LoadPalette
    SetAdjust
    
End Sub

Private Sub cmdCopyColour_Click()
    CSave = CC 'Save the current colour
    lblSaveColour.BackColor = shColour.BackColor
    lblBuffer.Caption = lblColour.Caption
End Sub

Private Sub cmdPasteColour_Click()
    P(PIndex, CIndex) = CSave
    SetAdjust
End Sub

Private Sub cmdCopyPal_Click()
    Dim i As Integer
    
    For i = 0 To 15
        B(i) = P(PIndex, i)
    Next i
    
End Sub

Private Sub cmdPastePal_Click()
    Dim i As Integer
    
    For i = 0 To 15
        P(PIndex, i) = B(i)
    Next i
    LoadPalette
End Sub

Private Sub cmdSaveROM_Click()
    SavePFile "palette.bin"
End Sub

Private Sub cmdLoadROM_Click()
    LoadPFile "palette.bin"
    LoadPalette
End Sub

Private Sub vsPNum_Change()
    PIndex = vsPNum.Value
    LoadPalette
End Sub

Private Sub cmdBright_Click()
    Dim i As Integer
    
    For i = SRange To ERange
        If P(PIndex, i) < 191 Then P(PIndex, i) = P(PIndex, i) + 64
    Next i
    LoadPalette
    
End Sub

Private Sub cmdDarker_Click()
    Dim i As Integer
    
    For i = SRange To ERange
        If P(PIndex, i) > 63 Then P(PIndex, i) = P(PIndex, i) - 64
    Next i
    LoadPalette

End Sub

Private Sub cmdBPaste_Click()
    Dim i As Integer
    
    For i = SRange To ERange
        P(PIndex, i) = CSave
    Next i
    LoadPalette
End Sub

'Set Default Palette to match standard RGBI palette
Sub SetDefault()
    Dim i As Integer
    D(0) = 0   'Black
    D(1) = 3   'R
    D(2) = 12  'G
    D(3) = 15  'RG
    D(4) = 48  'B
    D(5) = 51  'RB
    D(6) = 60  'GB
    D(7) = 63  'RGB
    
    For i = 1 To 7
        D(i) = D(i) + 64 'Add I
    Next i
    
    For i = 8 To 15
        D(i) = D(i - 8) + 128 'Add II
    Next i
    
End Sub

'Resets palettes to black
Sub ClearPalettes()
    Dim i As Integer, j As Integer
    
    For i = 0 To 255
        For j = 0 To 15
            P(i, j) = 0
        Next j
    Next i

End Sub

'Set selected Palette N to color V
Sub SetPalette(ByVal N As Integer, V As Integer)
    Dim i As Integer
    
    For i = SRange To ERange
        P(N, i) = V
    Next i

End Sub

'Convert N to R,G,B,I values (0-3) and save in global variables.
'This routine extracts the colour component bits.
'The format is: RRGGBBII -  R,G,B,I are two bits each so 4 levels each.
'NOTE: The "I" acts on ALL three R,G,B bits!

Function N2RGBI(ByVal N As Integer) As Integer
    
    RR = (N And 3)         'RR------ extract the individual colour component values
    GG = (N And 12) / 4    '--GG----
    BB = (N And 48) / 16   '----BB--
    II = (N And 192) / 64  '------II

End Function

'Convert RRGGBBII value to Windows 24-bit RGB and store to global variables RV,GV,BV,IV
'NOTE: This routine determines the colour as shown on the windows screen and is
'      NOT nesessarily accurate. It will depend on the actual DAC circuit used to generate colour.

Sub WinRGB()
    
    IV = II * 42.3 'There are 4 levels of I (256/4=64)
    RV = RR * 42.3 + IV
    GV = GG * 42.3 + IV
    BV = BB * 42.3 + IV

End Sub

'Convert RGBI to Value - R,G,B,I = 0 to 3. Value = 0 to 255 (RRGGBBII)
Function RGBI2V(ByVal R As Integer, ByVal G As Integer, ByVal B As Integer, ByVal i As Integer) As Integer
    
    RGBI2V = R + (G * 4) + (B * 16) + (i * 64)

End Function

'Get Palette and set colour boxes
Sub LoadPalette()
    Dim i As Integer, N As Integer, x As Integer
    For i = 0 To 15
        N = P(PIndex, i) 'Get one RRGGBBII colour value (0-255)
        x = N2RGBI(N)    'Get the individual values
        WinRGB
        PAL(i).BackColor = RGB(RV, GV, BV) 'convert to windows 255,255,255 levels
    Next i
    
    SetAdjust  'update display
    
End Sub

'Set sliders, labels etc to edit colour
Sub SetAdjust()
    Dim i As Integer, x As Integer
    
    shBorder.Move PAL(CIndex).Left - 30, PAL(CIndex).Top - 15 'Move red hilight box
        
    lblPIndex = Format(PIndex)      'Show the palette number
    CC = P(PIndex, CIndex)          'Get current colour
    x = N2RGBI(CC)                  'Get current colour components (RGBI)
    
    Slider(0).Value = RR            'Set the sliders
    Slider(1).Value = GG
    Slider(2).Value = BB
    Slider(3).Value = II
    
    WinRGB                          'Calculate windows colour values
    
    lblR.Caption = Format(RV)       'Show them
    lblG.Caption = Format(GV)
    lblB.Caption = Format(BV)
    
    shColour.BackColor = RGB(RV, GV, BV)    'Set the large colour box
    lblColour.Caption = Format(CC)          'Show the value (0-255)
    
    DoEvents
    
End Sub

'Set Scope (Range)
Private Sub cboRange_Click()
    Select Case cboRange.ListIndex
        Case 0: SRange = 0: ERange = 15
        Case 1: SRange = 0: ERange = 7
        Case 2: SRange = 8: ERange = 15
    End Select
End Sub

'Generate Colour Picker colours
Sub SetPicker()
    Dim i As Integer, j As Integer, N As Integer, x As Integer
    Dim L As Integer, M As Integer
    
    L = 120: M = L - 30 'size of one colour entry area
    
    For i = 0 To 15
        For j = 0 To 15
            N = i * 16 + j  'calculate colour index
            x = N2RGBI(N)   'convert to RRGGBBII values
            WinRGB          'calculate windows colour
            picPicker.Line (j * L, i * L)-Step(M, M), RGB(RV, GV, BV), BF   'draw one colour area
        Next j
    Next i
    
End Sub

'Toggle Picker on/off
Private Sub lblMode_Click()
    If lblMode.Caption = "<" Then
        lblMode.Caption = ">"
        shColour.Visible = False
        picPicker.Visible = True
    Else
        lblMode.Caption = "<"
        picPicker.Visible = False
        shColour.Visible = True
    End If
End Sub

'Select a Colour to edit from the Picker
Private Sub picPicker_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    Dim i As Integer, j As Integer, N As Integer, M As Integer
    
    M = 120                 'width/height of each colour area
    i = y / M: j = x / M    'calc ROW,COL
    N = i * 16 + j          'calculate colour index
    
    P(PIndex, CIndex) = N   'set the current colour to chosen colour
    
    LoadPalette
    SetAdjust
    
End Sub

'Save Palette to specified file
Sub SavePFile(ByVal Filename As String)
    Dim i As Integer, j As Integer, FIO As Integer
    
    FIO = FreeFile
    Open Filename For Output As FIO
    For i = 0 To 255
        For j = 0 To 15
            Print #FIO, Chr$(P(i, j));
        Next j
    Next i
    
    Close FIO
End Sub

'Load a binary palette file
Sub LoadPFile(ByVal Filename As String)
    Dim i As Integer, j As Integer, FIO As Integer
    Dim Tmp As String
    
    FIO = FreeFile
    Open Filename For Binary As FIO
    i = 0: j = 0
    Do While Not EOF(FIO)
      Tmp = Input(1, FIO)
      P(i, j) = Asc(Tmp)
      j = j + 1: If j = 16 Then j = 0: i = i + 1
      If i = 256 Then Exit Do
    Loop
    
    Close FIO

End Sub

