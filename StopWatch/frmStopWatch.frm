VERSION 5.00
Begin VB.Form frmStopWatch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stopwatch Application"
   ClientHeight    =   7335
   ClientLeft      =   4710
   ClientTop       =   2355
   ClientWidth     =   10560
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7335
   ScaleWidth      =   10560
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   960
      TabIndex        =   2
      Top             =   5400
      Width           =   3015
   End
   Begin VB.CommandButton cmdEnd 
      Caption         =   "&End Timing"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   960
      TabIndex        =   1
      Top             =   3960
      Width           =   3015
   End
   Begin VB.CommandButton cmdStart 
      Caption         =   "&Start Timing"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   960
      TabIndex        =   0
      Top             =   2520
      Width           =   3015
   End
   Begin VB.Label Label4 
      Caption         =   "STOPWATCH APPLICATION"
      BeginProperty Font 
         Name            =   "Perpetua Titling MT"
         Size            =   29.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   1080
      TabIndex        =   9
      Top             =   480
      Width           =   7935
   End
   Begin VB.Label lblElapsed 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7080
      TabIndex        =   8
      Top             =   5400
      Width           =   2175
   End
   Begin VB.Label lblEnd 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7080
      TabIndex        =   7
      Top             =   3840
      Width           =   2055
   End
   Begin VB.Label lblStart 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7080
      TabIndex        =   6
      Top             =   2520
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Elapsed Time "
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4440
      TabIndex        =   5
      Top             =   5400
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "End Time"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4440
      TabIndex        =   4
      Top             =   3960
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Start Time"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4560
      TabIndex        =   3
      Top             =   2520
      Width           =   1935
   End
End
Attribute VB_Name = "frmStopWatch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim StartTime As Variant
Dim EndTime As Variant
Dim ElapsedTime As Variant


Private Sub cmdEnd_Click()
'Find the ending time, compute the elapsed time
'Put both values in label boxes
EndTime = Now
ElapsedTime = EndTime - StartTime
lblEnd.Caption = Format(EndTime, "hh:mm:ss")
lblElapsed.Caption = Format(ElapsedTime, "hh:mm:ss")
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdStart_Click()
'Establish and print starting time
StartTime = Now
lblStart.Caption = Format(StartTime, "hh:mm:ss")
lblEnd.Caption = ""
lblElapsed.Caption = ""
End Sub
