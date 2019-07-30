var ds = ds_priority_create();
ds_priority_add(ds, noone, 100000000);

with (obj_entity_par) 
{
    if (team == other.team and id != other.id)
    {
        ds_priority_add(ds, id, point_distance(x, y, other.x, other.y));
    }    
}

var nearest = ds_priority_find_min(ds);
ds_priority_destroy(ds);
return nearest;
