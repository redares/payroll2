getHistory();
function calculateEngineerSalary() {
    let baseSalary = $("#EngineerBaseSalary").val();
    let bonus = $("#EngineerBonus").val();
    let salary = $("#EngineerSalary");

    let data = {
        baseSalary: baseSalary,
        bonus: bonus
    };

    $.ajax({
        type: "POST",
        url: "calculateEngineerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function(response) {
            salary.text(response);
            getHistory();
        },
        error: function(e) {
            alert("Error! Please try again");
        }
    });
}


function calculateWorkerSalary() {
    let rate = $("#WorkerRate").val();
    let hours = $("#WorkerHours").val();
    let oHours = $("#WorkerOvertimeHours").val();
    let salary = $("#WorkerSalary");

    let data = {
        rate: rate,
        hours: hours,
        oHours: oHours
    };

    $.ajax({
        type: "POST",
        url: "calculateWorkerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function (response) {
            salary.text(response);
            getHistory();
        },
        error: function (e) {
            alert("Error! Please try again");
        }
    });
}


function calculateSalesManagerSalary() {
    let baseSalary = $("#SalesManagerBaseSalary").val();
    let bonus = $("#SalesManagerBonus").val();
    let tCount = $("#SalesManagerTransactionsCount").val();
    let salary = $("#SalesManagerSalary");

    let data = {
        baseSalary: baseSalary,
        bonus: bonus,
        tCount: tCount
    };

    $.ajax({
        type: "POST",
        url: "calculateSalesManagerSalary",
        contentType: "application/json", // NOT dataType!
        data: JSON.stringify(data),
        success: function (response) {
            salary.text(response);
            getHistory();
        },
        error: function (e) {
            alert("Error! Please try again");
        }
    });
}
