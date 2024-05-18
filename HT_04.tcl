#############################################################################
# Generated by PAGE version 7.3
#  in conjunction with Tcl version 8.6
#  Feb 19, 2023 05:43:29 PM IST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x374+660+210
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1924 1061
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Toplevel 0"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    labelframe $top.lab46 \
        -font TkDefaultFont -foreground black -text Labelframe \
        -background $vTcl(actual_gui_bg) -height 415 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 560 
    vTcl:DefineAlias "$top.lab46" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.lab46
    labelframe $site_3_0.lab47 \
        -font TkDefaultFont -foreground black -text Labelframe \
        -background $vTcl(actual_gui_bg) -height 183 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 180 
    vTcl:DefineAlias "$site_3_0.lab47" "Labelframe2" vTcl:WidgetProc "Toplevel1" 1
    set site_4_0 $site_3_0.lab47
    ttk::combobox $site_4_0.tCo48 \
        -font TkTextFont -textvariable combobox -foreground {} -background {} \
        -takefocus {} 
    vTcl:DefineAlias "$site_4_0.tCo48" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but46 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Connect 
    vTcl:DefineAlias "$site_4_0.but46" "Button1" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but48 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Refresh 
    vTcl:DefineAlias "$site_4_0.but48" "Button4" vTcl:WidgetProc "Toplevel1" 1
    place $site_4_0.tCo48 \
        -in $site_4_0 -x 0 -relx 0.111 -y 0 -rely 0.261 -width 0 \
        -relwidth 0.794 -height 0 -relheight 0.183 -anchor nw \
        -bordermode ignore 
    place $site_4_0.but46 \
        -in $site_4_0 -x 0 -relx 0.167 -y 0 -rely 0.705 -width 117 \
        -relwidth 0 -height 34 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but48 \
        -in $site_4_0 -x 0 -relx 0.333 -y 0 -rely 0.513 -width 57 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    labelframe $site_3_0.lab48 \
        -font TkDefaultFont -foreground black -text Labelframe \
        -background $vTcl(actual_gui_bg) -height 181 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 330 
    vTcl:DefineAlias "$site_3_0.lab48" "Labelframe3" vTcl:WidgetProc "Toplevel1" 1
    set site_4_0 $site_3_0.lab48
    entry $site_4_0.ent49 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 114 
    vTcl:DefineAlias "$site_4_0.ent49" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but50 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Enter 
    vTcl:DefineAlias "$site_4_0.but50" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Run 
    vTcl:DefineAlias "$site_4_0.but51" "Button3" vTcl:WidgetProc "Toplevel1" 1
    text $site_4_0.tex49 \
        -background white -font TkTextFont -foreground black \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 304 -wrap word 
    $site_4_0.tex49 configure -font "TkTextFont"
    $site_4_0.tex49 insert end text
    vTcl:DefineAlias "$site_4_0.tex49" "Text1" vTcl:WidgetProc "Toplevel1" 1
    place $site_4_0.ent49 \
        -in $site_4_0 -x 0 -relx 0.061 -y 0 -rely 0.261 -width 114 \
        -relwidth 0 -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but50 \
        -in $site_4_0 -x 0 -relx 0.121 -y 0 -rely 0.485 -width 77 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but51 \
        -in $site_4_0 -x 0 -relx 0.545 -y 0 -rely 0.258 -width 107 \
        -relwidth 0 -height 74 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.tex49 \
        -in $site_4_0 -x 0 -relx 0.03 -y 0 -rely 0.774 -width 0 \
        -relwidth 0.921 -height 0 -relheight 0.155 -anchor nw \
        -bordermode ignore 
    labelframe $site_3_0.lab46 \
        -font TkDefaultFont -foreground black -text Labelframe \
        -background $vTcl(actual_gui_bg) -height 105 -width 180 
    vTcl:DefineAlias "$site_3_0.lab46" "Labelframe4" vTcl:WidgetProc "Toplevel1" 1
    set site_4_0 $site_3_0.lab46
    entry $site_4_0.ent47 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -insertbackground black -width 74 
    vTcl:DefineAlias "$site_4_0.ent47" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    button $site_4_0.but48 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Max Pin} 
    vTcl:DefineAlias "$site_4_0.but48" "Button5" vTcl:WidgetProc "Toplevel1" 1
    place $site_4_0.ent47 \
        -in $site_4_0 -x 0 -relx 0.056 -y 0 -rely 0.381 -width 74 -relwidth 0 \
        -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but48 \
        -in $site_4_0 -x 0 -relx 0.556 -y 0 -rely 0.381 -width 47 -relwidth 0 \
        -height 24 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 0 -relx 0.036 -y 0 -rely 0.104 -width 0 \
        -relwidth 0.321 -height 0 -relheight 0.53 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 0 -relx 0.375 -y 0 -rely 0.122 -width 0 \
        -relwidth 0.589 -height 0 -relheight 0.525 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab46 \
        -in $site_3_0 -x 0 -relx 0.036 -y 0 -rely 0.667 -width 0 \
        -relwidth 0.321 -height 0 -relheight 0.304 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab46 \
        -in $top -x 0 -relx 0.033 -y 0 -rely 0.044 -width 0 -relwidth 0.933 \
        -height 0 -relheight 0.922 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}

