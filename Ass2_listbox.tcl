#!/usr/bin/env wish

# Create the main window
wm title . "List Box Example"
pack [label .lbl -text "Select an item in the first list box to copy it to the second."] -padx 10 -pady 10

# Create the list boxes and buttons
frame .frame
pack .frame -side top -padx 10 -pady 10

listbox .frame.lb1 -height 10 -width 20
listbox .frame.lb2 -height 10 -width 20

pack .frame.lb1 -side left -padx 5
pack .frame.lb2 -side right -padx 5

# Populate the first list box
set items {"Apple" "Banana" "Cherry" "Date" "Elderberry" "Fig" "Grape"}
foreach item $items {
    .frame.lb1 insert end $item
}

# Define the function to copy an item to the second list box
proc copyItem {args} {
    set selected [lindex [.frame.lb1 curselection] 0]
    if {$selected ne ""} {
        set value [.frame.lb1 get $selected]
        .frame.lb2 insert end $value
    }
}

# Define the function to remove an item from the second list box
proc removeItem {args} {
    set selected [lindex [.frame.lb2 curselection] 0]
    if {$selected ne ""} {
        .frame.lb2 delete $selected
    }
}

# Bind events to the list boxes
bind .frame.lb1 <<ListboxSelect>> copyItem
bind .frame.lb2 <<ListboxSelect>> removeItem
