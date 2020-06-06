<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class SMS extends Model
{
    protected $table = 'sms';
    protected $fillable = [
        'user_id', 'phone_number', 'message', 'type'
    ];

    const TYPE_IN = "in";
    const TYPE_OUT = "out";
    const COUNT_PER_PAGE = 10;

    function getMessage($search_val, $type = "") {
        $query = $this->query();

        if ($type == self::TYPE_OUT) {
            $query = $query->select('users.name', 'sms.*');
            $query = $query->join('users', 'users.id', '=', 'sms.user_id');
            
            if(isset($search_val['user_id']) && !empty($search_val['user_id'])) {
                $query = $query->where('user_id', $search_val['user_id']);
            }
        } else {
            $query = $query->select('sms.*');
        }
        if (!empty($type)) {
            $query = $query->where('type', $type);
        }
        if(isset($search_val['phone_number']) && !empty($search_val['phone_number'])) {
            $query = $query->where('phone_number', 'LIKE',  '%'.$search_val['phone_number'].'%');
        }
        if(isset($search_val['message']) && !empty($search_val['message'])) {
            $query = $query->where('message', 'LIKE', '%'.$search_val['message'].'%');
        }

        $pageno = 1;
        if(isset($search_val['pageno']) && !empty($search_val['pageno'])) {
            $pageno = $search_val['pageno'];
        }

        $count_per_page = self::COUNT_PER_PAGE;
        if(isset($search_val['count_per_page']) && !empty($search_val['count_per_page'])) {
            $count_per_page = $search_val['count_per_page'];
        }
        
        $query2 = clone $query;
        $records = $query->orderBy('created_at', 'DESC')->offset(($pageno - 1) * $count_per_page)->take($count_per_page)->get();
        $totalCount = $query2->count();

        return array("records"=>$records, "totalCount"=>$totalCount);
    }
}