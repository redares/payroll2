<%--
  Created by IntelliJ IDEA.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home | DateBook Online</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <script src="js/salaryCaltulators.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">
            <h4 class="mb-4 mt-2">
                Рассчитать зарплату для инженера:
            </h4>
            <div class="row form-group data_add_block text-left">
                <div class="col-4">
                    <label for="EngineerBaseSalary">Оклад:</label>
                    <input type="number" placeholder="50000" class="form-control" id="EngineerBaseSalary">
                </div>
                <div class="col-4">
                    <label for="EngineerBonus">Премия</label>
                    <input type="number" placeholder="10000" class="form-control" id="EngineerBonus">
                </div>
                <button onclick ="calculateEngineerSalary()" class="button_style">Рассчитать</button>

                <div class="align-self-center col calculatedSalary">
                    Итоговая зарплата: <span id="EngineerSalary" class="salaryNumber">не вычислено</span>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h4 class="mb-4 mt-2">
                Рассчитать зарплату для рабочего:
            </h4>
            <div class="row form-group data_add_block text-left">
                <div class="col">
                    <label for="WorkerRate">Ставка:</label>
                    <input type="number" placeholder="150" class="form-control" id="WorkerRate">
                </div>
                <div class="col">
                    <label for="WorkerHours">Часы:</label>
                    <input type="number" placeholder="900" class="form-control" id="WorkerHours">
                </div>
                <div class="col">
                    <label for="WorkerOvertimeHours">Сверхурочные часы:</label>
                    <input type="number" placeholder="100" class="form-control" id="WorkerOvertimeHours">
                </div>

                <button onclick ="calculateWorkerSalary()" class="button_style">Рассчитать</button>

                <div class="align-self-center col calculatedSalary" >
                    Итоговая зарплата: <span id="WorkerSalary" class="salaryNumber">не вычислено</span>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h4 class="mb-4 mt-2">
                Рассчитать зарплату для менеджера по продажам:
            </h4>
            <div class="row form-group data_add_block text-left">
                <div class="col">
                    <label for="SalesManagerBaseSalary">Оклад:</label>
                    <input type="number" placeholder="10000" class="form-control" id="SalesManagerBaseSalary">
                </div>
                <div class="col">
                    <label for="SalesManagerBonus">Награда за сделку:</label>
                    <input type="number" placeholder="1500" class="form-control" id="SalesManagerBonus">
                </div>
                <div class="col">
                    <label for="SalesManagerTransactionsCount">Кол-во сделок::</label>
                    <input type="number" placeholder="10" class="form-control" id="SalesManagerTransactionsCount">
                </div>
                <button onclick ="calculateSalesManagerSalary()" class="button_style">Рассчитать</button>

                <div class="align-self-center col calculatedSalary" >
                    Итоговая зарплата: <span id="SalesManagerSalary" class="salaryNumber">не вычислено</span>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col">
            <div class="history">
                тут будет история
            </div>
        </div>
    </div>

</div>
</body>
</html>
