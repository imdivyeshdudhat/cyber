<?php

namespace App\Imports;

use App\Models\BankTransaction;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithMultipleSheets;

class ContentsImport implements WithMultipleSheets
{
    public function sheets(): array
    {
        return [
            // 'Withdrawal through ATM'     => new FirstSheetImport(),
            'Money Transfer to' => new SecondSheetImport,
            // 'Other'                      => new ThirdSheetImport(),
            // 'Transaction put on hold'    => new FourthSheetImport(),
        ];
    }
}

class FirstSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {

        foreach ($rows->skip(1) as $row) {

            BankTransaction::create([
                'transaction_type' => 'ATM Withdrawal',
                'acknowledgement_no' => $row[1],
                'account_id' => $row[2],
                'transaction_id' => $row[3],
                'withdrawal_date' => $row[4],
                'withdrawal_amount' => str_replace(',', '', $row[5]),
                'disputed_amount' => str_replace(',', '', $row[6]),
                'atm_id' => $row[7],
                'atm_location' => $row[8],
                'reference_no' => $row[9],
                'remarks' => $row[10],
                'action_taken_by_bank' => $row[11],
                'date_of_action' => $row[12],
            ]);
        }
    }
}

class SecondSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {

        foreach ($rows->skip(1) as $row) {
            BankTransaction::create([
                'transaction_type' => 'Money Transfer',
                'acknowledgement_no' => $row[1],
                'transaction_id' => $row[3],             // "S No."
                'bank_name' => $row[4],             // "Bank/FIs"
                'layer' => $row[5],             // "Layer"
                'account_id' => $row[2],             // "Account No./ (Wallet /PG/PA) Id"
                'ifsc_code' => $row[7],             // "Ifsc Code"
                'transaction_date' => $row[8],             // "Transaction Date"
                'transaction_id_2' => $row[9],             // "Transaction Id / UTR Number"
                'transaction_amount' => str_replace(',', '', $row[10]), // "Transaction Amount"
                'disputed_amount' => str_replace(',', '', $row[11]), // "Disputed Amount"
                'reference_no' => $row[12],            // "Reference No"
                'remarks' => $row[13],            // "Remarks"
                'action_taken_by_bank' => $row[14],            // "Action Taken By bank"
                'date_of_action' => $row[15],            // "Date of Action"
            ]);
        }
    }
}

class ThirdSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        foreach ($rows->skip(1) as $row) {
            BankTransaction::create([
                'transaction_type' => 'Other',
                'acknowledgement_no' => $row[1],
                'account_id' => $row[2],
                'transaction_id' => $row[3],
                'transaction_date' => $row[4],
                'transaction_amount' => str_replace(',', '', $row[5]),
                'reference_no' => $row[6],
                'remarks' => $row[7],
                'action_taken_by_bank' => $row[8],
                'date_of_action' => $row[9],
            ]);
        }
    }
}

class FourthSheetImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        foreach ($rows->skip(1) as $row) {
            BankTransaction::create([
                'transaction_type' => 'Put on Hold',
                'acknowledgement_no' => $row[1],
                'account_id' => $row[2],
                'transaction_id' => $row[3],
                'put_on_hold_date' => $row[4],
                'put_on_hold_amount' => str_replace(',', '', $row[5]),
                'action_taken_by_bank' => $row[6],
                'date_of_action' => $row[7],
            ]);
        }
    }
}
