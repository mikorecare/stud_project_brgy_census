<div class="card">
    <h3 class="mt-4 text-center">List Jobs</h3>
    <hr>
    <div class="card-body">
        <!-- <pre>
        </pre> -->
        <style>
            .conatiner-jobs {
                display: flex;
                gap: 7px;
                margin-bottom: 7px;
                justify-content: center;
                align-items: center;
                width: 61%;
                margin: auto;
            }

            .box-container {
                position: relative;
                width: 50%;
                flex: 1 0 0;
            }

            .image {
                opacity: 1;
                display: block;
                width: 100%;
                height: auto;
                transition: .5s ease;
                backface-visibility: hidden;
            }

            .middle {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                text-align: center;
            }

            .box-container:hover .image {
                opacity: 0.3;
            }

            .box-container:hover .middle {
                opacity: 1;
            }

            .text a {
                color: black !important;
                font-size: 23px;
                padding: 11px 32px;
                border-radius: 6px;
                font-family: 'FontAwesome';
                font-weight: 500;
            }

            @media(max-width: 768px) {
                .conatiner-jobs {
                    flex-direction: column;
                }
            }
        </style>

        <div class="conatiner-jobs">
            <div class="box-container">
                <div class="card">
                    <img width="200px" src="./css/box1.jpg" class="image" alt="...">
                    <div class="middle">
                        <div class="text"><a href="https://www.facebook.com/PESOTaguigCity?mibextid=LQQJ4d" target="_blank">View</a></div>
                    </div>
                </div>
            </div>
            <div class="box-container">
                <div class="card">
                    <img width="200px" src="./css/box2.jpg" class="image" alt="...">
                    <div class="middle">
                        <div class="text"><a href="https://www.facebook.com/TCUOfficial2022?mibextid=LQQJ4d" target="_blank">View</a></div>
                    </div>
                </div>
            </div>

            <div class="box-container">
                <div class="card">
                    <img width="200px" src="./css/box3.jpg" class="image" alt="...">
                    <div class="middle">
                        <div class="text"><a href="https://www.facebook.com/taguigcity?mibextid=LQQJ4d" target="_blank">View</a></div>
                    </div>
                </div>
            </div>
        </div>

        <hr>

        <center>
            <a href="admin.php" class="btn btn-primary"><i class="fa-solid fa-angle-left"></i><span class="ml-2">&nbsp;Previus</span></a>&nbsp;&nbsp;
            <a href="admin.php?step=step-3" class="btn btn-primary"><span class="mr-2">Next&nbsp;</span><i class="fa-solid fa-angle-right"></i></a>
        </center>
    </div>
</div>