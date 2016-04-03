<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    protected $hidden = ['updated_at'];
    protected $guarded = [];
}
