{
    //just for clarification, the radar is going to be 100x100 pixels
        
    _xx = argument0; //this is the x position in the room or view we will draw at
    _yy = argument1; //this is the y position in the room or view we will draw at
    
    _ww = room_width/100; //this calculates the scaled width of the room
    _hh = room_height/100; //this calculates the scaled height of the room
    
    //divide by 0 checking!
    if (_ww==0) _ww = 1;
    if (_hh==0) _hh = 1;
    
    draw_set_color(c_black); //set the drawing color to black
    
    draw_rectangle(_xx,_yy,_xx+100,_yy+100,0); //draws the radar
    
    //the following code draws the balls at the correct positions in the radar
    //notice the x and y positions we draw at, its easy to undestand
    //we are drawing it at the origin of the radar (top-left corner)...
    //... PLUS its position in the room scaled down for the radar
    
    with (obj_daedalus) draw_sprite(blue_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (friendly_par) draw_sprite(green_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (obj_hatak) draw_sprite(red_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (obj_missile) draw_sprite(missile_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (obj_rail_gun_round) draw_sprite(missile_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (obj_hatak_bolt) draw_sprite(hatak_bolt_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));
    with (obj_ori_sattelite_beam) draw_sprite(ori_beam_radar_spr,-1,other._xx+(x/other._ww),other._yy+(y/other._hh));

    
    //we use other. because we are using a with statement
    
    //you can easy add more objects to the list
    

}
