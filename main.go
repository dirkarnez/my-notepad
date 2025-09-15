package main

import (
	"fyne.io/fyne/v2"
    "fyne.io/fyne/v2/app"
    "fyne.io/fyne/v2/container"
    "fyne.io/fyne/v2/widget"
)

func main() {
	// a := app.New()
	// w := a.NewWindow("Hello World")

	// multiLineEntry := widget.NewMultiLineEntry()
	// multiLineEntry.SetMinRowsVisible(4)
	
	// w.SetContent(multiLineEntry)
	// w.ShowAndRun()

    myApp := app.New()
	
	myWindow := myApp.NewWindow("Hello World")
	
	userEntry := widget.NewEntry()
	userLabel := widget.NewFormItem("USERNAME", userEntry)
	
	passEntry := widget.NewPasswordEntry() 
	passLabel := widget.NewFormItem("PASSWORD", passEntry)
	
	form := widget.NewForm(userLabel, passLabel)
	
	txtArea := widget.NewMultiLineEntry()
	txtArea.Wrapping = fyne.TextWrapWord
	// txtArea.SetMinRowsVisible(15)
	
	c := container.NewVBox(form, txtArea) 
	
	myWindow.SetContent(c) 
	myWindow.Resize(fyne.NewSize(300, 300))
	myWindow.Show()
	myApp.Run()
}
