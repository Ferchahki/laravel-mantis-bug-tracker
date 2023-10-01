<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bug and Improvement Monitoring</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cerulean/bootstrap.min.css" integrity="sha384-3fdgwJw17Bi87e1QQ4fsLn4rUFqWw//KU0g8TvV6quvahISRewev6/EocKNuJmEw" crossorigin="anonymous">
    <style>
        /* Add your CSS styles here if needed */
    </style>
</head>
<body>
    <h1 class="text-center">Bug and Improvement Monitoring</h1>
    <table class="table table-hover">
        <thead>
            <tr>
                <th scope="col">Project</th>
                <th scope="col">Total Anomalies</th>
                <th scope="col">Bugs (Open)</th>
                <th scope="col">Bugs (Resolved)</th>
                <th scope="col"> Improvements (Open)</th>
                <th scope="col">Improvements (Resolved)</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($bugsAndImprovements as $data)
                <tr lass="table-active">
                    <td>{{ $data->project_name }}</td>
                    <td>{{ $data->total_anomalies }}</td>
                    <td  style="background-color:#e74c3c;">{{ $data->open_bugs }}</td>
                    <td  style="background-color:#2ecc71;">{{ $data->resolved_bugs }}</td>
                    <td  style="background-color:#f1c40f;">{{ $data->open_improvements }}</td>
                    <td  style="background-color:#27ae60;">{{ $data->open_improvements }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
