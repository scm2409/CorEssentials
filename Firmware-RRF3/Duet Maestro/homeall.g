; homeall.g
; called to home all axes
;

G91               	; relative positioning
G1 H2 Z5 F12000   	; lift Z relative to current position
G1 H1 X-245 F6000 	; move quickly to X axis endstop and stop there (first pass)
G90
G1 X5 F6000   		; go back a few mm
G91
G1 H1 X-245 F360  ; move slowly to X axis endstop once more (second pass)
G90
G1 X181.5 F12000

G91
G1 H1 Y-265 F6000; move quickly to Y axis endstop and stop there (first pass)
G90
G1 Y5 F6000   ; go back a few mm
G91
G1 H1 Y-265 F360  ; move slowly to Y axis endstop once more (second pass)
G90               ; absolute positioning

G92 Z0
G1 Z5 F12000

G1 X181.5 Y256 F12000
G91               ; relative positioning
G1 H2 Z5 F3000   ; lift Z relative to current position
G1 H1 Z-285 F3000 ; move Z down until the endstop is triggered
G1 H2 Z5 F3000    ; go back a few mm
G1 H1 Z-285 F360  ; move slowly to Y axis endstop once more (second pass)
G90
G92 Z1.0
G1 Z5 F3000
G1 Y240 F12000