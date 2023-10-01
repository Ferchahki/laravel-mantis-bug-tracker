<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class MantisBug extends Model
{
    use HasFactory;

    public function getBugsAndImprovementsByProject()
    {
        return  DB::select('

            SELECT
                mantis_project_table.name AS project_name,
                COUNT(mantis_bug_table.id) AS total_anomalies,
                SUM(CASE WHEN mantis_bug_table.status IN (80, 90) THEN 1 ELSE 0 END) AS resolved_bugs,
                SUM(CASE WHEN mantis_bug_table.status NOT IN (80, 90) AND mantis_category_table.name = "Bug" THEN 1 ELSE 0 END) AS open_bugs,
                SUM(CASE WHEN mantis_bug_table.status NOT IN (80, 90) AND mantis_category_table.name = "Amélioration" THEN 1 ELSE 0 END) AS open_improvements
            FROM
                mantis_project_table
            LEFT JOIN
                mantis_bug_table ON mantis_bug_table.project_id = mantis_project_table.id
            LEFT JOIN
                mantis_category_table ON mantis_category_table.id = mantis_bug_table.category_id
            GROUP BY
                mantis_project_table.name
            ORDER BY
                open_bugs DESC

        ');


    }





}
