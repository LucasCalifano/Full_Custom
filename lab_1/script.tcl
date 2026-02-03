#!/usr/bin/tclsh
#I am putting this command here to easily tell if the program starts running or if something else is going on
puts "starting script"
puts "..."

# Open timing report for reading
set infile [open "timing.rpt" r]

# Used so I can re-run the script without writing over my file. This helps in automation
set timestamp [clock format [clock seconds] -format "%Y%m%d_%H%M%S"]

# Open output file for writing
set outfile [open "outputs/output_$timestamp.txt" w]

# Temporary storage
set startpoint ""
set endpoint ""

# Dictionary to track unique pairs
set seen_pairs {}

while {[gets $infile line] != -1} {

    # Match Startpoint line (allow leading spaces)
    if {[regexp {^\s*Startpoint:\s+(.*)} $line -> sp]} {
        set startpoint $sp
    }

    # Match Endpoint line (allow leading spaces)
    if {[regexp {^\s*Endpoint:\s+(.*)} $line -> ep]} {
        set endpoint $ep
    }

    # When both are captured, print the pair
    if {$startpoint ne "" && $endpoint ne ""} {

        set pair "$startpoint -> $endpoint"

        # Print only unique pairs
        if {![dict exists $seen_pairs $pair]} {
            dict set seen_pairs $pair 1
            puts $outfile $pair
        }

        # Reset for next timing path
        set startpoint ""
        set endpoint ""
    }
}

# Close files
close $infile
close $outfile

#This command will tell me that the script has closed.
puts "script complete"
