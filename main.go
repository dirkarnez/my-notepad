package main

import (
	"fyne.io/fyne/v2/app"
	"fyne.io/fyne/v2/widget"
)

func main() {
	a := app.New()
	w := a.NewWindow("Hello World")

	multiLineEntry := widget.NewMultiLineEntry()
	multiLineEntry.SetMinRowsVisible(4)
	
	w.SetContent(multiLineEntry)
	w.ShowAndRun()
}
