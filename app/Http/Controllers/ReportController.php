<?php

namespace App\Http\Controllers;

use App\Models\DailyReport;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function view(Request $request)
    {
        $userId = $request->user;
        $from = $request->from;
        $to = $request->to;
        $endDate = $request->endDate;
        $reports = $request->reports;

        $user = User::find($userId);
        $startDate = $from ? Carbon::parse($from) : Carbon::now()->startOfMonth();
        $endDate = $to ? Carbon::parse($to) : Carbon::now()->endOfMonth();
        $month = $startDate;

        $reports = DailyReport::query()
            ->when($userId, fn ($query) => $query->where('user_id', $userId))
            ->when($from, fn ($query) => $query->whereDate('date', '>=', $from))
            ->when($to, fn ($query) => $query->whereDate('date', '<=', $to))
            ->orderBy('date')
            ->get();



        return view('reports.view', compact('user', 'month', 'startDate', 'endDate', 'reports'));
    }
}
