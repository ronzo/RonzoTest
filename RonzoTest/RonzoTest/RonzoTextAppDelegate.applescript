--
--  RonzoTextAppDelegate.applescript
--  RonzoTest
--
--  Created by Ron Reuter on 01/20/2012.
--  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
--
-- This custom template is at: 
-- /Developer/Library/Xcode/Templates/Project Templates/Mac/Application/Cocoa-AppleScript Application (ISS).xctemplate/

-- For a demo of wiring up this file with Interface Builder, go to:
-- Part 1: http://macscripter.net/viewtopic.php?id=30274
-- Part 2: http://macscripter.net/viewtopic.php?pid=117608#p117608
-- Part 3: http://macscripter.net/viewtopic.php?id=30338
-- Part 4: http://macscripter.net/viewtopic.php?id=30359
-- Part 5: http://macscripter.net/viewtopic.php?pid=121006
-- IB Video: http://allancraig.net/index.php?option=com_content&view=article&id=86:applescriptobjc-in-xcode-part-2-video&catid=41:applescriptobjc&Itemid=90



-- The following script object is our Application Delegate (shown as a blue cube in Interface Builder)

script RonzoTextAppDelegate

   -- ------------------------------ Class Properties-----------------------------------------------
	-- Any Objective-C class you wish to access in your code must be set up as a property.

	property parent : class "NSObject"	-- Set up inheritance for this script object
	
	property NSMutableArray : class "NSMutableArray"
	property NSText : class "NSText"
	property NSTextView : class "NSTextView"
	property NSImage : class "NSImage"
    
   -- ----------------------------------- IBOutlets ------------------------------------------------
	-- Interface Builder considers an outlet as any property with "missing value" as its value
	-- An outlet is associated with a textField, textView, popupMenu, radioButtonGroup, etc
	-- To wire up, control-drag from the Application Delegate blue cube to a control in the UI
	-- and then pick the already-defined property that represents that IBOutlet
	
	-- EXAMPLE: 
	(*
	property textField : missing value
	property textView : missing value
	*)

   -- ------------------------------------IBActions ------------------------------------------------
	-- Interface Builder considers an action as any single-parameter method ending with an underscore 
	-- To wire up, control drag from the sender (a button, for example) to the Application Delegate cube,
	-- and then pick the already-implemented function to hook up.
	
	-- EXAMPLE:
	(*
	on setTextViewFromTextField_(sender)
		set textFieldValue to textField's stringValue()
		textView's setString_(textFieldValue)
	end setTextViewFromTextField_
	*)
	
   -- ==============================================================================================
	-- Application delegate methods
   -- ==============================================================================================
	
	on awakeFromNib()
		-- EXAMPLE:
		(*
		textView's setTextContainerInset_({10.0, 10.0})
		textField's setStringValue_("Ron Reuter was here.")
		aWindow's makeFirstResponder_(textField)
		*)
	end awakeFromNib

   -- ----------------------------------------------------------------------------------------------
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_

   -- ----------------------------------------------------------------------------------------------
	
	on applicationShouldTerminate_(sender)
        -- Do any housekeeping before your application quits: 
        -- Save data, window positions, last selected radio buttons, popup menus, column widths, etc.

        try
            set returnValue to (current application's NSTerminateNow) as integer
        on error
            set returnValue to true
        end try
        return returnValue
        
	end applicationShouldTerminate_

   -- ----------------------------------------------------------------------------------------------
	
end script