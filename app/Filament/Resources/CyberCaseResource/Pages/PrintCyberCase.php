<?php

namespace App\Filament\Resources\CyberCaseResource\Pages;

use App\Filament\Resources\CyberCaseResource;
use Filament\Resources\Pages\Page;
use Dompdf\Dompdf;
use Dompdf\Options;
use App\Models\CyberCase;

class PrintCyberCase extends Page
{
    protected static string $resource = CyberCaseResource::class;

    protected static string $view = 'filament.resources.cyber-case-resource.pages.print-cyber-case';

    public function generatePdf($record = null)
    {
        $options = new Options();
        $options->set('isHtml5ParserEnabled', true);    

$options->set('isRemoteEnabled', TRUE);
$options->set('tempDir', '/tmp');
$options->set('chroot', __DIR__);
        $options->set('isPhpEnabled', true);
        $dompdf = new Dompdf($options);

        $case = CyberCase::find($record);

        $html = view('filament.resources.cyber-case-resource.pages.print-cyber-case-pdf', [
            'case' => $case, // Fetch all cases or specific data
        ])->render();

        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
    

        $dompdf->render();
        $dompdf->stream("cyber_cases.pdf", ["Attachment" => false]);
    }
}
