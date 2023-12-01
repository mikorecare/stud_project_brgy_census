<div class="card m-2 p-2">
    <div class="car-body">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Analytics Jobs</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Analytics Population</button>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <canvas id="line-chart" style="width:100%;max-height:500px"></canvas>
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
    const labels = [];
    const data = [];

    let listjob = <?= json_encode($objModel->getJobs()); ?>;

    let listjobData = <?= $objModel->getDataAnalizeJobs(); ?>;

    let otherjobData = <?= $objModel->getDataAnalizeOtherJobs(); ?>;


    let index = '';
    let value = 0;

    for (let i = 0; i < listjob.length; i++) {

        labels.push(listjob[i].job_title);

        if (listjobData[listjob[i].job_id] != undefined) {
            index = listjobData[listjob[i].job_id][0]
            value = listjobData[listjob[i].job_id].length;
        }

        if (listjob[i].job_id == index) {
            data.push(value);
        } else if (listjob[i].job_id == 1) {
            data.push(otherjobData);
        } else {
            data.push(0);
        }
    }

    const ctx = document.getElementById('line-chart').getContext('2d');

    const lineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: 'Total',
                borderColor: 'rgb(75, 192, 192)',
                data: data,
            }],
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                },
            },
        },
    });
</script>

<script>
    let showData = <?= $objModel->getTotalPopulation(); ?>;

    const xValues = [];
    const yValues = [];
    const barColors = [];

    const years = Object.keys(showData);

    function sumArray(arr) {
        let sum = 0;
        arr.forEach(function(item) {
            sum += item;
        });
        return sum;
    }

    for (const year of years) {
        const arrayForYear = showData[year];

        xValues.push(year);

        yValues.push(sumArray(arrayForYear) + 1);
        barColors.push('blue');
    }

    new Chart("myChart", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
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
            }
        }
    });
</script>