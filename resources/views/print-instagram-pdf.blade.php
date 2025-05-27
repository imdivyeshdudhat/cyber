<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NCCRP No:{{ $case->nccrp_no }} - ACK No:{{ $case->acknowledgement_no }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            font-size: 12px;

        }
        .header {
            text-align: center;
            margin-bottom: 10px;
        }
        .header img {
            width: 80px;
            height: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .label {
            font-weight: bold;
        }
        .text-center {
            text-align: center;
        }
        .logo {

            max-height: 100px;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
    </style>

<style>
    body {
        font-family: sans-serif;
        line-height: 1.6;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ccc;
    }
    .header {
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .notice-title {
        font-size: 1.5em;
        font-weight: bold;
        margin-bottom: 10px;
        text-align: center;

    }
    .table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    .table th, .table td {
        border: 1px solid #000;
        padding: 4px;
        text-align: left;
    }
    .note {
        margin-top: 20px;
        font-style: italic;
    }

</head>
<body>


    <table>
        <tr style="border:none">
            <td width="30%" style="text-align: center; vertical-align: middle;border:none">
                <img src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('images/logo.png'))) }}" alt="Logo" class="logo" style="display: block; margin: 0 auto;">
            </td>
            <td style="border:none">
                <h2>CYBER CRIME POLICE STATION NAVSARI</h2>
 <p >
B/h Navsari Town Police Station, Mota Bazar, Navsari – 396445, Gujarat<br>
Ph. +91 6359626594 / Email ID: pi-cyber-nav@gujarat.gov.in
    </p>
            </td>
        </tr>
        </table>
            <div class="container">
                <div class="header">
                    <div style="float: left;">Outward No: {{ $case->outward_no }}/2025</div>
                    <div style="float: right;">Date: {{ date('d/m/Y') }}</div>
                </div>

                <div class="notice-title">Notice U/S 94 of BNSS 2023</div>

                <div>
                    To,<br>
                    Meta Platforms, Inc.<br>
                    1 Meta way, Menlo Park, CA 94025.

                </div>

                <div style="margin-top: 15px; text-align: center;">
                    <strong  class="notice-title">Sub: Request for Information regarding Instagram Profile</strong>
                </div>

                <div style="margin-top: 15px;">
                    Complaint No. <strong>{{ $case->acknowledgement_no }}</strong> has been registered at the Cyber Crime Police Station Navsari.
                    During the inquiry, we found an Instagram profile involved in fraudulent activity.
                </div>

                <table class="table">
                    <thead>
                        <tr>

                            <th>Profile URL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>{!! $case->remarks !!}</td>
                        </tr>
                    </tbody>
                </table>

                <div>
                    You are requested to provide below mentioned details of the above Instagram profile:
                    <ol>
                        <li>Complete profile information (including name, username, bio, profile picture history).</li>
                        <li>Account creation date and associated email address(es) and phone number(s).</li>
                        <li>Login history with IP addresses, dates, and times.</li>
                        <li>Associated Facebook account (if any).</li>
                        <li>List of followers and following.</li>
                        <li>Posts, stories, reels, and archived content.</li>
                        <li>Direct messages and comments.</li>
                        <li>Any linked payment information or transaction history.</li>
                        <li>Any other important information you have regarding this profile.</li>
                    </ol>
                </div>

                <div class="note">
                    <strong>Note-</strong>
                    <ol>
                        <li>Please provide the Nodal Officer's name, email id, and mobile number immediately.</li>
                        <li>Send the details immediately what you have right now. For the remaining details, you can take your time and send them later.</li>
                    </ol>
                </div>
            </div>
<div style="display: flex;">
    <p style="text-align: left;">
    <div style="text-align:left;width: 300px;margin-left: 250px;">
        <img src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('images/seal.png'))) }}" alt="UL Modi" style="width: 80px; height: auto;float: left;">
</div>

<div style="float: right;margin-right: 50px;">

    <img src="data:image/png;base64,{{ base64_encode(file_get_contents(public_path('images/sign.png'))) }}" alt="UL Modi" style="width: 80px; height: auto;"><br>
<strong>(U.L. Modi)<br>
Police Inspector<br>
Cyber Crime Police Station<br>
Navsari</strong>
</p>    </div>

</div>
</body>
</html>