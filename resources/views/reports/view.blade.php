<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Report - {{ $user->name }} - {{ $month->format('F Y') }}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @media print {
            .no-print {
                display: none !important;
            }
        }
    </style>

</head>

<body class="bg-white-100">
    <div class="container mx-auto">
        <div class="bg-white rounded-lg p-2">
            <div class="flex justify-between items-center mb-2">
                <h1 class="text-2xl font-bold text-gray-800">
                    Report for {{ $user->name }}
                </h1>

                <div class="text-gray-600">
                    {{ $month->format('F Y') }}
                </div>
            </div>

            <div class="border-t border-gray-200">


                <!-- Add your report content here -->
                <div class="mt-6">
                    <h2 class="text-lg font-semibold text-gray-700 mb-4">Report Details</h2>
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200 border border-gray-300">
                            <thead class="bg-gray-50 border-b border-gray-300">
                                <tr>
                                    <th
                                        class="px-3 py-2 text-left text-xs font-medium text-black text-bold uppercase tracking-wider">
                                        Date</th>
                                    <th
                                        class="px-3 py-2 text-left text-xs font-medium text-black text-bold uppercase tracking-wider">
                                        From</th>
                                    <th
                                        class="px-3 py-2 text-left text-xs font-medium text-black text-bold uppercase tracking-wider">
                                        To</th>
                                    <th
                                        class="px-3 py-2 text-left text-xs font-medium text-black text-bold uppercase tracking-wider">
                                        Work Done</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @foreach ($reports as $report)
                                    <tr class="border-b border-gray-300">

                                        <td class="px-3 py-2 whitespace-nowrap text-sm text-gray-900">
                                            {{ date('d M,Y', strtotime($report->date)) }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap text-sm text-gray-900">
                                            {{ \Carbon\Carbon::parse($report->from_time)->format('h:i A') }}</td>
                                        <td class="px-3 py-2 whitespace-nowrap text-sm text-gray-900">
                                            {{ \Carbon\Carbon::parse($report->to_time)->format('h:i A') }}</td>
                                        <td class="px-3 py-2 text-sm text-gray-900">{{ $report->work_done }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="mt-6 flex justify-end">
                <button onclick="window.print()"
                    class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600 no-print">
                    Print Report
                </button>
            </div>
        </div>
    </div>
</body>

</html>
