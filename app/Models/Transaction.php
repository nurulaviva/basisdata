<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    protected $guarded = ['id'];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function details() 
    { 
        return $this->hasMany(TransactionDetail::class);
    }

    public function menu()
    {
        return $this->belongsTo(Menu::class);
    }
}
