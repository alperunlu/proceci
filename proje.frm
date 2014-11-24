VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Proje v0.2 alpha rc"
   ClientHeight    =   6615
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6930
   Icon            =   "proje.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6615
   ScaleWidth      =   6930
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H80000009&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3120
      Picture         =   "proje.frx":0E42
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   3000
      Width           =   735
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "[limit 4913]"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   6
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Left            =   3000
      TabIndex        =   2
      Top             =   4080
      Width           =   975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "otonom proje üretici"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   162
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   3840
      Width           =   6975
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      Height          =   6720
      Left            =   0
      Picture         =   "proje.frx":1C84
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6960
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim sayac As Integer
Dim p1, p2, p3, p4, p5
Dim s1, s2, s3, s4, s5
Function rastgele(ByVal kucuk As Integer, ByVal buyuk As Integer) As Integer
Randomize (Time)
rastgele = Int((buyuk - kucuk + 1) * Rnd(Time) + kucuk)
End Function
Private Sub Command1_Click()
'sayac = sayac + 1
'If sayac >= 15 Then
'p4 = Array("")
's4 = rastgele(1, 10000) Mod 9
'Label1.Caption = p4(s4)
'Else
p1 = Array("þarjlý ", "elektronik ", "manyetik ", "simüle ", "otonom ", "soðuk ", "geridönüþümlü ", "radyo", "nano", "biyo", "online ", "soðuk ", "kablosuz ", "kullan-at ", "titanyum ", " güdümlü ", "ultrasonik ")
p2 = Array("kimyasal", "manyetik", "füzyon", "enerji", "iletiþim", "rezonans", "darbe", "alaþým", "optik", "zaman", "yük", "bakým", "aký", "laser", "sinyal", "enerji", "besleme")
p3 = Array("ölçer", " sensörü", " üreteci", " kapasitesi", " üretim bandý", " terminali", " makinesi", " çözümleri", " çözücü", "matik", " kaynaðý", " kaydedici", " kuvvetlendirici", " silahý", " otomasyonu", " seti", " analiz sistemi")
Randomize (Time)
s1 = rastgele(1, 10000) Mod 17
Randomize (Time)
s2 = rastgele(1, 10000) Mod 17
Randomize (Time)
s3 = rastgele(1, 10000) Mod 17
Label1.Caption = p1(s1) & p2(s2) & p3(s3)
End Sub
Private Sub Form_Load()
Randomize (Time)
'sayac = 0
End Sub

