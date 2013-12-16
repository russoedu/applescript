--- A collection of four applescripts to automate/GUI script Notational Velocity. I use keybindings to launch these, but they could easily be put in the dock or loaded on start up or whatever you want to do. Its your world. 

--- Copy To NV automatically copies text from your current application and pastes it into Notational Velocity as a new note, and allows you to create a title for your new note via Applescript dialog.

tell application "System Events"
set w1 to the name of first application process whose frontmost is true
    tell w1
        tell application "System Events"
            key code 0 using command down
            key code 8 using command down
            set bodytext to the clipboard
            set the clipboard to bodytext as string
            tell application "Notational Velocity"
                activate
                tell application "System Events"
                    key code 9 using {command down, shift down}
                end tell
            end tell
        end tell
    end tell
end tell
tell application "Notational Velocity"
    set newnote to display dialog "Create a NV note" default answer ""
    set newnote to text returned of newnote
    tell application "Finder" to set the clipboard to newnote as text
    tell application "Notational Velocity"
        activate
        tell application "System Events"
        key code 15 using command down
            tell application "Notational Velocity"
                activate
                tell application "System Events"
                    key code 9 using command down
                    key code 36
                    key code 36
                    key code 36
                    key code 36
                end tell
            end tell
            end tell
    end tell
    end tell
    
--- New Note From Dialog allows you to title a new blank note via Applescript dialog. This is particularly useful for times when your short-term memory is terrible and it takes a matter of seconds before you forget what you were opening Notational Velocity for in the first place.

set newnote to display dialog "Create a NV note" default answer ""
set newnote to text returned of newnote
tell application "Finder" to set the clipboard to newnote as text
tell application "Notational Velocity"
    activate
    tell application "System Events"
        key code 9 using {command down, shift down}
        key code 124 using command down
        key code 36
        key code 36
    end tell
end tell

--- Open Top Bookmark uses command + 1 to automate the process of opening the first bookmark in your list. I have a "work projects" file that I often need to update quickly and this helps me add new info no matter where I'm working on my computer.

tell application "Notational Velocity"
    activate
    tell application "System Events"
        key code 18 using command down
    end tell
end tell

--- NV Search uses an Applescript dialog to search Notational Velocity from anywhere (when you call the script via key combo, Alfred, etc). My primary use for this script is to find notes in NV when I am working outside of the application itself -- when I am searching google and remember a note I wrote about a particular program I am looking for; when I am editing a photo and I remember when I need to find the list of other photos that need to be edited; etc.

set ssearch to display dialog "Search Notational Velocity" default answer ""
set ssearch to text returned of ssearch
tell application "Notational Velocity"
    search ssearch
end tell
tell application "Notational Velocity"
    activate
end tell

--- http://www.scriptogr.am/unforswearing
--- http://www.github.com/unforswearing
--- notes@theforeverarrow.com