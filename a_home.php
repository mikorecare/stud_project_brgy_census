
<style>
    #chart-wrapper {
    display: inline-block;
    position: relative;
    width: 90%;

  }
  .title-container{
        display: flex;
        flex-direction: row;
        align-items: center; 
        justify-content: center; 
        margin: 0 auto;
        gap:20px;
    }
    .title-container select {
        width:max-content;
        margin: 0;
}
</style>
<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $selected_val = $_POST['selectYear'];

        echo "<script>window.location.replace('$_SERVER[PHP_SELF]?selected_val=" . urlencode($selected_val) . "');</script>";
        exit();
    }
    
    // Retrieve the selected value if it was set
    $selected_val = isset($_GET['selected_val']) ? urldecode($_GET['selected_val']) : '';
?>

<div class="card m-2 p-2">
    <div class="car-body">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true" onclick="showOptions()">Analytics Jobs</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false" onclick="hideOptions()">Analytics Population</button>
            </li>
        </ul>
        <form method="post" action="">
            <div class="title-container">
                <select class="form-select" name="selectYear" id="selectYear">
                    <?php
                    $currentYear = date('Y');
                    for ($year = $currentYear; $year >= 2000; $year--) {
                        $selectedAttribute = ($selected_val == $year) ? 'selected' : '';
                        echo "<option value=\"$year\" $selectedAttribute>$year</option>";
                    }
                    ?>
                </select>
                <input class="btn btn-primary" type="submit" name="searchYear" value="Search" />
            </div>
        </form>

        <div class="tab-content" id="chart-wrapper">
            
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <canvas style="width: 80%; height:  300px;" id="line-chart" ></canvas>
                <canvas style="width: 80%; height: 300px;" id="bar-chart" ></canvas>
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <canvas id="myChart" style="width:100%;max-height:500px"></canvas>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<script>
     $(document).ready(function () {
        createChart();
     });

     function hideOptions(){
        $('.title-container').hide();
     }

     function showOptions(){
        $('.title-container').show();
     }

     function createChart(){
    const labels = [];
    const data = [];

    let listjob = <?= json_encode($objModel->getJobs()); ?>;
    let listjobData = <?=  $objModel->getDataAnalizeJobs(empty($selected_val) ? date('Y') : $selected_val); ?>;
    let listEmployment = <?= $objModel->getEmploymentRate(empty($selected_val) ? date('Y') : $selected_val); ?>;
    let otherjobData = <?= $objModel->getDataAnalizeOtherJobs(); ?>;
    let index = '';
    let value = 0;
    console.log(listjobData);
    for (let i = 0; i < listjob.length; i++) {

    labels.push(listjob[i].job_title);

    if (listjobData[listjob[i].job_id] != undefined) {
        index = listjobData[listjob[i].job_id][0]
        value = listjobData[listjob[i].job_id].length;
        
    }
    // console.log("values",value);
    if (listjob[i].job_id == index) {
        data.push(value);
    } else if (listjob[i].job_id == 1) {
        data.push(otherjobData);
    } else {
        data.push(0);
    }
    }

    // console.log("LABELS[x-axis]: ",labels);
    // console.log("DATA[y-axis]: ",data);

    const ctx = document.getElementById('line-chart').getContext('2d');
    const barc = document.getElementById('bar-chart').getContext('2d');
    const lineChartCtx = document.getElementById('line-chart').getContext('2d');
        const lineChart = new Chart(lineChartCtx, {
            type: 'bar',
            data: {
            labels: labels,
            datasets: [{
                label: 'Total',
                borderColor: 'rgb(75, 192, 192)',
                data: data,
                backgroundColor: [
                    'rgb(75, 192, 192)',
                    'rgb(255, 99, 132)',
                    'rgb(255, 205, 86)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 159, 64)',
                    'rgb(153, 102, 255)',
                    'rgb(255, 100, 200)',
                    'rgb(100, 200, 255)',
                    'rgb(255, 50, 50)',
                    'rgb(200, 200, 50)',
                    'rgb(50, 255, 50)',
                    'rgb(200, 100, 255)',
                    'rgb(255, 200, 100)',
                    'rgb(100, 255, 200)',
                    'rgb(200, 50, 50)',
                    'rgb(50, 200, 50)',
                    'rgb(50, 50, 200)',
                    'rgb(150, 200, 255)',
                    'rgb(255, 150, 200)',
                    'rgb(150, 255, 200)',
                    'rgb(200, 150, 255)',
                    'rgb(255, 200, 150)',
                    'rgb(200, 255, 150)',
                    'rgb(150, 150, 200)',
                    'rgb(200, 150, 150)',
                    'rgb(150, 200, 150)',
                    'rgb(150, 150, 150)',
                    'rgb(0, 0, 0)',
                    'rgb(255, 255, 255)',
                    ],
            }],
            },
            options: {
            scales: {
                y: {
                display: true,
                ticks: {
                    stepSize: 1,
                    beginAtZero: true
                }
                }
            }
            },
            responsive: true,
            maintainAspectRatio: false,
        });
    const barChart = new Chart(barc, {
        type: 'bar',
        data: {
            labels: ["EMPLOYED","UNEMPLOYED"],
            datasets: [{
                label: 'Total',
                borderColor: 'rgb(75, 192, 192)',
                data: [!listEmployment["EMPLOYED"]? 0 : listEmployment["EMPLOYED"].length ,!listEmployment["UNEMPLOYED"] ? 0 : listEmployment["UNEMPLOYED"].length ]
            }],
        },
        options: {
            scales: {
                y: {
                display: true,
                ticks: {
                    stepSize: 1,
                    beginAtZero: true
                }
                }
            }
        },
        responsive: true,
        maintainAspectRatio: false,
    });
}

</script>

<script>
    let showData = <?= json_encode($objModel->getTotalPopulation()); ?>;
    console.log(showData);
    const xValues = [];
    const yValues = [];
    const barColors = [];
    const years = Object.keys(showData);



    for (const year of years) {
        console.log(year);
        xValues.push(year);
        yValues.push(showData[year]);
        barColors.push('blue');
    }
    console.log(xValues);
    console.log(yValues);
    new Chart("myChart", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: 'blue',
                data: yValues
            }]
        },
        options: {
            legend: {
                display: false
            },
            title: {
                display: true,
                text: "Total Population"
            },
            scales: {
                y: {
                display: true,
                ticks: {
                    stepSize: 1,
                    beginAtZero: true
                }
                }
            }
        }
    });
</script>


