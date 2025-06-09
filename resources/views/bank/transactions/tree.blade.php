<!DOCTYPE html>
<html>

<head>
    <title>Bank Transaction Tree</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }

        th,
        td {
            border: 1px solid #333;
            padding: 6px 10px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        tr:nth-child(even) {
            background-color: #fafafa;
        }
    </style>
</head>

<body>
    <h2>Bank Transaction Chain Tree</h2>

    <div class="container">
        <h3 class="mb-4">Transaction Tree</h3>
        @php
            $maxDepth = collect($chains)->map(fn($chain) => count($chain))->max();
        @endphp
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    @for ($i = 1; $i <= $maxDepth; $i++)
                        <th>Layer {{ $i }}<br>From A/C</th>
                        <th>To A/C</th>
                        <th>Amount</th>
                        <th>Bank Name</th>
                        <th>IFSC</th>
                        <th>Remarks</th>
                    @endfor
                </tr>
            </thead>
            <tbody>
                @foreach ($chains as $chain)
                    <tr>
                        @foreach ($chain as $node)
                            <td>{{ $node['from'] }}</td>
                            <td>{{ $node['to'] }}</td>
                            <td>{{ number_format($node['amount'], 2) }}</td>
                            <td>{{ $node['bank_name'] }}</td>
                            <td>{{ $node['ifsc'] }}</td>
                            <td>{{ $node['remarks'] }}</td>
                        @endforeach

                        @for ($i = count($chain); $i < $maxDepth; $i++)
                            <td colspan="6"></td>
                        @endfor
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

</body>

</html>
