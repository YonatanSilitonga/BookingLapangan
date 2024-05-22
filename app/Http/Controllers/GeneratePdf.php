<?php

namespace App\Http\Controllers;

use App\Models\BookingOlahraga;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class GeneratePdf extends Controller
{
    public function generatePDF()
    {
        $bookings = BookingOlahraga::all();
        $data = ['bookings' => $bookings];
        $pdf = PDF::loadView('pdf.booking_list', $data);
        return $pdf->download('booking_list.pdf');
    }
}
